package com.zhitan.energyMonitor.service;

import com.zhitan.energyMonitor.domain.vo.ElectricPowerFactorVO;
import com.zhitan.model.domain.MeterPoint;


public interface IElectricPowerFactorService {

    /**
     * 获取负荷分析数据
     */
    ElectricPowerFactorVO list(String timeCode, MeterPoint meterPoint);
}
