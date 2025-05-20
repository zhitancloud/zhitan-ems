package com.zhitan.framework.web.service;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.zhitan.common.constant.CacheConstants;
import com.zhitan.common.constant.Constants;
import com.zhitan.common.constant.UserConstants;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.domain.entity.SysUser;
import com.zhitan.common.core.domain.model.LoginUser;
import com.zhitan.common.core.redis.RedisCache;
import com.zhitan.common.exception.ServiceException;
import com.zhitan.common.exception.user.*;
import com.zhitan.common.utils.CodeUtils;
import com.zhitan.common.utils.DateUtils;
import com.zhitan.common.utils.MessageUtils;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.common.utils.ip.IpUtils;
import com.zhitan.framework.manager.AsyncManager;
import com.zhitan.framework.manager.factory.AsyncFactory;
import com.zhitan.framework.security.context.AuthenticationContextHolder;
import com.zhitan.framework.security.single.SingleAuthenticationToken;
import com.zhitan.framework.security.single.SmsCodeAuthenticationToken;
import com.zhitan.framework.sms.SendCodeService;
import com.zhitan.system.service.ISysConfigService;
import com.zhitan.system.service.ISysUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * 登录校验方法
 *
 * @author zhitan
 */
@Slf4j
@Component
public class SysLoginService {

    @Resource
    private TokenService tokenService;

    @Resource
    private AuthenticationManager authenticationManager;

    @Resource
    private RedisCache redisCache;

    @Resource
    private ISysUserService userService;

    @Resource
    private ISysConfigService configService;

    @Resource
    private SendCodeService smsService;

    @Value("${aliyun.sms.time-minutes}")
    private Integer SMS_CODE_EXPIRE_MINUTES;
    @Value("${aliyun.sms.max-sms-count}")
    private Integer MAX_SMS_DAILY_LIMIT;

    @Value("${oss.ticket}")
    private String ossTicket;
    @Value("${oss.username}")
    private String ossUserName;


