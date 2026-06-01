package com.zhitan.history.domain.vo;


import lombok.Data;

/**
 * 历史监测数据返回 VO
 *
 */
@Data
public class HistoricalDataVO {

    /**
     * 点位id
     */
    private String indexId;

    /**
     * 点位名称
     */
    private String indexName;

    /**
     * 时间
     */
    private String dataTime;

    /**
     * 值
     */
    private String value;

    /**
     * 使用量
     */
    private String usedValue;

}