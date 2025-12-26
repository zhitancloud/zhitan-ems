package com.zhitan.costmanagement.service;

import com.zhitan.costmanagement.domain.InputElectricityCost;
import com.baomidou.mybatisplus.extension.service.IService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
/**
 * 【请填写功能名称】Service接口
 *
 * @author ZhiTan
 */
public interface IInputElectricityCostService extends IService<InputElectricityCost> {
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
    Page<InputElectricityCost> selectCostElectricityInputList(InputElectricityCost inputElectricityCost, Long pageNum, Long pageSize);

    /**
     * 新增【请填写功能名称】
     *
     * @param inputElectricityCost 【请填写功能名称】
     * @return 结果
     */
    int insertCostElectricityInput(InputElectricityCost inputElectricityCost) throws Exception;

    /**
     * 修改【请填写功能名称】
     *
     * @param inputElectricityCost 【请填写功能名称】
     * @return 结果
     */
    int updateCostElectricityInput(InputElectricityCost inputElectricityCost) throws Exception;

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    int deleteCostElectricityInputByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    int deleteCostElectricityInputById(String id);
}
