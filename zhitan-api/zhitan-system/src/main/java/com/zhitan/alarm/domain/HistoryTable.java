package com.zhitan.alarm.domain;


import com.zhitan.common.annotation.Excel;
import lombok.Data;

/**
 * 历史表格导出
 *
 * @author zhitan
 */
@Data
public class HistoryTable {

    /**
     * 报警时间
     */
    @Excel(name = "报警时间",width = 30)
    private String alarmTime;

    /**
     * 指标编码
     */
   @Excel(name = "指标编码")
   private String code;

    /**
     * 指标名称
     */
    @Excel(name = "指标名称")
    private String indexName;

    /**
     * 单位名称
     */
    @Excel(name = "单位名称")
    private String unitName;

    /**
     * 实时值
     */
    @Excel(name = "实时值")
    private Double earlyWarningValue;

}
