package com.zhitan.energyUsed.service;


import com.zhitan.common.enums.TimeType;
import com.zhitan.consumptionanalysis.domain.vo.RankingEnergyData;
import com.zhitan.energyUsed.domain.StageDataEntry;
import com.zhitan.realtimedata.domain.EnergyUsed;
import com.zhitan.statisticalAnalysis.domain.dto.FlowChartsDTO;
import com.zhitan.statisticalAnalysis.domain.vo.FlowChartsVO;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 服务接口
 * 
 * @author zhitan
 */
public interface IEnergyUsedService {
    /**
     * 查询需要手动录入的阶段数据
     * 
     * @param stageDataEntry
     * @return stagseDataEntry集合
     */
    List<StageDataEntry> getSettingIndex(StageDataEntry stageDataEntry);

    /**
     * 查询修改手动录入的阶段数据
     *
     * @param stageDataEntry
     * @return stagseDataEntry集合
     */
    List<StageDataEntry> getSettingEdit(StageDataEntry stageDataEntry);

    List<StageDataEntry> stagseDataEntry(String nodeId, List<String> indexCodes,
                                                TimeType timeType,
                                                Date beginTime,
                                                Date endTime,
                                                String calcType);

    /**
     * 根据indexId与时间范围查询dataitem合计信息
     *
     * @param beginTime 开始时间
     * @param endTime   截止时间
     * @param timeType  时间类型
     * @param indexIds  点位集合
     * @return
     */
    BigDecimal getEnergyUsedTimeRangeValueByIndexIds(Date beginTime, Date endTime, String timeType, List<String> indexIds);

    /**
     * 根据indexId与时间范围查询dataitem信息
     *
     * @param beginTime 开始时间
     * @param endTime   截止时间
     * @param timeType  时间类型
     * @param indexIds  点位集合
     * @return
     */
    List<EnergyUsed> listEnergyUsedTimeRangeInfoByPointIds(Date beginTime, Date endTime, String timeType, List<String> indexIds);

    /**
     * 根据indexId与时间编码查询点位值合计
     *
     * @param timeCode 时间编码
     * @param indexIds 点位id集合
     * @return
     */
    List<EnergyUsed> listEnergyUsedByTimeCodeAndIndexIds(String timeCode, List<String> indexIds);

    /**
     * 根据indexId与时间编码查询合计值
     *
     * @param timeCode 时间编码
     * @param indexIds 点位id集合
     * @return
     */
    BigDecimal getEnergyUsedValueByTimeCodeAndIndexIds(String timeCode, List<String> indexIds);

    /**
     * 获取能流图形分析
     *
     * @param dto 请求参数
     * @return 结果
     */
    FlowChartsVO getFlowCharts(FlowChartsDTO dto);

    /**
     * 获取首页能耗排名
     * @param nodeIds
     * @param timeType
     * @param beginTime
     * @param endTime
     * @return
     */
    List<RankingEnergyData> getHomePageConsumptionRanking(List<String> nodeIds, String timeType, Date beginTime, Date endTime);
}
