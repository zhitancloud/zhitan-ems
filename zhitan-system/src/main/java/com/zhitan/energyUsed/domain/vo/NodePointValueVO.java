package com.zhitan.energyUsed.domain.vo;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @Author DYL
 **/
@Data
public class NodePointValueVO {

    /**
     * 节点id
     */
    private String nodeId;

    /**
     * 节点名称
     */
    private String nodeName;

    /**
     * 点位id
     */
    private String indexId;

    /**
     * 累积量
     */
    private BigDecimal value;
}
