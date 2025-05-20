package com.zhitan.peakvalley.mapper;


import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * 尖峰平谷数据对象 Mapper接口
 *
 * @author zhitan
 */
public interface EnergyUsedElectricityMapper {

    /**
     * 查询尖峰平谷统计数据
     *
     * @param indexIdSet 点位id集合
     * @param startTime  开始时间
     * @param endTime    截止时间
     * @param timeType   时间类型
     * @return 结果
     */
    List<com.zhitan.peakvalley.domain.EnergyUsedElectricity> getDataStatistics(@Param("indexIdSet") Set<String> indexIdSet, @Param("startTime") Date startTime,
                                                                               @Param("endTime") Date endTime, @Param("timeType") String timeType);

    /**
     * 查询尖峰平谷统计数据(偏差分析)
     *
     * @param indexIdSet 点位id集合
     * @param timeType   时间类型
     * @return 结果
     */
    List<com.zhitan.peakvalley.domain.EnergyUsedElectricity> getDataStatisticsDeviationAnalysis(@Param("indexIdSet") Set<String> indexIdSet,
                                                                                                @Param("timeType") String timeType);

    /**
     * 查询成本趋势
     * @param beginTime
     * @param endTime
     * @param timeType 时间类型
     * @param nodeId 节点Id
     * @param energyType 能源类型
     * @return
     */
    List<com.zhitan.peakvalley.domain.EnergyUsedElectricity> getCostTrends(@Param("beginTime") Date beginTime, @Param("endTime") Date endTime,
                                                                           @Param("timeType") String timeType, @Param("nodeId") String nodeId, @Param("energyType") String energyType);

}
