package com.zhitan.energyMonitor.service;

import com.zhitan.energyMonitor.domain.vo.ListElectricLoadVO;
import com.zhitan.energyMonitor.domain.vo.ListElectricityMeterVO;
import com.zhitan.model.domain.MeterPoint;

import java.util.List;

public interface IElectricLoadService {

    /**
     * 获取负荷分析数据
     */
    ListElectricLoadVO list(String timeType, String timeCode, MeterPoint meterPoint, String meterId);

    /**
     * 获取节点下所有电表
     * @param nodeId
     * @return
     */
    List<ListElectricityMeterVO> listElectricMeter(String nodeId);
}
