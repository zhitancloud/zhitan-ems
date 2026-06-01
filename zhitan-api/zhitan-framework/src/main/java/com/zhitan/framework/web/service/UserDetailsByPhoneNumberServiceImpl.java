package com.zhitan.framework.web.service;

import com.zhitan.common.core.domain.entity.SysUser;
import com.zhitan.common.core.domain.model.LoginUser;
import com.zhitan.common.enums.UserStatus;
import com.zhitan.common.exception.ServiceException;
import com.zhitan.common.utils.DateUtils;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.system.service.ISysUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * 用户验证处理
 *
 * @author hjs
 */
@Service("userDetailsByPhoneNumber")
public class UserDetailsByPhoneNumberServiceImpl implements UserDetailsService {

    private static final Logger log = LoggerFactory.getLogger(UserDetailsByPhoneNumberServiceImpl.class);

    @Value("${aliyun.sms.user-role-id}")
    private Long roleId;

    @Autowired
    private ISysUserService userService;

    @Autowired
    private SysPermissionService permissionService;


    @Override
    public UserDetails loadUserByUsername(String phoneNumber) throws UsernameNotFoundException {
        // 防止漏查角色等所需的信息，尽量模仿根据用户名查用户的方法开发：ISysUserService.selectUserByUserName(username)
        SysUser user = userService.selectUserByUserName(phoneNumber);

        if (StringUtils.isNull(user)) {
            log.info("登录用户：{} 不存在，需要新增用户", phoneNumber);
            user = addUser(phoneNumber);
        } else if (UserStatus.DELETED.getCode().equals(user.getDelFlag())) {
            log.info("登录用户：{} 已被删除.", phoneNumber);
            throw new ServiceException("对不起，您的账号：" + phoneNumber + " 已被删除");
        } else if (UserStatus.DISABLE.getCode().equals(user.getStatus())) {
            log.info("登录用户：{} 已被停用.", phoneNumber);
            throw new ServiceException("对不起，您的账号：" + phoneNumber + " 已停用");
        } else if (user.getTrialExpireTime() != null && user.getTrialExpireTime().getTime() < System.currentTimeMillis()) {
            log.info("登录用户：{} 已到期.", phoneNumber);
            throw new ServiceException("对不起，您的账号：" + phoneNumber + " 已到期");
        }

        return createLoginUser(user);
    }

    /**
     * 新增用户
     *
     * @param phoneNumber 手机号
     * @return 结果
     */
    private SysUser addUser(String phoneNumber) {
        SysUser sysUser = new SysUser();

        sysUser.setUserName(phoneNumber);
        sysUser.setNickName(phoneNumber);
        sysUser.setPhoneNumber(phoneNumber);

        // 体验到期时间=当前时间+1天
        sysUser.setTrialExpireTime(DateUtils.addDays(new Date(), 1));
        userService.insertUser(sysUser);

        Long userId = sysUser.getUserId();

        Long[] roleIds = new Long[]{roleId};
        userService.insertUserAuth(userId, roleIds);
        return sysUser;
    }

    public UserDetails createLoginUser(SysUser user) {
        return new LoginUser(user.getUserId(), user.getDeptId(), user, permissionService.getMenuPermission(user));
    }

}

