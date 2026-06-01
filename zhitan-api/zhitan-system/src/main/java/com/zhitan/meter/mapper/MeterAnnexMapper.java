package com.zhitan.meter.mapper;


import com.zhitan.meter.domain.MeterAnnex;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 计量器具档案附件Mapper接口
 *
 * @author zhitan
 */
@Mapper
public interface MeterAnnexMapper {

    /**
     * 查询计量器具档案附件列表
     *
     * @param meterAnnex 计量器具档案附件
     * @return 计量器具档案附件集合
     */
    List<MeterAnnex> selectMeterAnnexList(MeterAnnex meterAnnex);

}
