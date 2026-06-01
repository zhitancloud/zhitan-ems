package com.zhitan.peakvalley.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zhitan.peakvalley.domain.SettingElectricityPriceDate;

import java.util.List;

/**
 * 尖峰平谷电价时间段Service接口
 *
 * @author ZhiTan
 */
public interface ISettingElectricityPriceDateService extends IService<SettingElectricityPriceDate> {
    /**
     * 查询尖峰平谷电价时间段
     *
     * @param id 尖峰平谷电价时间段主键
     * @return 尖峰平谷电价时间段
     */
    SettingElectricityPriceDate selectElectricityPriceDateById(String id);

    /**
     * 查询尖峰平谷电价时间段列表
     *
     * @param settingElectricityPriceDate 尖峰平谷电价时间段
     * @return 尖峰平谷电价时间段集合
     */
    List<SettingElectricityPriceDate> selectElectricityPriceDateList(SettingElectricityPriceDate settingElectricityPriceDate);

    /**
     * 新增尖峰平谷电价时间段
     *
     * @param settingElectricityPriceDate 尖峰平谷电价时间段
     * @return 结果
     */
    int insertElectricityPriceDate(SettingElectricityPriceDate settingElectricityPriceDate);

    /**
     * 修改尖峰平谷电价时间段
     *
     * @param settingElectricityPriceDate 尖峰平谷电价时间段
     * @return 结果
     */
    int updateElectricityPriceDate(SettingElectricityPriceDate settingElectricityPriceDate);

    /**
     * 批量删除尖峰平谷电价时间段
     *
     * @param ids 需要删除的尖峰平谷电价时间段主键集合
     * @return 结果
     */
    public int deleteElectricityPriceDateByIds(String[] ids);

    /**
     * 删除尖峰平谷电价时间段信息
     *
     * @param id 尖峰平谷电价时间段主键
     * @return 结果
     */
    public int deleteElectricityPriceDateById(String id);

    Page<SettingElectricityPriceDate> selectElectricityPriceDatePage(SettingElectricityPriceDate settingElectricityPriceDate, Long pageNum, Long pageSize);

}
