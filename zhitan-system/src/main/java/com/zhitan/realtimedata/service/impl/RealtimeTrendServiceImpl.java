package com.zhitan.realtimedata.service.impl;

import cn.hutool.core.date.DateUtil;
import com.zhitan.meter.domain.Meter;
import com.zhitan.common.core.domain.entity.SysDictData;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.service.IMeterPointService;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.realtimedata.domain.TagValue;
import com.zhitan.realtimedata.domain.dto.EnergyIndexMonitorDTO;
import com.zhitan.realtimedata.domain.vo.*;
import com.zhitan.realtimedata.service.RealtimeDatabaseService;
import com.zhitan.realtimedata.service.RealtimeTrendService;
import com.zhitan.system.service.ISysDictDataService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@Service
@AllArgsConstructor
public class RealtimeTrendServiceImpl implements RealtimeTrendService {

    private  IModelNodeService modelNodeService;
    private IMeterPointService energyIndexService;
    private RealtimeDatabaseService realtimeDatabaseService;
    private ISysDictDataService dictDataService;
    private IMeterPointService iMeterPointService;

    @Override
    public List<RealTimeDataVO> list(EnergyIndexMonitorDTO dto) {

        List<RealTimeDataVO> realTimeList = new ArrayList<>();
        if (StringUtils.isEmpty(dto.getNodeId())) {
            return realTimeList;
        }

        // 根据模型id查询计量器具信息
        String nodeId = dto.getNodeId();
        List<Meter> meterList = modelNodeService.getSettingDeviceIndex(nodeId,dto.getEnergyType());
        if (CollectionUtils.isEmpty(meterList)) {
            return realTimeList;
        }
        List<String> meterIds = meterList.stream().map(Meter::getId).collect(Collectors.toList());
        if(CollectionUtils.isEmpty(meterIds)){
            throw new RuntimeException("请先添加计量器具！");
        }
        List<MeterPoint> meterPointList = energyIndexService.listMeterPointByMeterIds(nodeId,meterIds);

        // 查询实时数据
        List<String> meterCodes = meterList.stream().map(Meter::getCode).collect(Collectors.toList());
        List<TagValue> tagValueList = realtimeDatabaseService.retrieve(meterCodes);

        Map<String, List<MeterPoint>> meterIndexMap = meterPointList.stream().collect(Collectors.groupingBy(
                MeterPoint::getMeterId));

        // 查询器具类型
        Map<String, String> typeMap = dictDataService.selectDictDataByType("sys_device_type")
                .stream().collect(Collectors.toMap(SysDictData::getDictValue, SysDictData::getDictLabel));

        typeMap.forEach((key, value) -> {
            RealTimeDataVO vo = new RealTimeDataVO();
            vo.setEnergyTypeName(value);
            List<SensorParamModel> sensorModelList = new ArrayList<>();
            meterList.stream().filter(li -> key.equals(li.getMeterType())).forEach(meter -> {
                SensorParamModel sensorModel = new SensorParamModel();
                sensorModel.setDeviceName(meter.getMeterName());
                sensorModel.setEnergyTypeName(value);
                sensorModel.setWireDiameter(meter.getWireDiameter());
                sensorModel.setMaxAllowablePower(meter.getMaxAllowablePower());
                List<RealTimeIndexModel> indexModelList = new ArrayList<>();
                List<MeterPoint> indexList = meterIndexMap.get(meter.getId());

                if (org.apache.commons.collections4.CollectionUtils.isNotEmpty(indexList)) {
                    List<String> indexCodeList = indexList.stream().map(MeterPoint::getCode).collect(Collectors.toList());
                    Map<String, String> tagValueMap = tagValueList.stream().filter(li -> indexCodeList.contains(li.getTagCode()))
                            .collect(Collectors.toMap(TagValue::getTagCode,o->o.getValue() + "@" + DateUtil.format(o.getDataTime(),"yyyy-MM-dd HH:mm:ss" )));
                    for (MeterPoint meterPoint : indexList) {
                        RealTimeIndexModel model = new RealTimeIndexModel();
                        String code = meterPoint.getCode();
                        model.setIndexCode(code);
                        model.setName(meterPoint.getName());
                        model.setUnit(meterPoint.getUnitId());
                        String tagValue = tagValueMap.get(code);
                      
                        if (StringUtils.isNotEmpty(tagValue)) {
                            final String[] split = tagValue.split("@");
                            model.setDataTime(split[1]);
                            model.setValue( new BigDecimal(split[0]).setScale(2,RoundingMode.HALF_UP));
                        }
                        indexModelList.add(model);
                    }
                }
                sensorModel.setEnergyIndexArray(indexModelList);
                sensorModelList.add(sensorModel);
            });
            vo.setDeviceArray(sensorModelList);
            realTimeList.add(vo);
        });
        return realTimeList;
    }

    @Override
    public List<RealTimeHistoryDataVO> chartByDay(String tagCode, String dataTime) {
        List<RealTimeHistoryDataVO> realTimeList = new ArrayList<>();
        Date begin = DateUtil.parseDateTime(dataTime);
        Date finish = DateUtil.offsetDay(begin, 1);
        long millis = finish.getTime() - begin.getTime();
        int pointCount = Integer.parseInt(String.valueOf(millis / (1000 * 60 * 15)));
        List<TagValue> tagValueList = realtimeDatabaseService.retrieve(tagCode,begin,finish,pointCount);
        if (org.apache.commons.collections4.CollectionUtils.isNotEmpty(tagValueList)) {
            for (TagValue tagValue : tagValueList) {
                RealTimeHistoryDataVO historyData = new RealTimeHistoryDataVO();
                historyData.setName(DateUtil.formatDateTime(tagValue.getDataTime()));
                historyData.setValue(BigDecimal.valueOf(tagValue.getValue()).setScale(2, RoundingMode.HALF_UP));
                realTimeList.add(historyData);
            }
        }
        return realTimeList;
    }

    @Override
    public List<EquipmentPointParametersExcel> export(ExportrealtimeTrendVO exportrealtimeTrendVO) {

        String tagCode = exportrealtimeTrendVO.getTagCode();
        List<EquipmentPointParametersExcel> excelList = new ArrayList<>();
        Date begin = DateUtil.parseDateTime(exportrealtimeTrendVO.getDataTime());
        Date finish = DateUtil.offsetDay(begin, 1);
        long millis = finish.getTime() - begin.getTime();
        int pointCount = Integer.parseInt(String.valueOf(millis / (1000 * 60 * 15)));
        List<TagValue> tagValueList = realtimeDatabaseService.retrieve(tagCode,begin,finish,pointCount);
        // 获取单位
        MeterPoint meterPoint = iMeterPointService.getMeterPointByCode(tagCode);
        tagValueList.forEach(li ->{
            EquipmentPointParametersExcel item = new EquipmentPointParametersExcel();
            item.setIndexName(li.getTagCode());
            item.setIndexUnit(meterPoint.getUnitId());
            item.setTimeString(DateUtil.formatDateTime(li.getDataTime()));
            item.setValue(li.getValue().toString());
            excelList.add(item);
        });
       return excelList;
    }
}
