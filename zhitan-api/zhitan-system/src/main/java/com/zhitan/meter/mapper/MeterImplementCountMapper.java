package com.zhitan.meter.mapper;


import com.zhitan.meter.domain.MeterImplementCount;

import java.util.List;

/**
 * 计量器具统计查询Mapper接口
 * 
 * @author zhitan
 */
public interface MeterImplementCountMapper 
{
    /**
     * 查询计量器具统计查询
     * 
     * @param code 计量器具统计查询ID
     * @return 计量器具统计查询
     */
    MeterImplementCount selectMeterImplementCountById(String code);

    /**
     * 查询计量器具统计查询列表
     * 
     * @param meterImplementCount 计量器具统计查询
     * @return 计量器具统计查询集合
     */
    List<MeterImplementCount> selectMeterImplementCountList(MeterImplementCount meterImplementCount);

    /**
     * 新增计量器具统计查询
     * 
     * @param meterImplementCount 计量器具统计查询
     * @return 结果
     */
    int insertMeterImplementCount(MeterImplementCount meterImplementCount);

    /**
     * 修改计量器具统计查询
     * 
     * @param meterImplementCount 计量器具统计查询
     * @return 结果
     */
    int updateMeterImplementCount(MeterImplementCount meterImplementCount);

    /**
     * 删除计量器具统计查询
     * 
     * @param code 计量器具统计查询ID
     * @return 结果
     */
    int deleteMeterImplementCountById(String code);

    /**
     * 批量删除计量器具统计查询
     * 
     * @param codes 需要删除的数据ID
     * @return 结果
     */
    int deleteMeterImplementCountByIds(String[] codes);
}
