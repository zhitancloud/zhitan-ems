package com.zhitan.realtimedata.domain.vo;

import lombok.Data;

/**
 * @Description 设备点位实时数据返回 vo
 **/
@Data
public class EquipmentPointParametersVO {

    /**
     * 点位编码
     */
    private String code;

    /**
     * 点位名称
     */
    private String indexName;

    /**
     * 时间字符串
     */
    private String timeString;

    /**
     * 点位单位
     */
    private String indexUnit;

    /**
     * 值
     */
    private String value;

}
