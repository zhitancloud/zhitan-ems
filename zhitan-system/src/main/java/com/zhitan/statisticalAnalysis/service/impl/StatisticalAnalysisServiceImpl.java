package com.zhitan.statisticalAnalysis.service.impl;

import cn.hutool.core.date.DateField;
import cn.hutool.core.date.DateUtil;
import com.zhitan.common.constant.CommonConst;
import com.zhitan.common.constant.TimeTypeConst;
import com.zhitan.common.enums.TimeType;
import com.zhitan.energyUsed.service.IEnergyUsedService;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.realtimedata.domain.EnergyUsed;
import com.zhitan.statisticalAnalysis.domain.dto.DataAnalysisMoMDTO;
import com.zhitan.statisticalAnalysis.domain.vo.DataAnalysisMoMVO;
import com.zhitan.statisticalAnalysis.domain.vo.DataAnalysisYoYVO;
import com.zhitan.statisticalAnalysis.service.IStatisticalAnalysisService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 统计分析  接口层实现层
 */
@Slf4j
@Service
@AllArgsConstructor
public class StatisticalAnalysisServiceImpl implements IStatisticalAnalysisService {

    private final IEnergyUsedService dataItemService;

    private final IModelNodeService modelNodeService;


    /**
     * 获取电能耗同比数据
     */
    @Override
    public List<DataAnalysisYoYVO> listElectricDataComparisonYoY(DataAnalysisMoMDTO dto) {
        List<DataAnalysisYoYVO> yoyList = new ArrayList<>();
        // 查询点位与用能单元信息
        List<ModelNodePointInfo> nodeInforList = listModelNodeIndexIdRelationInfor(dto.getNodeId());
        if (CollectionUtils.isEmpty(nodeInforList)) {
            return yoyList;
        }
        List<String> indexIds = nodeInforList.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
        // 按照点位进行分组
        Map<String, List<ModelNodePointInfo>> nodeIndexMap = nodeInforList.stream().collect(
                Collectors.groupingBy(ModelNodePointInfo::getNodeId));
        // 获取查询时间
        Date beginTime = dto.getBeginTime();
        Date endTime = dto.getEndTime();
        // 同比时间
        Date lastTime = DateUtil.offset(beginTime, DateField.YEAR, CommonConst.DIGIT_MINUS_1);
        Date lastEndTime = DateUtil.offset(endTime, DateField.YEAR, CommonConst.DIGIT_MINUS_1);
        // 查询对应indexIds，找到对应dataItem信息
        List<EnergyUsed> energyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(beginTime, endTime, TimeType.HOUR.name(), indexIds);
        List<EnergyUsed> lastEnergyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(lastTime, lastEndTime, TimeType.HOUR.name(), indexIds);
        //  倍率
        BigDecimal multiple = BigDecimal.valueOf(CommonConst.DIGIT_100);
        nodeIndexMap.forEach((key, value) -> {
            DataAnalysisYoYVO yoyVO = new DataAnalysisYoYVO();
            Optional<ModelNodePointInfo> first = value.stream().findFirst();
            first.ifPresent(modelNodeIndexInfor -> yoyVO.setEnergyUnitName(modelNodeIndexInfor.getName()));
            // 赋值单位
            yoyVO.setUnit("kWh");
            // 找出indexIds
            List<String> indexIdList = value.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
            // 求和
            BigDecimal sum = BigDecimal.valueOf(energyUsedList.stream().filter(li -> indexIdList.contains(li.getPointId()))
                    .mapToDouble(EnergyUsed::getValue).sum()).setScale(CommonConst.DIGIT_2, RoundingMode.HALF_UP);
            BigDecimal lastSum = BigDecimal.valueOf(lastEnergyUsedList.stream().filter(li -> indexIdList.contains(li.getPointId()))
                    .mapToDouble(EnergyUsed::getValue).sum()).setScale(CommonConst.DIGIT_2, RoundingMode.HALF_UP);
            yoyVO.setCurrentValue(sum);
            yoyVO.setOldValue(lastSum);
            //  同比值
            BigDecimal ratio = BigDecimal.ZERO;
            if (lastSum.compareTo(BigDecimal.ZERO) != 0) {
                ratio = sum.subtract(lastSum).divide(lastSum, CommonConst.DIGIT_2, RoundingMode.HALF_UP).multiply(multiple);
            }
            yoyVO.setRatio(ratio);
            yoyList.add(yoyVO);
        });
        return yoyList;
    }

