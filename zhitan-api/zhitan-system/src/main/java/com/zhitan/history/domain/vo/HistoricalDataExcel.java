package com.zhitan.history.domain.vo;


import com.zhitan.common.annotation.Excel;
import lombok.Data;

/**
 * 历史监测数据返回 Excel
 *
 */
@Data
public class HistoricalDataExcel {

    /**
     * 点位名称
     */
    @Excel(name = "点位名称")
    private String indexName;

    /**
     * 值
     */
    @Excel(name = "值")
    private String value;

    /**
     * 使用量
     */
    @Excel(name = "使用量")
    private String usedValue;

    /**
     * 时间
     */
    @Excel(name = "时间")
    private String dataTime;

}