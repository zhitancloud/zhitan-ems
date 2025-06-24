package com.zhitan.framework.security.single;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * 自定义短信登录身份认证
 */
public class SmsCodeAuthenticationProvider implements AuthenticationProvider {

    private UserDetailsService userDetailsService;

    public SmsCodeAuthenticationProvider(UserDetailsService userDetailsService) {
        setUserDetailsService(userDetailsService);
    }

    /**
     * 重写 authenticate方法，实现身份验证逻辑。
     */
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        SmsCodeAuthenticationToken authenticationToken = (SmsCodeAuthenticationToken) authentication;
        String telephone = (String) authenticationToken.getPrincipal();
        // 委托 UserDetailsService 查找系统用户
        UserDetails userDetails = userDetailsService.loadUserByUsername(telephone);
        // 鉴权成功，返回一个拥有鉴权的 AbstractAuthenticationToken
        SmsCodeAuthenticationToken authenticationResult = new SmsCodeAuthenticationToken(userDetails, userDetails.getAuthorities());
        authenticationResult.setDetails(authenticationToken.getDetails());
        return authenticationResult;
    }

    /**
     * 重写supports方法，指定此 AuthenticationProvider 仅支持短信验证码身份验证。
     */
    @Override
    public boolean supports(Class<?> authentication) {
        return SmsCodeAuthenticationToken.class.isAssignableFrom(authentication);
    }

    public UserDetailsService getUserDetailsService() {
        return userDetailsService;
    }

    public void setUserDetailsService(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

}

