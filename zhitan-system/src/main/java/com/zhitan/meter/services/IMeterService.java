package com.zhitan.meter.services;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.meter.domain.Meter;
import com.zhitan.meter.domain.MeterImplementExcel;
import com.zhitan.common.core.domain.model.LoginUser;

import java.util.List;

/**
 * 计量器具档案维护Service接口
 * 
 * @author zhitan
 */
public interface IMeterService
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
     * 导出计量器具档案维护列表
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
     * 批量删除计量器具档案维护
     * 
     * @param ids 需要删除的计量器具档案维护ID
     * @return 结果
     */
    int deleteMeterImplementByIds(String[] ids);

    /**
     * 删除计量器具档案维护信息
     * 
     * @param id 计量器具档案维护ID
     * @return 结果
     */
    int deleteMeterImplementById(String id);

    /**
     * Excel导入 计量器具档案维护信息
     *
     * @param meterList 要导入的计量器具档案集合
     * @param loginUser          登录用户对象
     * @return 结果
     */
    String excelImpSave(List<Meter> meterList, LoginUser loginUser);

    /**
     * 根据id集合查询计量器具信息
     *
     * @param meterIdList
     * @return
     */
    List<Meter> listMeterImplementByIds(List<String> meterIdList);

    Page<Meter> selectMeterImplementPage(Meter meter, Long pageNum, Long pageSize);

    List<Meter> listMeterImplByInstallLocation(String id);
}
