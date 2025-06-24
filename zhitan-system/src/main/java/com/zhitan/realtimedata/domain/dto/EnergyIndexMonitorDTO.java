package com.zhitan.realtimedata.domain.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * @Description 能源点位监测请求 DTO
 **/
@Data
@ApiModel(value = "指标信息")
public class EnergyIndexMonitorDTO {
    /**
     * 点位类型
     */
    @ApiModelProperty(value = "点位类型")
    private String indexType;

    /**
     * 模型id
     */
    @NotBlank(message = "未找到模型信息")
    @ApiModelProperty(value = "模型id")
    private String nodeId;

    @ApiModelProperty(value = "能源类型")
    private String energyType;

}
