package com.zhitan.meter.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.meter.domain.Meter;
import com.zhitan.meter.domain.MeterImplementExcel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 计量器具档案维护Mapper接口
 * 
 * @author zhitan
 */
public interface MeterImplementMapper extends BaseMapper<Meter>
{
    /**
     * 查询计量器具档案维护
     * 
     * @param id 计量器具档案维护ID
     * @return 计量器具档案维护
     */
    Meter selectMeterImplementById(String id);
    /**
     * 查询计量器具档案维护
     *
     * @param meter 计量器具档案维护编号
     * @return 计量器具档案维护
     */
    Meter selectMeterImplementByCode(Meter meter);

    /**
     * 查询计量器具档案维护列表
     * 
     * @param meter 计量器具档案维护
     * @return 计量器具档案维护集合
     */
    List<Meter> selectMeterImplementList(Meter meter);
    /**
     * 查询计量器具档案维护导出列表，其中字典字段在SQL中进行翻译
     *
     * @param meter 计量器具档案维护
     * @return 计量器具档案维护集合
     */
    List<MeterImplementExcel> exectMeterImplementList(Meter meter);

    /**
     * 新增计量器具档案维护
     * 
     * @param meter 计量器具档案维护
     * @return 结果
     */
    int insertMeterImplement(Meter meter);

    /**
     * 修改计量器具档案维护
     * 
     * @param meter 计量器具档案维护
     * @return 结果
     */
    int updateMeterImplement(Meter meter);

    /**
     * 删除计量器具档案维护
     * 
     * @param id 计量器具档案维护ID
     * @return 结果
     */
    int deleteMeterImplementById(String id);

    /**
     * 批量删除计量器具档案维护
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int deleteMeterImplementByIds(String[] ids);

    /**
     * 根据id集合查询计量器具信息
     *
     * @param meterIdList   计量器具id
     * @return
     */
    List<Meter> listMeterImplementByIds(@Param("meterIdList") List<String> meterIdList);

    Meter selectByNodeIdIndexId(@Param("nodeId") String nodeId, @Param("indexId") String indexId);

    List<Meter> listMeterImplByInstallLocation(@Param("installactionLocation") String installactionLocation);

    /**
     * 根据节点id查询计量器具信息
     *
     * @param nodeId
     * @return
     */
    List<Meter> selectByNodeId(@Param("nodeId") String nodeId);
}
