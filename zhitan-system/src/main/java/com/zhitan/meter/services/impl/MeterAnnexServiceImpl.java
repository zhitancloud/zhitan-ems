package com.zhitan.meter.services.impl;

import com.zhitan.meter.domain.MeterAnnex;
import com.zhitan.meter.mapper.MeterAnnexMapper;
import com.zhitan.meter.services.IMeterAnnexService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 计量器具档案附件Service业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class MeterAnnexServiceImpl implements IMeterAnnexService {
    private MeterAnnexMapper meterAnnexMapper;

    /**
     * 查询计量器具档案附件列表
     *
     * @param meterAnnex 计量器具档案附件
     * @return 计量器具档案附件
     */
    @Override
    public List<MeterAnnex> selectMeterAnnexList(MeterAnnex meterAnnex) {
        return meterAnnexMapper.selectMeterAnnexList(meterAnnex);
    }
}
