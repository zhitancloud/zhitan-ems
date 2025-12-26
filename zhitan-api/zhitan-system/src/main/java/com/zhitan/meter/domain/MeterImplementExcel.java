package com.zhitan.meter.domain;

import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 计量器具档案维护 导出 Excel专用对象
 * 
 * @author zhitan
 */
@Data
public class MeterImplementExcel extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private String id;

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

    /** 生产厂商 */
    @Excel(name = "生产厂商")
    private String manufacturer;

    /** 负责人 */
    @Excel(name = "负责人")
    private String personCharge;

    /** 安装位置 */
    @Excel(name = "安装位置")
    private String installactionLocation;

    /** 起始时间 */
    @Excel(name = "起始时间")
    private String startTime;

    /** 检定周期 */
    @Excel(name = "检定周期")
    private Integer checkCycle;

    /** 提醒周期 */
    @Excel(name = "提醒周期")
    private Integer reminderCycle;

    /** 状态 */
    @Excel(name = "状态")
    private String meterStatus;

    /** 逻辑删除标志,Y已删除,N未删除 */
    private String delFlage;

    @Excel(name = "线径")
    private String wireDiameter;

    @Excel(name = "允许最大功率")
    private String maxAllowablePower;

    @Excel(name = "能源类型")
    private String energyType;

}
