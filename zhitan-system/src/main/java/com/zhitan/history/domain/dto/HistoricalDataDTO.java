package com.zhitan.history.domain.dto;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 历史监测数据请求 DTO
 *
 */
@Data
public class HistoricalDataDTO {

    /**
     * 点位id
     */
    @NotBlank(message = "未找到点位信息")
    private String indexId;

    /**
     * 时间类型
     */
    @NotBlank(message = "未找到时间类型")
    private String timeType;

    /**
     * 查询时间
     */
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @NotNull(message = "未找到时间信息")
    private Date dataTime;

}