package com.zhitan.realtimedata.domain.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;


/**
 * @Description 传感器数据
 **/
@Data
public class SensorParamModel {

    @ApiModelProperty(value = "设备名称")
    private String deviceName;

    @ApiModelProperty(value = "能源类型名称")
    private String energyTypeName;

    @ApiModelProperty(name = "线径")
    private String wireDiameter;

    @ApiModelProperty(name = "允许最大功率")
    private String maxAllowablePower;
    
    @ApiModelProperty(value = "点位信息")
    private List<RealTimeIndexModel> energyIndexArray;
}
