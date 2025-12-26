package com.zhitan.meter.domain;

import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 计量器具统计查询对象
 * 
 * @author zhitan
 */
@Data
public class MeterImplementCount extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编码 */
    @Excel(name = "编码")
    private String code;

    /** 器具名称 */
    @Excel(name = "器具名称")
    private String meterName;

    /** 种类 */
    @Excel(name = "种类")
    private String meterType;

    /** 规格型号 */
    @Excel(name = "规格型号")
    private String modelNumber;

    /** 测量范围 */
    @Excel(name = "测量范围")
    private String measureRange;

    /** 主键 */
    private String id;

    /** 生产厂商 */
    @Excel(name = "生产厂商")
    private String manufacturer;

    /** 负责人 */
    private String personCharge;

    /** 安装位置 */
    @Excel(name = "安装位置")
    private String installactionLocation;

    /** 起始时间 */
    private Date startTime;

    /** 投运时间 */
    @Excel(name = "投运时间")
    private Date putrunTime;


    /** 检定周期 */
    private Integer checkCycle;

    /** 提醒周期 */
    private Integer reminderCycle;

    /** 状态 */
    @Excel(name = "状态")
    private String meterStatus;

    /** 逻辑删除标志,Y已删除,N未删除 */
    private String delFlage;

    private boolean txflage;

}
