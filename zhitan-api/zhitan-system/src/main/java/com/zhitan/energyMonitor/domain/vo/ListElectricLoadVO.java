package com.zhitan.energyMonitor.domain.vo;

import lombok.Data;

import java.util.List;

/**
 * @Description:
 */
@Data
public class ListElectricLoadVO {
    /**
     * 记录列表
     */
    private List<ListElectricLoadItem> itemList;

    /**
     * 详情实体
     */
    private ListElectricLoadDetail detail;
}
