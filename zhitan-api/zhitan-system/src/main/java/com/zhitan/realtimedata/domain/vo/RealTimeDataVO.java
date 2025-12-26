package com.zhitan.realtimedata.domain.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;


@Data
public class RealTimeDataVO {
    @ApiModelProperty(value = "能源类型名称")
    private String energyTypeName;

    @ApiModelProperty(value = "传感器信息集合")
    private List<SensorParamModel> deviceArray;
}
