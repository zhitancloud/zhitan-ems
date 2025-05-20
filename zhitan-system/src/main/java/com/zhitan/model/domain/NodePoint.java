package com.zhitan.model.domain;

import lombok.Data;

import java.io.Serializable;

/**
 * 模型节点与指标的关联关系(NodeIndex)实体类
 */
@Data
public class NodePoint implements Serializable {
    private static final long serialVersionUID = 386292923712960012L;
    /**
     * 节点主键
     */
    private String nodeId;
    /**
     * 指标主键
     */
    private String indexId;

}

