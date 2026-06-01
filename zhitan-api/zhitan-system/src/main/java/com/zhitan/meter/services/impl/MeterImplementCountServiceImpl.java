package com.zhitan.meter.services.impl;

import com.zhitan.meter.domain.MeterImplementCount;
import com.zhitan.meter.mapper.MeterImplementCountMapper;
import com.zhitan.meter.services.IMeterImplementCountService;
import com.zhitan.common.utils.DateUtils;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 计量器具统计查询Service业务层处理
 * 
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class MeterImplementCountServiceImpl implements IMeterImplementCountService 
{
    private MeterImplementCountMapper meterImplementCountMapper;

    /**
     * 查询计量器具统计查询
     * 
     * @param code 计量器具统计查询ID
     * @return 计量器具统计查询
     */
    @Override
    public MeterImplementCount selectMeterImplementCountById(String code)
    {
        return meterImplementCountMapper.selectMeterImplementCountById(code);
    }

    /**
     * 查询计量器具统计查询列表
     * 
     * @param meterImplementCount 计量器具统计查询
     * @return 计量器具统计查询
     */
    @Override
    public List<MeterImplementCount> selectMeterImplementCountList(MeterImplementCount meterImplementCount)
    {
        return meterImplementCountMapper.selectMeterImplementCountList(meterImplementCount);
    }

    /**
     * 新增计量器具统计查询
     * 
     * @param meterImplementCount 计量器具统计查询
     * @return 结果
     */
    @Override
    public int insertMeterImplementCount(MeterImplementCount meterImplementCount)
    {
        meterImplementCount.setCreateTime(DateUtils.getNowDate());
        return meterImplementCountMapper.insertMeterImplementCount(meterImplementCount);
    }

    /**
     * 修改计量器具统计查询
     * 
     * @param meterImplementCount 计量器具统计查询
     * @return 结果
     */
    @Override
    public int updateMeterImplementCount(MeterImplementCount meterImplementCount)
    {
        meterImplementCount.setUpdateTime(DateUtils.getNowDate());
        return meterImplementCountMapper.updateMeterImplementCount(meterImplementCount);
    }

    /**
     * 批量删除计量器具统计查询
     * 
     * @param codes 需要删除的计量器具统计查询ID
     * @return 结果
     */
    @Override
    public int deleteMeterImplementCountByIds(String[] codes)
    {
        return meterImplementCountMapper.deleteMeterImplementCountByIds(codes);
    }

}
