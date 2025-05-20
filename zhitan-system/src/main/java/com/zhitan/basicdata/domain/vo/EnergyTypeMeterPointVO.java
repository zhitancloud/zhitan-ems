package com.zhitan.basicdata.domain.vo;

import lombok.Data;

@Data
public class EnergyTypeMeterPointVO {

    /**
     * indexId
     */
    private String indexId;

    /**
     * meterId
     */
    private String meterId;

    /**
     * 能源类型
     */
    private String energyType;
}
