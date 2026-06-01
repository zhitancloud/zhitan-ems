package com.zhitan.energydata.mapper;

import com.zhitan.model.domain.vo.ModelNodePointInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EnergyDataStatisticMapper
{
    List<ModelNodePointInfo> getModelNodeIndexIdByFixedNodeIds(@Param("modelCode")String modelCode, @Param("fixedNodeIds") List<String> fixedNodeIds);
}
