package com.zhitan.statisticalAnalysis.domain.vo;


import lombok.Data;

import java.math.BigDecimal;

/**
 * 数据分析环比 返回vo
 *
 */
@Data
public class DataAnalysisMoMVO {


    /**
     * 单位
     */
    private String unit;

    /**
     * 用能单元名称
     */
    private String energyUnitName;

    /**
     * 本期值
     */
    private BigDecimal currentValue;

    /**
     * 同期值
     */
    private BigDecimal oldValue;

    /**
     * 同比值
     */
    private BigDecimal ratio;
}
