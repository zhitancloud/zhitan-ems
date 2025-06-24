package com.zhitan.energyMonitor.domain.vo;

import lombok.Data;

/**
 * @Description:
 */
@Data
public class ListElectricityMeterVO {
    /**
     * 电表名称
     */
    private String label;
    /**
     * 电表id
     */
    private String code;
}
