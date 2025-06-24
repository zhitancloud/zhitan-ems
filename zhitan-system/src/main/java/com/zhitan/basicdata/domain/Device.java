package com.zhitan.basicdata.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 设备档案对象 device
 *
 * @author zhitan
 */
@ApiModel(value = "设备档案")
@Data
@Builder
public class Device extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    @ApiModelProperty(value = "主键id")
    private String id;

    /** 编码 */
    @Excel(name = "编码")
    @ApiModelProperty(value = "编码")
    private String code;

    /** 设备名称 */
    @Excel(name = "设备名称")
    @ApiModelProperty(value = "设备名称")
    private String deviceName;

    /** 设备类型 */
    @Excel(name = "设备类型")
    @ApiModelProperty(value = "设备类型")
    private String deviceType;

    /** 使用分厂 */
    @Excel(name = "使用分厂")
    @ApiModelProperty(value = "使用分厂")
    private String branchFactory;

    /** 物理位置 */
    @Excel(name = "物理位置")
    @ApiModelProperty(value = "物理位置")
    private String istallationLocationn;

    /** 能耗等级 */
    @Excel(name = "能耗等级")
    @ApiModelProperty(value = "能耗等级")
    private String deviceGrade;

    /** 额定功率 */
    @Excel(name = "额定功率")
    @ApiModelProperty(value = "额定功率")
    private String ratedPower;

    /** 生产日期 */
    @Excel(name = "生产日期", width = 30, dateFormat = "yyyy-MM-dd")
    @ApiModelProperty(value = "生产日期")
    private Date productionDate;

    /** 投运日期 */
    @Excel(name = "投运日期", width = 30, dateFormat = "yyyy-MM-dd")
    @ApiModelProperty(value = "投运日期")
    @JsonFormat(pattern="yyyy-MM-dd")
    private Date putrunDate;

    /** 生产厂家 */
    @Excel(name = "生产厂家")
    @ApiModelProperty(value = "生产厂家")
    private String manufacturer;

    /** 负责人 */
    @Excel(name = "负责人")
    @ApiModelProperty(value = "负责人")
    private String personCharge;

    /** 技术参数 */
    @Excel(name = "技术参数")
    @ApiModelProperty(value = "技术参数")
    private String technicalData;

    /** 起始时间 */
    @Excel(name = "起始时间", width = 30, dateFormat = "yyyy-MM-dd")
    @ApiModelProperty(value = "起始时间")
    private Date startTime;

    /** 检定周期 */
    @Excel(name = "检定周期")
    @ApiModelProperty(value = "检定周期")
    private Integer checkCycle;

    /** 提醒周期 */
    @Excel(name = "提醒周期")
    @ApiModelProperty(value = "提醒周期")
    private Integer reminderCycle;
    /** 是否重点设备 */
    @Excel(name = "是否重点设备")
    @ApiModelProperty(value = "是否重点设备")
    private String pointFlag;

    private Boolean txflage;

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("code", getCode())
            .append("facilityName", getDeviceName())
            .append("facilityType", getDeviceType())
            .append("branchFactory", getBranchFactory())
            .append("istallationLocationn", getIstallationLocationn())
            .append("facilityGrade", getDeviceGrade())
            .append("ratedPower", getRatedPower())
            .append("productionDate", getProductionDate())
            .append("putrunDate", getPutrunDate())
            .append("manufacturer", getManufacturer())
            .append("personCharge", getPersonCharge())
            .append("technicalData", getTechnicalData())
            .append("startTime", getStartTime())
            .append("checkCycle", getCheckCycle())
            .append("reminderCycle", getReminderCycle())
            .append("remark", getRemark())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .append("txflage", getTxflage())
            .append("pointFlag", getPointFlag())
            .toString();
    }
}
