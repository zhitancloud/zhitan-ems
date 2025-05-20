package com.zhitan.energyMonitor.domain.vo;

import lombok.Data;

/**
 * @Description:
 */
@Data
public class ElectricPowerFactorItem {
    /**
     * 时间
     */
    private String timeCode;
    /**
     * 实时值
     */
    private String value;
}
