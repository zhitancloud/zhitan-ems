package com.zhitan.costmanagement.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;

import java.util.Date;

/**
 * 单价关联对象 cost_price_relevancy
 *
 * @author ZhiTan
 */
@TableName("cost_price_relevancy")
@Data
public class CostPriceRelevancy extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private String id;

    /** 用能单位 */
    @Excel(name = "用能单位")
    private String nodeId;

    /** 单价策略id */
    @Excel(name = "单价策略id")
    private String tacticsId;

    /** 能源品种 */
    @Excel(name = "能源品种")
    private Integer energyType;

    /** 有效期开始日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "有效期开始日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date effectiveBeginTime;

    /** 有效期结束日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "有效期结束日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date effectiveEndTime;


}
