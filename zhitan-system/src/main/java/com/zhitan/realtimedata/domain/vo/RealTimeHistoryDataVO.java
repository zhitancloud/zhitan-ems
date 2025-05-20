package com.zhitan.realtimedata.domain.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class RealTimeHistoryDataVO {

    @ApiModelProperty(value = "时间名称")
    private String name;

    @ApiModelProperty(value = "值")
    private BigDecimal value;
}
