package com.zhitan.realtimedata.domain;

import com.zhitan.common.enums.Quality;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 能源消耗量
 * @author zhitan
 */
@Data
@ApiModel(value = "energy_used对象")
public class EnergyUsed implements Serializable {
  private static final long serialVersionUID = -2777479013884125925L;

  @ApiModelProperty(value = "点位指标id")
  private String pointId;
  @ApiModelProperty(value = "能源品种")
  private String energyType;
  @ApiModelProperty(value = "点位指标code")
  private String pointCode;
  @ApiModelProperty(value = "点位指标名称")
  private String pointName;
  @ApiModelProperty(value = "开始时间")
  private Date beginTime;
  @ApiModelProperty(value = "结束时间")
  private Date endTime;
  @ApiModelProperty(value = "日期")
  private Date dataTime;
  @ApiModelProperty(value = "时间类型编码")
  private String timeCode;
  @ApiModelProperty(value = "时间类型")
  private String timeType;
  @ApiModelProperty(value = "值")
  private Double value;
  @ApiModelProperty(value = "质量")
  private Quality quality;
  @ApiModelProperty(value = "")
  private String unitId;
  @ApiModelProperty(value = "创建时间")
  private Date createTime;
  @ApiModelProperty(value = "更新时间")
  private Date updateTime;
  @ApiModelProperty(value = "备注")
  private String remark;

}
