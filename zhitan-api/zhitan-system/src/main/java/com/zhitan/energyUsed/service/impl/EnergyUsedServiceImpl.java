package com.zhitan.energyUsed.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.zhitan.common.enums.TimeType;
import com.zhitan.consumptionanalysis.domain.vo.RankingEnergyData;
import com.zhitan.energyUsed.domain.StageDataEntry;
import com.zhitan.energyUsed.domain.vo.NodePointValueVO;
import com.zhitan.energyUsed.mapper.EnergyUsedMapper;
import com.zhitan.energyUsed.service.IEnergyUsedService;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.mapper.ModelNodeMapper;
import com.zhitan.realtimedata.domain.EnergyUsed;
import com.zhitan.statisticalAnalysis.domain.dto.FlowChartsDTO;
import com.zhitan.statisticalAnalysis.domain.vo.FlowChartsItemVO;
import com.zhitan.statisticalAnalysis.domain.vo.FlowChartsVO;
import lombok.AllArgsConstructor;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.temporal.TemporalAdjusters;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class EnergyUsedServiceImpl implements IEnergyUsedService {

    private EnergyUsedMapper energyUsedMapper;
    private ModelNodeMapper modelNodeMapper;


    /**
     * 查询需要手动录入的阶段数据
     *
     * @param stageDataEntry
     * @return 结果
     */
    @Override
    public List<StageDataEntry> getSettingIndex(StageDataEntry stageDataEntry) {
        return energyUsedMapper.getSettingIndex(stageDataEntry);
    }

    /**
     * 查询修改手动录入的阶段数据
     *
     * @param stageDataEntry
     * @return 结果
     */
    @Override
    public List<StageDataEntry> getSettingEdit(StageDataEntry stageDataEntry) {
        return energyUsedMapper.getSettingEdit(stageDataEntry);
    }

    @Override
    public List<StageDataEntry> stagseDataEntry(String nodeId, List<String> indexCodes, TimeType timeType, Date beginTime, Date endTime, String calcType) {
        return energyUsedMapper.stagseDataByCode(nodeId, indexCodes, timeType, beginTime, endTime, calcType);
    }

    /**
     * 根据indexId与时间范围查询合计信息
     *
     * @param beginTime 开始时间
     * @param endTime   截止时间
     * @param timeType  时间类型
     * @param indexIds  点位集合
     * @return
     */
    @Override
    public BigDecimal getEnergyUsedTimeRangeValueByIndexIds(Date beginTime, Date endTime, String timeType, List<String> indexIds) {
        return energyUsedMapper.getEnergyUsedTimeRangeValueByIndexIds(beginTime, endTime, timeType, indexIds);
    }

    /**
     * 根据indexId与时间范围查询信息
     *
     * @param beginTime 开始时间
     * @param endTime   截止时间
     * @param timeType  时间类型
     * @param indexIds  点位集合
     * @return
     */
    @Override
    public List<EnergyUsed> listEnergyUsedTimeRangeInfoByPointIds(Date beginTime, Date endTime, String timeType, List<String> indexIds) {
        return energyUsedMapper.getEnergyUsedTimeRangeInforByIndexIds(beginTime, endTime, timeType, indexIds);
    }

    /**
     * 根据indexId与时间编码查询点位值合计
     *
     * @param timeCode 时间编码
     * @param indexIds 点位id集合
     * @return
     */
    @Override
    public List<EnergyUsed> listEnergyUsedByTimeCodeAndIndexIds(String timeCode, List<String> indexIds) {
        return energyUsedMapper.listEnergyUsedByTimeCodeAndIndexIds(timeCode, indexIds);
    }

    /**
     * 根据indexId与时间编码查询合计值
     *
     * @param timeCode 时间编码
     * @param indexIds 点位id集合
     * @return
     */
    @Override
    public BigDecimal getEnergyUsedValueByTimeCodeAndIndexIds(String timeCode, List<String> indexIds) {
        return energyUsedMapper.getEnergyUsedValueByTimeCodeAndIndexIds(timeCode, indexIds);
    }

    /**
     * 获取能流图形分析
     *
     * @param dto 请求参数
     * @return 结果
     */
    @Override
    public FlowChartsVO getFlowCharts(FlowChartsDTO dto) {
        FlowChartsVO flowChartsVO = new FlowChartsVO();
        // 父节点id
        LambdaQueryWrapper<ModelNode> wrapper = Wrappers.<ModelNode>lambdaQuery()
                .eq(ModelNode::getModelCode, dto.getModelCode())
                .isNull(ModelNode::getParentId);
        List<ModelNode> modelNodes = modelNodeMapper.selectList(wrapper);
        if (ObjectUtils.isEmpty(modelNodes)) {
            throw new RuntimeException("未查询到模型信息");
        }
        ModelNode modelNode = modelNodes.stream().findFirst().get();
        String nodeId = modelNode.getNodeId();
        dto.setNodeId(nodeId);
        String energyType = dto.getEnergyType();
        LocalDate queryTime = dto.getQueryTime();
        TimeType timeType = dto.getTimeType();

        // 获取查询时间
        Map<String, LocalDateTime> dateTimeMap = getTimeInfo(timeType, queryTime);

        // 获取节点和点位的累积量
        List<NodePointValueVO> parentDataItemList = modelNodeMapper.getDataItemByNodeId(nodeId, energyType, TimeType.DAY, dateTimeMap);

        // 获取子节点下的点位的累积量
        List<NodePointValueVO> childDataItemList = modelNodeMapper.getDataItemByParentNodeId(nodeId, energyType, TimeType.DAY, dateTimeMap);

        // 获取父节点下的能耗数据总和
        if (ObjectUtils.isNotEmpty(parentDataItemList)) {
            // 父节点下的能耗数据总和
            BigDecimal totalValue = parentDataItemList.stream().map(NodePointValueVO::getValue)
                    .filter(Objects::nonNull).reduce(BigDecimal.ZERO, BigDecimal::add);
            // 总累积量
            flowChartsVO.setTotalAccumulatedAmount(totalValue);
        }
        // 获取子节点下的能耗数据
        if (ObjectUtils.isNotEmpty(childDataItemList)) {
            // 子节点下的能耗数据总和
            BigDecimal childTotalValue = childDataItemList.stream().map(NodePointValueVO::getValue)
                    .filter(Objects::nonNull).reduce(BigDecimal.ZERO, BigDecimal::add);
            // 子节点累积量
            flowChartsVO.setChildNodeAccumulatedAmount(childTotalValue);

            // 根据子节点id分组
            Map<String, List<NodePointValueVO>> voMap = childDataItemList.stream()
                    .collect(Collectors.groupingBy(NodePointValueVO::getNodeId));
            List<FlowChartsItemVO> itemList = new ArrayList<>();

            for (String childNodeId : voMap.keySet()) {
                FlowChartsItemVO vo = new FlowChartsItemVO();
                vo.setSource(modelNode.getName());
                List<NodePointValueVO> valueList = voMap.getOrDefault(childNodeId, Collections.emptyList());
                if (ObjectUtils.isNotEmpty(valueList)) {
                    // 各个子节点的能耗数据总和
                    BigDecimal value = valueList.stream().map(NodePointValueVO::getValue)
                            .filter(Objects::nonNull).reduce(BigDecimal.ZERO, BigDecimal::add);
                    valueList.stream().findFirst().ifPresent(nodePointValueVO -> vo.setTarget(nodePointValueVO.getNodeName()));
                    vo.setValue(value);
                }
                itemList.add(vo);
            }
            flowChartsVO.setItemVOList(itemList);
        }
        return flowChartsVO;
    }

    @Override
    public List<RankingEnergyData> getHomePageConsumptionRanking(List<String> nodeIds, String timeType, Date beginTime, Date endTime) {
        return energyUsedMapper.getHomePageConsumptionRanking(nodeIds, timeType, beginTime, endTime);
    }

    /**
     * 根据indexId查询能耗数据
     */
    private Map<String, LocalDateTime> getTimeInfo(TimeType timeType, LocalDate queryTime) {
        LocalDateTime startTime;
        LocalDateTime endTime;
        LocalDate startDate;
        LocalDate endDate;
        switch (timeType) {
            case DAY:
                // 当天的开始时间
                startTime = LocalDateTime.of(queryTime, LocalTime.MIN);
                // 当天的结束时间
                endTime = LocalDateTime.of(queryTime, LocalTime.MAX);
                break;
            case MONTH:
                // 当月的开始时间
                startDate = queryTime.with(TemporalAdjusters.firstDayOfMonth());
                startTime = LocalDateTime.of(startDate, LocalTime.MIN);
                // 当月的结束时间
                endDate = queryTime.with(TemporalAdjusters.lastDayOfMonth());
                endTime = LocalDateTime.of(endDate, LocalTime.MAX);
                break;
            case YEAR:
                // 当年的开始时间
                startDate = queryTime.with(TemporalAdjusters.firstDayOfYear());
                startTime = LocalDateTime.of(startDate, LocalTime.MIN);
                // 当年的结束时间
                endDate = queryTime.with(TemporalAdjusters.lastDayOfYear());
                endTime = LocalDateTime.of(endDate, LocalTime.MAX);
                break;
            default:
                // 当天的开始时间
                startTime = LocalDateTime.of(queryTime, LocalTime.MIN);
                // 当天的结束时间
                endTime = LocalDateTime.of(queryTime, LocalTime.MAX);
                break;
        }
        Map<String, LocalDateTime> localDateTimeMap = new HashMap<>();
        localDateTimeMap.put("startTime", startTime);
        localDateTimeMap.put("endTime", endTime);
        return localDateTimeMap;
    }
}
