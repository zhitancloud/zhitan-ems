package com.zhitan.peakvalley.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.peakvalley.domain.SettingElectricityPriceDate;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 尖峰平谷电价时间段Mapper接口
 *
 * @author ZhiTan
 */
@Mapper
public interface SettingElectricityPriceDateMapper extends BaseMapper<SettingElectricityPriceDate> {
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
     * 删除尖峰平谷电价时间段
     *
     * @param id 尖峰平谷电价时间段主键
     * @return 结果
     */
    int deleteElectricityPriceDateById(String id);

    /**
     * 批量删除尖峰平谷电价时间段
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteElectricityPriceDateByIds(String[] ids);


    /**
     * 单价策略列表查询（不分页）
     *
     */
    List<SettingElectricityPriceDate> selectElectricityPriceDatePageTacticsAll();
}
