package com.zhitan.energyIndicators.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import com.zhitan.common.annotation.Excel;

import java.math.BigDecimal;

/**
 * 能源指标对象 energy_indicators
 *
 * @author ZhiTan
 */
@TableName("energy_indicators")
@Data
public class EnergyIndicators extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 用能单元id（model_node） */
    @Excel(name = "用能单元id", readConverterExp = "model_node")
    private String nodeId;

    /** 时间类型（年、月、日） */
    @Excel(name = "时间类型", readConverterExp = "年、月、日")
    private String timeType;

    /** 时间 */
    @Excel(name = "时间")
    private String dataTime;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** 产量 */
    @Excel(name = "产量")
    private BigDecimal number;

    /** 单位 */
    @Excel(name = "单位")
    private String unit;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 能源类型，字典项energy_type */
    @Excel(name = "能源类型，字典项energy_type")
    private String energyType;

    /** 指标类型，字典项indicators_type */
    @Excel(name = "指标类型，字典项indicators_type")
    private String indicatorsType;

    /** 主键 */
    @Excel(name = "主键")
    @TableId
    private String energyIndicatorsId;

    /** 节点名称 */
    @Excel(name = "节点名称")
    private String nodeName;

}
