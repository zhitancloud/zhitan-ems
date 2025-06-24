package com.zhitan.keyequipment.service.impl;

import com.zhitan.basicdata.domain.Device;
import com.zhitan.keyequipment.domain.DailyKeyEquipment;
import com.zhitan.keyequipment.mapper.DailyKeyEquipmentMapper;
import com.zhitan.keyequipment.service.IDailyKeyEquipmentService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 *重点设备能耗统计 日
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class DailyKeyEquipmentServiceImpl implements IDailyKeyEquipmentService {
    private DailyKeyEquipmentMapper dailyKeyEquipmentMapper;

    /**
     *
     * @param indexIds
     * @param dataList
     * @param beginTime
     * @param endTime
     * @param timeType
     * @param indexStorageId
     * @return
     */
    @Override
    public List<DailyKeyEquipment> getdailyKeyEquipmentList(List<String> indexIds, List<DailyKeyEquipment> dataList, Date beginTime, Date endTime, String timeType, String indexStorageId){
        if (indexIds != null && !indexIds.isEmpty()) {
            return dailyKeyEquipmentMapper.getdailyKeyEquipmentList(indexIds, dataList, beginTime, endTime, timeType, indexStorageId);
        }
        return Collections.emptyList();
    }
    @Override
    public List<DailyKeyEquipment> getListChart(String indexId, Date beginTime, Date endTime, String timeType, String indexStorageId){
        if (indexId != null && !indexId.isEmpty()) {
            return dailyKeyEquipmentMapper.getListChart(indexId,beginTime,endTime,timeType,indexStorageId);
        }
        return Collections.emptyList();
    }
    @Override
    public List<Device> getFacilityArchives() {
        return dailyKeyEquipmentMapper.getFacilityArchives();
    }
    @Override
    public List<Device> getPointFacility() {
        return dailyKeyEquipmentMapper.getPointFacility();
    }
}
