package com.zhitan.realtimedata.domain.vo;

import com.zhitan.common.annotation.Excel;
import lombok.Data;

/**
 * @Description 设备点位实时数据返回 Excel
 **/
@Data
public class EquipmentPointParametersExcel {

    /**
     * 点位名称
     *
     */
    @Excel(name = "点位名称")
    private String indexName;

    /**
     * 值
     */
    @Excel(name = "当前值")
    private String value;

    /**
     * 单位
     */
    @Excel(name = "单位")
    private String indexUnit;

    /**
     * 时间字符串
     */
    @Excel(name = "时间")
    private String timeString;

}
