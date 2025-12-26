package com.zhitan.framework.sms;

/**
 * 阿里云短信服务Service接口
 *
 * @author zhitan
 */
public interface SendCodeService {
    /**
     * 发送短信验证码
     *
     * @param phoneNumber 手机号
     */
    void sendVerificationCode(String phoneNumber, String randomCode);
}
