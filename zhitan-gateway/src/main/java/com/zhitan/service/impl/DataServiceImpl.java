package com.zhitan.service.impl;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import com.influxdb.client.domain.WritePrecision;
import com.influxdb.client.write.Point;
import com.zhitan.config.influxdb.InfluxdbConfig;
import com.zhitan.model.IndexTemplate;
import com.zhitan.model.entity.ElectricPower;
import com.zhitan.influxdb.InfluxdbRepository;
import com.zhitan.mapper.CommonMapper;
import com.zhitan.redis.RedisCache;
import com.zhitan.service.IDataService;
import lombok.extern.slf4j.Slf4j;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;

import java.lang.reflect.Field;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * 数据service
 */
@Slf4j
@Service
public class DataServiceImpl implements IDataService {

    private final String TAG = "tag";
    private final String FIELD_VALUE = "value";
    private final InfluxdbRepository repository;
    private final InfluxdbConfig influxdbConfig;
    private final CommonMapper commonMapper;
    private final RedisCache redisCache;

    @Autowired
    public DataServiceImpl(InfluxdbRepository repository, InfluxdbConfig influxdbConfig,
                           CommonMapper commonMapper, RedisCache redisCache) {
        this.repository = repository;
        this.influxdbConfig = influxdbConfig;
        this.commonMapper = commonMapper;
        this.redisCache = redisCache;
    }

    /**
     * 写入时序数据
     *
     * @param jsonString json数据
     */
    @Override
    public void writeTimeSeriesData(@NotNull String jsonString) {
        if (jsonString.isEmpty()) {
            return;
        }
        List<IndexTemplate> templates = getIndexTemplate();
        if (CollectionUtils.isEmpty(templates)){
            return;
        }
        // 获取模板点位编码
        Map<String, String> keyMap = templates.stream()
                .filter(item -> !ObjectUtils.isEmpty(item.getGatewayKey()))
                .collect(Collectors.toMap(IndexTemplate::getGatewayKey, IndexTemplate::getCode, (oldValue, newValue) -> oldValue));

        List<Point> points = new ArrayList<>();
        JsonObject jsonObject = JsonParser.parseString(jsonString).getAsJsonObject();
        String deviceCode = jsonObject.get("SN").getAsString();
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            String key = entry.getKey();
            if (key.equals("SN")) {
                continue;
            }
            String code = keyMap.get(key);
            if (code == null){
                log.error("设备：{}，点位编码不存在:{}", deviceCode, key);
                continue;
            }
            String tagCode = deviceCode + "_" + code;

            JsonElement value = entry.getValue();
            JsonPrimitive primitive = value.getAsJsonPrimitive();
            Point point = Point
                    .measurement(influxdbConfig.getMeasurement())
                    .addTag(TAG, tagCode)
                    .time(Instant.now(), WritePrecision.S);
            if (primitive.isJsonPrimitive()) {
                if (primitive.isNumber()) {
                    point.addField(FIELD_VALUE, value.getAsDouble());
                    points.add(point);
                } else if (primitive.isString()) {
                    point.addField(FIELD_VALUE, value.getAsString());
                } else if (primitive.isBoolean()) {
                    point.addField(FIELD_VALUE, value.getAsBoolean());
                }
            }
        }
        repository.writePoints(points);
    }

    /**
     * 写入电力相关数据-固定格式，可自定义修改
     *
     * @param electricPower 固定格式的数据
     */
    @Override
    public void writeTimeSeriesData(@NotNull ElectricPower electricPower) {
        List<IndexTemplate> templates = getIndexTemplate();
        // 获取类中所有声明的字段
        Field[] fields = electricPower.getClass().getDeclaredFields();
        List<Point> points = new ArrayList<>();
        for (Field field : fields) {
            IndexTemplate indexTemplate = templates.stream().filter(template ->
                            field.getName().equalsIgnoreCase(template.getGatewayKey()))
                    .findFirst().orElse(null);
            if (indexTemplate != null) {
                Point point = Point
                        .measurement(influxdbConfig.getMeasurement())
                        .addTag(TAG, electricPower.getSn() + "_" + indexTemplate.getCode())
                        .time(Instant.now(), WritePrecision.S);
                // 设置字段可访问，允许访问私有字段
                field.setAccessible(true);
                if (Number.class.isAssignableFrom(field.getType()) || field.getType().isPrimitive()) {
                    try {
                        // 获取字段值
                        double value = field.getDouble(electricPower);
                        point.addField(FIELD_VALUE, value);
                        points.add(point);
                    } catch (IllegalAccessException e) {
                        log.error("获取属性值失败:{}", e.getMessage());
                    }
                }
            }
        }
        repository.writePoints(points);
    }

    /**
     * 获取点位模板
     */
    protected List<IndexTemplate> getIndexTemplate() {
        String TEMPLATE_KEY = "template";
        List<IndexTemplate> result = redisCache.getCacheList(TEMPLATE_KEY);
        if (result == null || result.isEmpty()) {
            result = commonMapper.getIndexTemplate();
            redisCache.setCacheList(TEMPLATE_KEY, result);
        }
        return result;
    }
}
