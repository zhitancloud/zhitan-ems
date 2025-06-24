package com.zhitan.web.controller.system;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.zhitan.common.constant.Constants;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.domain.entity.SysMenu;
import com.zhitan.common.core.domain.entity.SysUser;
import com.zhitan.common.core.domain.model.LoginBody;
import com.zhitan.common.core.domain.model.SysLoginSsoModel;
import com.zhitan.common.utils.PhoneNumberUtils;
import com.zhitan.common.utils.SecurityUtils;
import com.zhitan.framework.web.service.SysLoginService;
import com.zhitan.framework.web.service.SysPermissionService;
import com.zhitan.system.service.ISysMenuService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

/**
 * 登录验证
 *
 * @author zhitan
 */
@RestController
public class SysLoginController {
    @Resource
    private SysLoginService loginService;

    @Resource
    private ISysMenuService menuService;

    @Resource
    private SysPermissionService permissionService;

    /**
     * 登录方法
     *
     * @param loginBody 登录信息
     * @return 结果
     */
    @PostMapping("/login")
    public AjaxResult login(@RequestBody LoginBody loginBody) {
        AjaxResult ajax = AjaxResult.success();
        // 生成令牌
        String token = loginService.login(loginBody.getUsername(), loginBody.getPassword(), loginBody.getCode(),
                loginBody.getUuid());
        ajax.put(Constants.TOKEN, token);
        return ajax;
    }

    /**
     * 发送短信验证码
     *
     * @param phoneNumber 手机号
     * @return AjaxResult
     */
    @GetMapping("/sms/send")
    public AjaxResult sendSms(@RequestParam("phoneNumber") String phoneNumber) {
        // 参数校验
        if (!PhoneNumberUtils.isValidPhoneNumber(phoneNumber)) {
            return AjaxResult.error("手机号格式异常");
        }
        loginService.sendSms(phoneNumber);
        return AjaxResult.success("验证码发送成功");
    }

    /**
     * 短信验证码登录接口
     *
     * @param phoneNumber 手机号
     * @param code        验证码
     * @return AjaxResult
     */
    @GetMapping("/loginWithSms")
    public AjaxResult loginWithSms(@RequestParam("phoneNumber") String phoneNumber,
                                   @RequestParam("code") String code) {
        if (!PhoneNumberUtils.isValidPhoneNumber(phoneNumber)) {
            return AjaxResult.error("手机号格式异常");
        }
        if (code == null || code.isEmpty()) {
            return AjaxResult.error("验证码不能为空");
        }
        AjaxResult ajax = AjaxResult.success();
        String token = loginService.loginWithSms(phoneNumber, code);

        ajax.put(Constants.TOKEN, token);
        return ajax;
    }

    /**
     * SSO登录
     * @param ssoLoginModel
     * @return
     */
    @PostMapping("/loginSSO")
    public AjaxResult loginSso(@RequestBody SysLoginSsoModel ssoLoginModel) {

        AjaxResult ajax = AjaxResult.success();
        if(ObjectUtils.isEmpty(ssoLoginModel.getTicket())){
            return AjaxResult.error("ticket 不能为空！");
        }
        String token = loginService.loginSSO(ssoLoginModel.getTicket());
        if(ObjectUtils.isEmpty(token)){
            return AjaxResult.error("ticket 校验失败！");
        }
        ajax.put(Constants.TOKEN, token);
        return ajax;
    }

    /**
     * 获取用户信息
     *
     * @return 用户信息
     */
    @GetMapping("getInfo")
    public AjaxResult getInfo() {
        SysUser user = SecurityUtils.getLoginUser().getUser();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(user);
        // 权限集合
        Set<String> permissions = permissionService.getMenuPermission(user);
        AjaxResult ajax = AjaxResult.success();
        ajax.put("user", user);
        ajax.put("roles", roles);
        ajax.put("permissions", permissions);
        return ajax;
    }

    /**
     * 获取路由信息
     *
     * @return 路由信息
     */
    @GetMapping("getRouters")
    public AjaxResult getRouters() {
        Long userId = SecurityUtils.getUserId();
        List<SysMenu> menus = menuService.selectMenuTreeByUserId(userId);
        return AjaxResult.success(menuService.buildMenus(menus));
    }
}
