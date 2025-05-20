package com.zhitan.peakvalley.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.peakvalley.domain.SettingElectricityPrice;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 【尖峰平谷电价明细】Mapper接口
 *
 * @author ZhiTan
 */
@Mapper
public interface SettingElectricityPriceMapper extends BaseMapper<SettingElectricityPrice> {
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
     * 删除【尖峰平谷电价明细】
     *
     * @param id 【尖峰平谷电价明细】主键
     * @return 结果
     */
    int deleteElectricityPriceById(String id);

    /**
     * 批量删除【尖峰平谷电价明细】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteElectricityPriceByIds(String[] ids);

}
