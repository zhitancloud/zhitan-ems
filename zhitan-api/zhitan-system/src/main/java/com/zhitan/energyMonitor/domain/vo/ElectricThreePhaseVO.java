package com.zhitan.energyMonitor.domain.vo;

import lombok.Data;

import java.util.List;

/**
 * @Description:
 */
@Data
public class ElectricThreePhaseVO {
    /**
     * 记录列表
     */
    private List<ElectricThreePhaseItem> itemList;

    /**
     * 详情实体
     */
    private ElectricThreePhaseDetail detail;
}
