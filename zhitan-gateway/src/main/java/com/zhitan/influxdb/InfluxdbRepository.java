package com.zhitan.influxdb;

import com.influxdb.LogLevel;
import com.influxdb.client.InfluxDBClient;
import com.influxdb.client.InfluxDBClientFactory;
import com.influxdb.client.WriteApiBlocking;
import com.influxdb.client.write.Point;
import com.zhitan.config.influxdb.InfluxdbConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * influxdb的基础服务
 *
 * @author Silence
 * @version 1.0
 */
@Slf4j
@Repository
public class InfluxdbRepository {

    protected InfluxdbConfig config;
    protected InfluxDBClient client;

    @Autowired
    public InfluxdbRepository(InfluxdbConfig config) {
        this.config = config;
        init();
    }

    /**
     * 初始化
     */
    private void init() {
        if (config.isEnable()) {
            if (null == client) {
                client = InfluxDBClientFactory.create(config.getHost(), config.getToken().toCharArray(),
                                config.getOrg(), config.getBucket())
                        .enableGzip()
                        .setLogLevel(LogLevel.BASIC);
            }
            if (!client.ping()) {
                log.error("实时库连接失败");
            } else {
                log.info("实时库连接成功");
            }
        } else {
            log.debug("时序库不可用");
        }
    }

    /**
     * 写入单个点位
     */
    public void writePoint(Point point) {
        if (null == point) {
            return;
        }
        WriteApiBlocking writeApi = client.getWriteApiBlocking();
        writeApi.writePoint(point);
    }

    /**
     * 写入多个点位
     */
    public void writePoints(List<Point> points) {
        if (null == points || points.isEmpty()) {
            return;
        }
        WriteApiBlocking writeApi = client.getWriteApiBlocking();
        writeApi.writePoints(points);
    }
}
