package com.zhitan.service;

import com.zhitan.model.entity.ElectricPower;
import org.jetbrains.annotations.NotNull;

/**
 * 数据service
 */
public interface IDataService {

    /**
     * 写入数据-适合动态写入key唯一的
     *
     * @param jsonString json格式的数据
     */
    void writeTimeSeriesData(@NotNull String jsonString);

    /**
     * 写入电力相关数据-固定格式，可自定义修改
     *
     * @param electricPower 固定格式的数据
     */
    void writeTimeSeriesData(@NotNull ElectricPower electricPower);
}
