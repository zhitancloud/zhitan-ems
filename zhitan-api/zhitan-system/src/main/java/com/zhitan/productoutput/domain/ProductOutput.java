package com.zhitan.productoutput.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.math.BigDecimal;

/**
 * 产品产量对象 product_output
 *
 * @author ZhiTan
 */
@Data
@TableName("product_output")
public class ProductOutput extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** productOutputId */
    @TableId
    @Excel(name = "productOutputId")
    private String productOutputId;

    /** 用能单元id（model_node） */
    @Excel(name = "用能单元id")
    private String nodeId;

    /** 用能单元id（model_node） */
    @Excel(name = "用能单元名称")
    private String nodeName;

    /** 时间类型（年、月、日） */
    @Excel(name = "时间类型")
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

    /** 1产量2仪表3指标 */
    @Excel(name = "1产量2仪表3指标")
    private String dataType;

    /** productOutputId */
    @Excel(name = "productType")
    private String productType;

}
