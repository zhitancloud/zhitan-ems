package com.zhitan.energyMonitor.domain.vo;

import lombok.Data;

import java.util.List;

/**
 * @Description:
 */
@Data
public class ElectricPowerFactorVO {
    /**
     * 记录列表
     */
    private List<ElectricPowerFactorItem> itemList;

    /**
     * 详情实体
     */
    private ElectricPowerFactorDetail detail;
}
