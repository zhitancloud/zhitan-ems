package com.zhitan.statisticalAnalysis.domain.vo;

import lombok.Data;

import java.util.List;

/**
 * @Description:
 */
@Data
public class EnergyCostTrendPage {
    /**
     * 数据列表
     */
    private List<EnergyCostTrendItem> itemList;
    /**
     * 记录总数量
     */
    private long total;
}
