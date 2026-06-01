package com.zhitan.energyUsed.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.carbonemission.domain.CarbonEmission;
import com.zhitan.common.enums.TimeType;
import com.zhitan.consumptionanalysis.domain.vo.RankingEnergyData;
import com.zhitan.energyUsed.domain.StageDataEntry;
import com.zhitan.realtimedata.domain.EnergyUsed;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 能源消耗数据接口
 *
 * @author zhitan
 */
public interface EnergyUsedMapper extends BaseMapper<EnergyUsed> {
    /**
     * 阶段数据录入
     *
     * @param stageDataEntry
     * @return 结果
     */
    List<StageDataEntry> getSettingIndex(StageDataEntry stageDataEntry);

    List<StageDataEntry> getSettingEdit(StageDataEntry stageDataEntry);

    List<StageDataEntry> stagseDataByCode(@Param("nodeId") String nodeId,
                                          @Param("indexCodes") List<String> indexCodes,
                                          @Param("timeType") TimeType timeType,
                                          @Param("beginTime") Date beginTime,
                                          @Param("endTime") Date endTime,
                                          @Param("calcType") String calcType);

    /**
     * 根据indexId与时间范围查询dataitem信息
     *
     * @param beginTime 开始时间
     * @param endTime   截止时间
     * @param timeType  时间类型
     * @param indexIds  点位集合
     * @return
     */
    List<EnergyUsed> getEnergyUsedTimeRangeInforByIndexIds(@Param("beginTime") Date beginTime, @Param("endTime") Date endTime,
                                                           @Param("timeType") String timeType, @Param("indexIds") List<String> indexIds);

    /**
     * 根据indexId与时间范围查询dataitem合计信息
     *
     * @param beginTime 开始时间
     * @param endTime   截止时间
     * @param timeType  时间类型
     * @param indexIds  点位集合
     * @return
     */
    BigDecimal getEnergyUsedTimeRangeValueByIndexIds(@Param("beginTime") Date beginTime, @Param("endTime") Date endTime,
                                                     @Param("timeType") String timeType, @Param("indexIds") List<String> indexIds);

    /**
     * 根据indexId与时间编码查询点位值合计
     *
     * @param timeCode 时间编码
     * @param indexIds 点位id集合
     * @return
     */
    List<EnergyUsed> listEnergyUsedByTimeCodeAndIndexIds(@Param("timeCode") String timeCode, @Param("indexIds") List<String> indexIds);

    /**
     * 根据indexId与时间编码查询合计值
     *
     * @param timeCode 时间编码
     * @param indexIds 点位id集合
     * @return
     */
    BigDecimal getEnergyUsedValueByTimeCodeAndIndexIds(@Param("timeCode") String timeCode, @Param("indexIds") List<String> indexIds);


    /**
     * 根据indexId与时间范围查询碳排放数据，上半部分
     *
     * @param beginTime
     * @param endTime
     * @param timeType
     * @param indexId
     * @return
     */
    List<CarbonEmission> getUpCarbonEmission(@Param("beginTime") Date beginTime, @Param("endTime") Date endTime,
                                             @Param("timeType") String timeType, @Param("indexId") String indexId);


    /**
     * 根据indexId与时间范围查询碳排放数据，中间部分
     *
     * @param beginTime
     * @param endTime
     * @param timeType
     * @param indexId
     * @return
     */
    List<CarbonEmission> getMiddleCarbonEmission(@Param("beginTime") Date beginTime, @Param("endTime") Date endTime,
                                                 @Param("timeType") String timeType, @Param("indexId") String indexId, @Param("emissionType") String emissionType);

    /**
     * 根据indexId与时间范围查询碳排放数据，下半部分
     *
     * @param beginTime
     * @param endTime
     * @param timeType
     * @param indexId
     * @return
     */
    List<CarbonEmission> getDownCarbonEmission(@Param("beginTime") Date beginTime, @Param("endTime") Date endTime,
                                               @Param("timeType") String timeType, @Param("indexId") String indexId);

    /**
     * 查询能源类型非电的用量
     *
     * @param beginTime
     * @param endTime
     * @param timeType   时间类型
     * @param nodeId     节点Id
     * @param energyType 能源类型
     * @return
     */
    BigDecimal getDataItemTimeRangeValueByNodeId(@Param("beginTime") Date beginTime, @Param("endTime") Date endTime,
                                                 @Param("timeType") String timeType, @Param("nodeId") String nodeId, @Param("energyType") String energyType);

    /**
     * 能源消耗排名
     *
     * @param nodeIds
     * @param timeType
     * @param beginTime
     * @param endTime
     * @return
     */
    List<RankingEnergyData> getHomePageConsumptionRanking(@Param("nodeIds") List<String> nodeIds,
                                                          @Param("timeType") String timeType,
                                                          @Param("beginTime") Date beginTime,
                                                          @Param("endTime") Date endTime);
}
