package com.zhitan.meter.services;


import com.zhitan.meter.domain.MeterAnnex;

import java.util.List;

/**
 * 计量器具档案附件Service接口
 *
 * @author zhitan
 */
public interface IMeterAnnexService {

    /**
     * 查询计量器具档案附件列表
     *
     * @param meterAnnex 计量器具档案附件
     * @return 计量器具档案附件集合
     */
    List<MeterAnnex> selectMeterAnnexList(MeterAnnex meterAnnex);

}
