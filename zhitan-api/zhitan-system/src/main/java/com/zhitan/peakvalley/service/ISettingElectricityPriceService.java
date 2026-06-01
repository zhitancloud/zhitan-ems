package com.zhitan.peakvalley.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zhitan.peakvalley.domain.SettingElectricityPrice;

import java.util.List;

/**
 * 【尖峰平谷电价明细】Service接口
 *
 * @author ZhiTan
 */
public interface ISettingElectricityPriceService extends IService<SettingElectricityPrice> {
    /**
     * 查询【尖峰平谷电价明细】
     *
     * @param id 【尖峰平谷电价明细】主键
     * @return 【尖峰平谷电价明细】
     */
    SettingElectricityPrice selectElectricityPriceById(String id);

    /**
     * 查询【尖峰平谷电价明细】列表
     *
     * @param settingElectricityPrice 【尖峰平谷电价明细】
     * @return 【尖峰平谷电价明细】集合
     */
    List<SettingElectricityPrice> selectElectricityPriceList(SettingElectricityPrice settingElectricityPrice);

    /**
     * 新增【尖峰平谷电价明细】
     *
     * @param settingElectricityPrice 【尖峰平谷电价明细】
     * @return 结果
     */
    int insertElectricityPrice(SettingElectricityPrice settingElectricityPrice);

    /**
     * 修改【尖峰平谷电价明细】
     *
     * @param settingElectricityPrice 【尖峰平谷电价明细】
     * @return 结果
     */
    int updateElectricityPrice(SettingElectricityPrice settingElectricityPrice);

    /**
     * 批量删除【尖峰平谷电价明细】
     *
     * @param ids 需要删除的【尖峰平谷电价明细】主键集合
     * @return 结果
     */
    int deleteElectricityPriceByIds(String[] ids);

    /**
     * 删除【尖峰平谷电价明细】信息
     *
     * @param id 【尖峰平谷电价明细】主键
     * @return 结果
     */
    int deleteElectricityPriceById(String id);

    void saveList(List<SettingElectricityPrice> settingElectricityPriceList);
}
