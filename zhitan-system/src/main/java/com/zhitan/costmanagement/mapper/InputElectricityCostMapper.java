package com.zhitan.costmanagement.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.costmanagement.domain.InputElectricityCost;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author ZhiTan
 */
public interface InputElectricityCostMapper extends BaseMapper<InputElectricityCost> {
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    InputElectricityCost selectCostElectricityInputById(String id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param inputElectricityCost 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    List<InputElectricityCost> selectCostElectricityInputList(InputElectricityCost inputElectricityCost);

    /**
     * 新增【请填写功能名称】
     *
     * @param inputElectricityCost 【请填写功能名称】
     * @return 结果
     */
    int insertCostElectricityInput(InputElectricityCost inputElectricityCost);

    /**
     * 修改【请填写功能名称】
     *
     * @param inputElectricityCost 【请填写功能名称】
     * @return 结果
     */
    int updateCostElectricityInput(InputElectricityCost inputElectricityCost);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    int deleteCostElectricityInputById(String id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteCostElectricityInputByIds(String[] ids);
}