    /**
     * 获取电能耗环比数据
     */
    @Override
    public List<DataAnalysisMoMVO> listElectricDataComparisonMoM(DataAnalysisMoMDTO dto) {
        List<DataAnalysisMoMVO> momList = new ArrayList<>();
        // 根据id查询点位信息
        List<ModelNodePointInfo> nodeIndexInforList = listModelNodeIndexIdRelationInfor(dto.getNodeId());
        if (CollectionUtils.isEmpty(nodeIndexInforList)) {
            return momList;
        }
        List<String> indexIds = nodeIndexInforList.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
        Date beginTime = dto.getBeginTime();
        Date endTime = dto.getEndTime();
        Date lastTime;
        Date lastEndTime;
        String queryTimeType = dto.getTimeType();
        // 小时
        if (TimeTypeConst.TIME_TYPE_HOUR.equals(queryTimeType)) {
            lastTime = DateUtil.offsetHour(beginTime, CommonConst.DIGIT_MINUS_1);
            lastEndTime = DateUtil.offsetHour(endTime, CommonConst.DIGIT_MINUS_1);
            // 天
        } else if (TimeTypeConst.TIME_TYPE_DAY.equals(queryTimeType)) {
            lastTime = DateUtil.offsetDay(beginTime, CommonConst.DIGIT_MINUS_1);
            lastEndTime = DateUtil.offsetDay(endTime, CommonConst.DIGIT_MINUS_1);
            // 月
        } else if (TimeTypeConst.TIME_TYPE_MONTH.equals(queryTimeType)) {
            lastTime = DateUtil.offsetMonth(beginTime, CommonConst.DIGIT_MINUS_1);
            lastEndTime = DateUtil.offsetMonth(endTime, CommonConst.DIGIT_MINUS_1);
            // 年
        } else {
            lastTime = DateUtil.offset(beginTime, DateField.YEAR, CommonConst.DIGIT_MINUS_1);
            lastEndTime = DateUtil.offset(endTime, DateField.YEAR, CommonConst.DIGIT_MINUS_1);
        }
        // 按照点位进行分组
        Map<String, List<ModelNodePointInfo>> nodeIndexMap = nodeIndexInforList.stream().collect(
                Collectors.groupingBy(ModelNodePointInfo::getNodeId));
        // 根据indexId查询dataItem
        List<EnergyUsed> energyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(beginTime, endTime, TimeType.HOUR.name(), indexIds);
        List<EnergyUsed> lastEnergyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(lastTime, lastEndTime, TimeType.HOUR.name(), indexIds);
        //  倍率
        BigDecimal multiple = BigDecimal.valueOf(CommonConst.DIGIT_100);
        nodeIndexMap.forEach((key, value) -> {
            DataAnalysisMoMVO momVO = new DataAnalysisMoMVO();
            Optional<ModelNodePointInfo> first = value.stream().findFirst();
            first.ifPresent(modelNodeIndexInfor -> momVO.setEnergyUnitName(modelNodeIndexInfor.getName()));
            // 赋值单位
            momVO.setUnit("kWh");
            // 找出indexIds
            List<String> indexIdList = value.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
            // 求和
            BigDecimal sum = BigDecimal.valueOf(energyUsedList.stream().filter(li -> indexIdList.contains(li.getPointId()))
                    .mapToDouble(EnergyUsed::getValue).sum()).setScale(CommonConst.DIGIT_2, RoundingMode.HALF_UP);
            BigDecimal lastSum = BigDecimal.valueOf(lastEnergyUsedList.stream().filter(li -> indexIdList.contains(li.getPointId()))
                    .mapToDouble(EnergyUsed::getValue).sum()).setScale(CommonConst.DIGIT_2, RoundingMode.HALF_UP);
            momVO.setCurrentValue(sum);
            momVO.setOldValue(lastSum);
            //  同比值
            BigDecimal ratio = BigDecimal.ZERO;
            if (lastSum.compareTo(BigDecimal.ZERO) != 0) {
                ratio = sum.subtract(lastSum).divide(lastSum, CommonConst.DIGIT_2, RoundingMode.HALF_UP).multiply(multiple);
            }
            momVO.setRatio(ratio);
            momList.add(momVO);
        });
        return momList;
    }

