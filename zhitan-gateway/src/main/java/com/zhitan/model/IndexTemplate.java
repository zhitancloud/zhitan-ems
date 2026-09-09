package com.zhitan.model;

import lombok.Data;

/**
 * 模板
 */
@Data
public class IndexTemplate {
    /**
     * code
     */
    private String code;
    /**
     * name
     */
    private String name;
    /**
     * deviceType
     */
    private Integer deviceType;
    /**
     * gatewayKey
     */
    private String gatewayKey;
}
