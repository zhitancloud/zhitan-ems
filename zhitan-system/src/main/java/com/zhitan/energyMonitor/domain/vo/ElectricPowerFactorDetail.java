package com.zhitan.energyMonitor.domain.vo;

import lombok.Data;

/**
 * @Description:
 */
@Data
public class ElectricPowerFactorDetail {
    /**
     * 最大功率因数
     */
    private String max;
    /**
     * 最大功率因数发生时间
     */
    private String maxTime;
    /**
     * 最小功率因数
     */
    private String min;
    /**
     * 最小功率因数发生时间
     */
    private String minTime;
    /**
     * 平均功率因数
     */
    private String avg;

}