    /**
     * 获取能耗同比数据
     */
    @Override
    public List<DataAnalysisYoYVO> listWaterDataComparisonYoY(DataAnalysisMoMDTO dto) {
        List<DataAnalysisYoYVO> yoyList = new ArrayList<>();
        // 查询点位与用能单元信息
        List<ModelNodePointInfo> nodeInforList = listModelNodeIndexIdRelationInfor(dto.getNodeId());
        if (CollectionUtils.isEmpty(nodeInforList)) {
            return yoyList;
        }
        List<String> indexIds = nodeInforList.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
        // 按照点位进行分组
        Map<String, List<ModelNodePointInfo>> nodeIndexMap = nodeInforList.stream().collect(
                Collectors.groupingBy(ModelNodePointInfo::getNodeId));
        // 时间类型
        // 获取查询时间
        Date beginTime = dto.getBeginTime();
        Date endTime = dto.getEndTime();
        // 同比时间
        Date lastTime = DateUtil.offset(beginTime, DateField.YEAR, CommonConst.DIGIT_MINUS_1);
        Date lastEndTime = DateUtil.offset(endTime, DateField.YEAR, CommonConst.DIGIT_MINUS_1);
        // 查询对应indexIds，找到对应dataItem信息
        List<EnergyUsed> energyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(beginTime, endTime, TimeType.HOUR.name(), indexIds);
        List<EnergyUsed> lastEnergyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(lastTime, lastEndTime, TimeType.HOUR.name(), indexIds);
        //  倍率
        BigDecimal multiple = BigDecimal.valueOf(CommonConst.DIGIT_100);
        nodeIndexMap.forEach((key, value) -> {
            DataAnalysisYoYVO yoyVO = new DataAnalysisYoYVO();
            Optional<ModelNodePointInfo> first = value.stream().findFirst();
            first.ifPresent(modelNodeIndexInfor -> yoyVO.setEnergyUnitName(modelNodeIndexInfor.getName()));
            // 赋值单位
            yoyVO.setUnit("m³");
            // 找出indexIds
            List<String> indexIdList = value.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
            // 求和
            BigDecimal sum = BigDecimal.valueOf(energyUsedList.stream().filter(li -> indexIdList.contains(li.getPointId()))
                    .mapToDouble(EnergyUsed::getValue).sum()).setScale(CommonConst.DIGIT_2, RoundingMode.HALF_UP);
            BigDecimal lastSum = BigDecimal.valueOf(lastEnergyUsedList.stream().filter(li -> indexIdList.contains(li.getPointId()))
                    .mapToDouble(EnergyUsed::getValue).sum()).setScale(CommonConst.DIGIT_2, RoundingMode.HALF_UP);
            yoyVO.setCurrentValue(sum);
            yoyVO.setOldValue(lastSum);
            //  同比值
            BigDecimal ratio = BigDecimal.ZERO;
            if (lastSum.compareTo(BigDecimal.ZERO) != 0) {
                ratio = sum.subtract(lastSum).divide(lastSum, CommonConst.DIGIT_2, RoundingMode.HALF_UP).multiply(multiple);
            }
            yoyVO.setRatio(ratio);
            yoyList.add(yoyVO);
        });
        return yoyList;
    }

