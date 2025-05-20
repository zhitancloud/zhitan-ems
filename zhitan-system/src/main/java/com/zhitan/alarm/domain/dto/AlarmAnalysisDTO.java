package com.zhitan.alarm.domain.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.zhitan.common.annotation.Excel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * description 报警统计分析
 * @author zhitan
 */
@Data
public class AlarmAnalysisDTO {
    @ApiModelProperty(value = "节点id")
    private String nodeId;
    @ApiModelProperty(value = "时间类型：年、月、日")
    private String timeType;
    @ApiModelProperty(value = "查询时间")
    private Date dataTime;
    @ApiModelProperty(value = "能源类型")
    private String energyType;

    /**
     * 统计开始时间
     */
    @ApiModelProperty(value = "统计开始时间")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @Excel(name = "报警开始时间", dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date beginTime;

    /**
     * 统计结束时间
     */
    @ApiModelProperty(value = "统计结束时间")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @Excel(name = "报警结束时间", dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;

    /**
     * 模型编码
     */
    @ApiModelProperty(value = "模型编码")
    @Excel(name = "模型编码")
    private String modelCode;
}
