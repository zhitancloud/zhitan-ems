package com.zhitan.framework.sms;

import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONUtil;
import com.aliyun.dysmsapi20170525.Client;
import com.aliyun.dysmsapi20170525.models.SendSmsRequest;
import com.aliyun.dysmsapi20170525.models.SendSmsResponse;
import com.aliyun.dysmsapi20170525.models.SendSmsResponseBody;
import com.aliyun.teautil.models.RuntimeOptions;
import com.google.common.collect.Maps;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;

/**
 * 阿里云短信服务Service接口
 *
 * @author zhitan
 */
@Slf4j
@Service
public class SendCodeServiceImpl implements SendCodeService {

    @Resource
    private Client smsClient;

    @Value("${aliyun.sms.sign-name}")
    private String signName;

    @Value("${aliyun.sms.template-code}")
    private String smsCodeTemplateCode;

    @Override
    public void sendVerificationCode(String phoneNumber, String randomCode) {
        HashMap<Object, Object> templateParamMap = Maps.newHashMap();
        templateParamMap.put("code", randomCode);

        SendSmsRequest sendSmsRequest = new SendSmsRequest();
        sendSmsRequest.setPhoneNumbers(phoneNumber);
        sendSmsRequest.setSignName(signName);
        sendSmsRequest.setTemplateCode(smsCodeTemplateCode);
        sendSmsRequest.setTemplateParam(JSONUtil.toJsonStr(templateParamMap));
        try {
            SendSmsResponse sendSmsResponse = smsClient.sendSmsWithOptions(sendSmsRequest, new RuntimeOptions());
            // 200为成功
            SendSmsResponseBody body = sendSmsResponse.getBody();
            // code和message为OK成功
            String code = body.getCode();
            String message = body.getMessage();
            if (StrUtil.equals("OK", code) && StrUtil.equals("OK", message)) {
                log.info("向 手机号：{} 用户发送短信验证码成功！验证码为：{}", phoneNumber, randomCode);
            } else {
                log.warn("向 手机号：{} 用户发送短信验证码失败！验证码为：{}", phoneNumber, randomCode);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

