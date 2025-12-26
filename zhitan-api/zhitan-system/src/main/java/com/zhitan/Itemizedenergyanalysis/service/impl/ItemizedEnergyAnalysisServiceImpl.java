package com.zhitan.Itemizedenergyanalysis.service.impl;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import com.zhitan.Itemizedenergyanalysis.domain.VO.ItemizedEnergyAnalysisItemVO;
import com.zhitan.Itemizedenergyanalysis.domain.VO.ItemizedEnergyAnalysisVO;
import com.zhitan.Itemizedenergyanalysis.dto.ItemizedEnergyAnalysisDTO;
import com.zhitan.Itemizedenergyanalysis.service.IItemizedEnergyAnalysisService;
import com.zhitan.common.constant.TimeTypeConst;
import com.zhitan.common.exception.ServiceException;
import com.zhitan.common.utils.DateTimeUtil;
import com.zhitan.common.utils.PropUtils;
import com.zhitan.common.utils.TypeTime;
import com.zhitan.energyUsed.service.IEnergyUsedService;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.mapper.ModelNodeMapper;
import com.zhitan.realtimedata.domain.EnergyUsed;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;
import java.util.stream.Collectors;


/**
 * 分项用能分析
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class ItemizedEnergyAnalysisServiceImpl implements IItemizedEnergyAnalysisService {

    private ModelNodeMapper modelNodeMapper;
    private final IEnergyUsedService dataItemService;

    /**
     * @param dto 请求参数
     * @return 结果
     */
    @Override
    public ItemizedEnergyAnalysisVO getItemizedEnergyAnalysisService(ItemizedEnergyAnalysisDTO dto) {

        String timeType = dto.getTimeType();
        String dataTime = dto.getDataTime();
        Date beginTime = DateTimeUtil.getTime(timeType, dataTime);
        DateTime endTime = null;

        // 获取节点信息
        List<ModelNodePointInfo> nodeIndexInfo = modelNodeMapper.getModelNodeIndexIdByNodeId(dto.getNodeId(), dto.getEnergyType());
        List<String> indexList = nodeIndexInfo.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());

        if (ObjectUtil.isEmpty(indexList)) {
            return new ItemizedEnergyAnalysisVO();
        }

        ModelNodePointInfo info = new ModelNodePointInfo();
        Optional<ModelNodePointInfo> first = nodeIndexInfo.stream().findFirst();
        if (first.isPresent()) {
            info = first.get();
        }

        List<TypeTime> dateTimeList;
        // 根据时间类型调整时间范围
        switch (dto.getTimeType()) {
            case TimeTypeConst.TIME_TYPE_DAY:
                timeType = TimeTypeConst.TIME_TYPE_HOUR;
                endTime = DateUtil.endOfDay(beginTime);
                dateTimeList = DateTimeUtil.getDateTimeListSame(TimeTypeConst.TIME_TYPE_DAY, beginTime);
                break;
            case TimeTypeConst.TIME_TYPE_MONTH:
                timeType = TimeTypeConst.TIME_TYPE_DAY;
                endTime = DateUtil.endOfMonth(beginTime);
                dateTimeList = DateTimeUtil.getDateTimeListSame(TimeTypeConst.TIME_TYPE_MONTH, beginTime);
                break;
            case TimeTypeConst.TIME_TYPE_YEAR:
                timeType = TimeTypeConst.TIME_TYPE_MONTH;
                endTime = DateUtil.endOfYear(beginTime);
                dateTimeList = DateTimeUtil.getDateTimeListSame(TimeTypeConst.TIME_TYPE_YEAR, beginTime);
                break;
            default:
                throw new ServiceException("时间格式错误");
        }
        // 获取最大值、最小值、合计、平均值
        ItemizedEnergyAnalysisVO vo = new ItemizedEnergyAnalysisVO();
        if (ObjectUtil.isEmpty(indexList)) {
            return vo;
        }
        // 获取数据项列表
        List<EnergyUsed> energyUsedList = dataItemService.listEnergyUsedTimeRangeInfoByPointIds(beginTime, endTime, timeType, indexList);

        double sum = energyUsedList.stream().mapToDouble(EnergyUsed::getValue).sum();
        double max = energyUsedList.stream().mapToDouble(EnergyUsed::getValue).max().orElse(0.0);
        double min = energyUsedList.stream().mapToDouble(EnergyUsed::getValue).min().orElse(0.0);
        double avg = energyUsedList.stream().mapToDouble(EnergyUsed::getValue).average().orElse(0.0);

        vo.setTotal(BigDecimal.valueOf(sum).setScale(2, RoundingMode.HALF_UP).toString());
        vo.setMax(BigDecimal.valueOf(max).setScale(2, RoundingMode.HALF_UP).toString());
        vo.setMin(BigDecimal.valueOf(min).setScale(2, RoundingMode.HALF_UP).toString());
        vo.setAvg(BigDecimal.valueOf(avg).setScale(2, RoundingMode.HALF_UP).toString());
        if (ObjectUtil.isNotEmpty(info.getUnitId())) {
            vo.setUnit(info.getUnitId());
        }

        List<ItemizedEnergyAnalysisItemVO> voList = new ArrayList<>();
        ItemizedEnergyAnalysisItemVO itemVO = new ItemizedEnergyAnalysisItemVO();
        itemVO.setNodeId(info.getNodeId());
        itemVO.setNodeName(info.getName());
        itemVO.setTotal(sum);

        Map<Date, List<EnergyUsed>> dateListMap = energyUsedList.stream().collect(Collectors.groupingBy(EnergyUsed::getDataTime));
        List<EnergyUsed> results = new ArrayList<>();
        dateListMap.forEach((key, value) -> {
            EnergyUsed energyUsed = new EnergyUsed();
            energyUsed.setDataTime(key);
            //保留四位小数
            double totalValue = value.stream().map(data -> BigDecimal.valueOf(data.getValue()))
                    .reduce(BigDecimal.ZERO, BigDecimal::add).setScale(4, RoundingMode.HALF_UP).doubleValue();
            energyUsed.setValue(totalValue);
            results.add(energyUsed);
        });
        //根据时间排序
        results.sort(Comparator.comparing(EnergyUsed::getDataTime));
        for (int i = 0; i < dateTimeList.size(); i++) {
            TypeTime typeTime = dateTimeList.get(i);
            Optional<EnergyUsed> dataItem = results.stream().filter(result -> result.getDataTime().equals(typeTime.getDateTime())).findFirst();
            if (dataItem.isPresent()) {
                EnergyUsed item = dataItem.get();
                PropUtils.setValue(itemVO, "value" + i, item.getValue());
            } else {
                PropUtils.setValue(itemVO, "value" + i, null);
            }
        }

        voList.add(itemVO);
        vo.setDataList(voList);

        return vo;
    }
}
