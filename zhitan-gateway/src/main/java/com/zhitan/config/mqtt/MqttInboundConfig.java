package com.zhitan.config.mqtt;

import com.zhitan.handler.MqttMessageHandler;
import com.zhitan.service.IDataService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.dsl.IntegrationFlow;
import org.springframework.integration.dsl.IntegrationFlows;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;

@Configuration
public class MqttInboundConfig {

    private final MqttPahoClientFactory mqttClientFactory;

    private final IDataService dataService;

    @Value("${spring.mqtt.client-id}")
    private String clientId;

    @Value("${spring.mqtt.default-topic}")
    private String defaultTopic;

    public MqttInboundConfig(MqttPahoClientFactory mqttClientFactory, IDataService dataService) {
        this.mqttClientFactory = mqttClientFactory;
        this.dataService = dataService;
    }

    // 订阅消息适配器
    @Bean
    public MqttPahoMessageDrivenChannelAdapter inboundAdapter() {
        return new MqttPahoMessageDrivenChannelAdapter(clientId, mqttClientFactory, defaultTopic);
    }

    // 定义消息处理流
    @Bean
    public IntegrationFlow mqttInFlow() {
        return IntegrationFlows.from(inboundAdapter())
                .handle(new MqttMessageHandler(dataService))
                .get();
    }
}
