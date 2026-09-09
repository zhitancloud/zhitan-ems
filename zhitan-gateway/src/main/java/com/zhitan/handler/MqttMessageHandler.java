package com.zhitan.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zhitan.model.entity.ElectricPower;
import com.zhitan.service.IDataService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.integration.mqtt.support.MqttHeaders;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageHandler;
import org.springframework.messaging.MessagingException;

/**
 * mqtt 消息处理类
 */
@Slf4j
public class MqttMessageHandler implements MessageHandler {
    private final IDataService dataService;

    public MqttMessageHandler(IDataService dataService) {
        this.dataService = dataService;
    }

    @Override
    public void handleMessage(Message<?> message) throws MessagingException {
        String topic = (String) message.getHeaders().get(MqttHeaders.RECEIVED_TOPIC);
        String payload = (String) message.getPayload();
        System.out.println("Received message from topic " + topic + ": " + payload);

        dataService.writeTimeSeriesData(payload);

//        ObjectMapper objectMapper = new ObjectMapper();
//        try {
//            // 将 JSON 字符串转换为 SensorData 对象
//            ElectricPower electricPower = objectMapper.readValue(payload, ElectricPower.class);
//            dataService.writeTimeSeriesData(electricPower);
//        } catch (Exception e) {
//            log.error(e.getMessage());
//        }
    }
}
