package com.zhitan.framework.config;

import com.aliyun.teaopenapi.models.Config;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

/**
 * 阿里云短信服务配置类
 */
@Component
public class SmsClientConfig {

    //阿里云账号的accessKeyId
    @Value("${aliyun.sms.access-key-id}")
    private String accessKeyId;

    //阿里云账号的accessKeySecret
    @Value("${aliyun.sms.access-key-secret}")
    private String accessKeySecret;

    //短信服务访问的域名
    @Value("${aliyun.sms.endpoint}")
    private String endpoint;

    @Bean("smsClient")
    public com.aliyun.dysmsapi20170525.Client createClient() throws Exception {
        Config config = new Config().setAccessKeyId(accessKeyId)
                .setAccessKeySecret(accessKeySecret);
        config.endpoint = endpoint;
        return new com.aliyun.dysmsapi20170525.Client(config);
    }
}
