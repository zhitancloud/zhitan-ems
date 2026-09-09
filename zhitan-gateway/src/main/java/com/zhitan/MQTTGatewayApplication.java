package com.zhitan;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * application
 */
@SpringBootApplication
@MapperScan(basePackages = {"com.zhitan.mapper"})
public class MQTTGatewayApplication {
    public static void main(String[] args) {
        SpringApplication.run(MQTTGatewayApplication.class, args);
        System.out.println("MQTT Gateway Application Started");
    }
}
