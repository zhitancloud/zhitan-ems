package com.zhitan.realtimedata.domain;

import com.zhitan.common.enums.TimeType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 周期数据项.
 */
@Data
@ApiModel(value = "dataItem对象")
public class ElectricityDataDetail implements Serializable {
    private static final long serialVersionUID = -2777479013884125925L;

    @ApiModelProperty(value = "指标id")
    private String indexId;
    @ApiModelProperty(value = "时间类型编码")
    private String timeCode;
    @ApiModelProperty(value = "尖峰平谷的类型")
    private String electricityType;
    @ApiModelProperty(value = "指标code")
    private String indexCode;
    @ApiModelProperty(value = "日期")
    private Date dataTime;
    @ApiModelProperty(value = "开始时间")
    private Date beginTime;
    @ApiModelProperty(value = "结束时间")
    private Date endTime;
    @ApiModelProperty(value = "尖峰平谷的类型")
    private double electricity;
    @ApiModelProperty(value = "值")
    private Double cost;
    @ApiModelProperty(value = "值")
    private Double price;
    @ApiModelProperty(value = "时间类型")
    private TimeType timeType;
    @ApiModelProperty(value = "创建时间")
    private Date createTime;
    @ApiModelProperty(value = "更新时间")
    private Date updateTime;
    @ApiModelProperty(value = "备注")
    private String remark;

}