    /**
     * 获取能耗环比数据
     */
    @Override
    public List<DataAnalysisMoMVO> listWaterDataComparisonMoM(DataAnalysisMoMDTO dto) {
        List<DataAnalysisMoMVO> momList = new ArrayList<>();
        // 根据id查询点位信息
        List<ModelNodePointInfo> nodeIndexInforList = listModelNodeIndexIdRelationInfor(dto.getNodeId());
        if (CollectionUtils.isEmpty(nodeIndexInforList)) {
            return momList;
        }
        List<String> indexIds = nodeIndexInforList.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
        Date beginTime = dto.getBeginTime();
        Date endTime = dto.getEndTime();
        Date lastTime;
        Date lastEndTime;
        String queryTimeType = dto.getTimeType();
        // 小时
        if (TimeTypeConst.TIME_TYPE_HOUR.equals(queryTimeType)) {
            lastTime = DateUtil.offsetHour(beginTime, CommonConst.DIGIT_MINUS_1);
            lastEndTime = DateUtil.offsetHour(endTime, CommonConst.DIGIT_MINUS_1);
            // 天
        } else if (TimeTypeConst.TIME_TYPE_DAY.equals(queryTimeType)) {
            lastTime = DateUtil.offsetDay(beginTime, CommonConst.DIGIT_MINUS_1);
            lastEndTime = DateUtil.offsetDay(endTime, CommonConst.DIGIT_MINUS_1);
            // 月
        } else if (TimeTypeConst.TIME_TYPE_MONTH.equals(queryTimeType)) {
            lastTime = DateUtil.offsetMonth(beginTime, CommonConst.DIGIT_MINUS_1);
            lastEndTime = DateUtil.offsetMonth(endTime, CommonConst.DIGIT_MINUS_1);
            // 年
        } else {
            lastTime = DateUtil.offset(beginTime, DateField.YEAR, CommonConst.DIGIT_MINUS_1);
            lastEndTime = DateUtil.offset(endTime, DateField.YEAR, CommonConst.DIGIT_MINUS_1);
        }
        // 按照点位进行分组
        Map<String, List<ModelNodePointInfo>> nodeIndexMap = nodeIndexInforList.stream().collect(
                Collectors.groupingBy(ModelNodePointInfo::getNodeId));
        // 查询对应indexIds，找到对应dataItem信息
        List<EnergyUsed> energyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(beginTime, endTime, TimeType.HOUR.name(), indexIds);
        List<EnergyUsed> lastEnergyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(lastTime, lastEndTime, TimeType.HOUR.name(), indexIds);
        //  倍率
        BigDecimal multiple = BigDecimal.valueOf(CommonConst.DIGIT_100);
        nodeIndexMap.forEach((key, value) -> {
            DataAnalysisMoMVO momVO = new DataAnalysisMoMVO();
            Optional<ModelNodePointInfo> first = value.stream().findFirst();
            first.ifPresent(modelNodeIndexInfor -> momVO.setEnergyUnitName(modelNodeIndexInfor.getName()));
            // 赋值单位
            momVO.setUnit("m³");
            // 找出indexIds
            List<String> indexIdList = value.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
            // 求和
            BigDecimal sum = BigDecimal.valueOf(energyUsedList.stream().filter(li -> indexIdList.contains(li.getPointId()))
                    .mapToDouble(EnergyUsed::getValue).sum()).setScale(CommonConst.DIGIT_2, RoundingMode.HALF_UP);
            BigDecimal lastSum = BigDecimal.valueOf(lastEnergyUsedList.stream().filter(li -> indexIdList.contains(li.getPointId()))
                    .mapToDouble(EnergyUsed::getValue).sum()).setScale(CommonConst.DIGIT_2, RoundingMode.HALF_UP);
            momVO.setCurrentValue(sum);
            momVO.setOldValue(lastSum);
            //  同比值
            BigDecimal ratio = BigDecimal.ZERO;
            if (lastSum.compareTo(BigDecimal.ZERO) != 0) {
                ratio = sum.subtract(lastSum).divide(lastSum, CommonConst.DIGIT_2, RoundingMode.HALF_UP).multiply(multiple);
            }
            momVO.setRatio(ratio);
            momList.add(momVO);
        });
        return momList;
    }

    /**
     * 查询点位与用能单元信息
     */
    private List<ModelNodePointInfo> listModelNodeIndexIdRelationInfor(String nodeId) {
        List<ModelNodePointInfo> nodeInforList = modelNodeService.listModelNodeIndexIdRelationInforByParentId(nodeId);
        // 如果是空存在两种情况，1：id有问题，2：最底层
        if (CollectionUtils.isEmpty(nodeInforList)) {
            List<ModelNodePointInfo> inforList = modelNodeService.getModelNodeIndexIdRelationInforByNodeId(nodeId);
            if (CollectionUtils.isNotEmpty(inforList)) {
                nodeInforList.addAll(inforList);
            }
        }
        return nodeInforList;
    }

}