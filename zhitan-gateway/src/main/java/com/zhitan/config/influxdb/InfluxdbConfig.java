package com.zhitan.config.influxdb;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Data
@Component
@ConfigurationProperties(prefix = "influxdb")
public class InfluxdbConfig {
    private String host;
    private String org;
    private String bucket;
    private String token;
    private String measurement;
    private boolean enable;
}