    /**
     * 登录验证
     *
     * @param username 用户名
     * @param password 密码
     * @param code     验证码
     * @param uuid     唯一标识
     * @return 结果
     */
    public String login(String username, String password, String code, String uuid) {
        // 验证码校验
        validateCaptcha(username, code, uuid);
        // 登录前置校验
        loginPreCheck(username, password);
        // 用户验证
        Authentication authentication = null;
        try {
            UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(username, password);
            AuthenticationContextHolder.setContext(authenticationToken);
            // 该方法会去调用UserDetailsServiceImpl.loadUserByUsername
            authentication = authenticationManager.authenticate(authenticationToken);
        } catch (Exception e) {
            if (e instanceof BadCredentialsException) {
                AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message("user.password.not.match")));
                throw new UserPasswordNotMatchException();
            } else {
                AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, e.getMessage()));
                throw new ServiceException(e.getMessage());
            }
        } finally {
            AuthenticationContextHolder.clearContext();
        }
        AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_SUCCESS, MessageUtils.message("user.login.success")));
        LoginUser loginUser = (LoginUser) authentication.getPrincipal();
        recordLoginInfo(loginUser.getUserId());
        // 生成token
        return tokenService.createToken(loginUser);
    }

    /**
     * 校验验证码
     *
     * @param username 用户名
     * @param code     验证码
     * @param uuid     唯一标识
     * @return 结果
     */
    public void validateCaptcha(String username, String code, String uuid) {
        boolean captchaEnabled = configService.selectCaptchaEnabled();
        if (captchaEnabled) {
            String verifyKey = CacheConstants.CAPTCHA_CODE_KEY + StringUtils.nvl(uuid, "");
            String captcha = redisCache.getCacheObject(verifyKey);
            redisCache.deleteObject(verifyKey);
            if (captcha == null) {
                AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message("user.jcaptcha.expire")));
                throw new CaptchaExpireException();
            }
            if (!code.equalsIgnoreCase(captcha)) {
                AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message("user.jcaptcha.error")));
                throw new CaptchaException();
            }
        }
    }

    /**
     * 登录前置校验
     *
     * @param username 用户名
     * @param password 用户密码
     */
    public void loginPreCheck(String username, String password) {
        // 用户名或密码为空 错误
        if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
            AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message("not.null")));
            throw new UserNotExistsException();
        }
        // 密码如果不在指定范围内 错误
        if (password.length() < UserConstants.PASSWORD_MIN_LENGTH
                || password.length() > UserConstants.PASSWORD_MAX_LENGTH) {
            AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message("user.password.not.match")));
            throw new UserPasswordNotMatchException();
        }
        // 用户名不在指定范围内 错误
        if (username.length() < UserConstants.USERNAME_MIN_LENGTH
                || username.length() > UserConstants.USERNAME_MAX_LENGTH) {
            AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message("user.password.not.match")));
            throw new UserPasswordNotMatchException();
        }
        // IP黑名单校验
        String blackStr = configService.selectConfigByKey("sys.login.blackIPList");
        if (IpUtils.isMatchedIp(blackStr, IpUtils.getIpAddr())) {
            AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message("login.blocked")));
            throw new BlackListException();
        }
    }

    /**
     * 记录登录信息
     *
     * @param userId 用户ID
     */
    public void recordLoginInfo(Long userId) {
        SysUser sysUser = new SysUser();
        sysUser.setUserId(userId);
        sysUser.setLoginIp(IpUtils.getIpAddr());
        sysUser.setLoginDate(DateUtils.getNowDate());
        userService.updateUserProfile(sysUser);
    }


    /**
     * 登录验证
     *
     * @param username 手机号
     * @return 结果
     */
    public String loginNoCode(String username) {
        // 用户验证
        Authentication authentication = null;
        try {
            authentication = authenticationManager
                    .authenticate(new SingleAuthenticationToken(username));
        } catch (Exception e) {
            if (e instanceof BadCredentialsException) {
                AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message("user.password.not.match")));
                throw new UserPasswordNotMatchException();
            } else {
                AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, e.getMessage()));
                throw new ServiceException(e.getMessage());
            }
        }
        AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_SUCCESS, MessageUtils.message("user.login.success")));
        LoginUser loginUser = (LoginUser) authentication.getPrincipal();
        recordLoginInfo(loginUser.getUserId());
        // 生成token
        return tokenService.createToken(loginUser);
    }

    /**
     * 发送短信验证码
     *
     * @param phoneNumber 手机号
     * @return 结果
     */
    public void sendSms(String phoneNumber) {
        String smsFrequencyKey = String.format(CacheConstants.SMS_FREQUENCY_KEY, phoneNumber);
        Long currentCount = redisCache.increment(smsFrequencyKey);
        // 首次请求时设置过期时间（24小时重置计数）
        if (currentCount == 1) {
            redisCache.expire(smsFrequencyKey, SMS_CODE_EXPIRE_MINUTES, TimeUnit.MINUTES);
        }
        // 超过最大限制次数
        if (currentCount > MAX_SMS_DAILY_LIMIT) {
            log.warn("今日短信发送次数超限：手机号 [" + phoneNumber + "] 今日已发送 " + currentCount + " 次（最大允许 " + MAX_SMS_DAILY_LIMIT + " 次）");
            throw new ServiceException("今日短信发送次数超限：请联系管理员");
        }

        // 2. 生成并存储验证码
        String verificationCode = CodeUtils.generateNumericCode(6); // 6位数字验证码
        String smsCodeKey = String.format(CacheConstants.SMS_VERIFICATION_CODE_KEY, phoneNumber);

        // 存储验证码（5分钟有效期）
        redisCache.setCacheObject(smsCodeKey, verificationCode, SMS_CODE_EXPIRE_MINUTES, TimeUnit.MINUTES);

        // 3. 发送短信
        try {
            smsService.sendVerificationCode(phoneNumber, verificationCode);
            log.info("短信发送成功：手机号 [{}], 验证码 [{}]", phoneNumber, verificationCode);
        } catch (Exception e) {
            log.error("短信发送失败：手机号 [{}], 错误信息：{}", phoneNumber, e.getMessage());

            // 发送失败时回滚计数器（可选）
            redisCache.decrement(smsFrequencyKey);
            // 删除验证码
            redisCache.deleteObject(smsCodeKey);
            throw new ServiceException("短信发送失败，请稍后再试。");
        }
    }

    /**
     * 验证码登录
     *
     * @param phoneNumber 手机号
     * @param code        验证码
     * @return 结果
     */
    public String loginWithSms(String phoneNumber, String code) {
        // 从 Redis 中获取验证码
        String redisKey = String.format(CacheConstants.SMS_VERIFICATION_CODE_KEY, phoneNumber);
        String cachedCode = redisCache.getCacheObject(redisKey);
        if (cachedCode == null) {
            AsyncManager.me().execute(AsyncFactory.recordLoginInfo(phoneNumber, Constants.LOGIN_FAIL, MessageUtils.message("user.jcaptcha.expire")));
            // 抛出一个验证码过期异常
            throw new CaptchaExpireException();
        }
        if (!cachedCode.equals(code.trim())) {
            AsyncManager.me().execute(AsyncFactory.recordLoginInfo(phoneNumber, Constants.LOGIN_FAIL, MessageUtils.message("user.jcaptcha.error")));
            // 抛出一个验证码错误的异常
            throw new CaptchaException();
        }
        redisCache.deleteObject(redisKey);
        // 用户验证
        Authentication authentication = null;
        try {
            // 该方法会去调用UserDetailsByPhonenumberServiceImpl.loadUserByUsername
            authentication = authenticationManager.authenticate(new SmsCodeAuthenticationToken(phoneNumber));
        } catch (Exception e) {
            if (e instanceof BadCredentialsException) {
                AsyncManager.me().execute(AsyncFactory.recordLoginInfo(phoneNumber,
                        Constants.LOGIN_FAIL, MessageUtils.message("account.not.incorrect")));
                throw new UserPasswordNotMatchException();
            } else {
                AsyncManager.me().execute(AsyncFactory.recordLoginInfo(phoneNumber,
                        Constants.LOGIN_FAIL, e.getMessage()));
                throw new ServiceException(e.getMessage());
            }
        }
        // 执行异步任务，记录登录信息
        AsyncManager.me().execute(AsyncFactory.recordLoginInfo(phoneNumber,
                Constants.LOGIN_SUCCESS, MessageUtils.message("user.login.success")));
        // 获取登录人信息
        LoginUser loginUser = (LoginUser) authentication.getPrincipal();
        // 修改最近登录IP和登录时间
        recordLoginInfo(loginUser.getUserId());
        // 生成token
        return tokenService.createToken(loginUser);
    }

    /**
     * 单点登录
     * @param ticket
     * @return
     */
    public String loginSSO(String ticket) {
        //ticket验证
        if(ossTicket.equals(ticket)){
            return loginNoCode(ossUserName);
        }
        return null;
    }
}
