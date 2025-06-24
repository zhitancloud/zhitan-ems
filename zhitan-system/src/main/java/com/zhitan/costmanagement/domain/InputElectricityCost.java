package com.zhitan.costmanagement.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;

import java.math.BigDecimal;

/**
 * 【请填写功能名称】对象 cost_electricity_Input
 *
 * @author ZhiTan
 */
@Data
@TableName("input_electricity_cost")
public class InputElectricityCost extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private String id;

    /** 时间类型字典值timeType */
    @Excel(name = "时间类型字典值timeType")
    private String type;

    /** 电量 */
    @Excel(name = "电量")
    private BigDecimal electricityNum;

    /** 查询时间 */
    @Excel(name = "查询时间")
    private String time;

    /** 电费 */
    @Excel(name = "电费")
    private BigDecimal electricityFee;

    /** 功率因数 */
    @Excel(name = "功率因数")
    private BigDecimal powerFactor;

    /** 尖时段用电量 */
    @Excel(name = "尖时段用电量")
    private BigDecimal sharpElectricity;

    /** 峰时段用电量 */
    @Excel(name = "峰时段用电量")
    private BigDecimal peakElectricity;

    /** 平时段用电量 */
    @Excel(name = "平时段用电量")
    private BigDecimal flatElectricity;

    /** 谷时段用电量 */
    @Excel(name = "谷时段用电量")
    private BigDecimal valleyElectricity;


}
