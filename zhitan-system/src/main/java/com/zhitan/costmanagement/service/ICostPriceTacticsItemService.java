package com.zhitan.costmanagement.service;

import java.util.List;
import com.zhitan.costmanagement.domain.CostPriceTacticsItem;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ZhiTan
 */
public interface ICostPriceTacticsItemService extends IService<CostPriceTacticsItem> {
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    CostPriceTacticsItem selectCostPriceTacticsItemById(String id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param costPriceTacticsItem 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    List<CostPriceTacticsItem> selectCostPriceTacticsItemList(CostPriceTacticsItem costPriceTacticsItem);

    /**
     * 新增【请填写功能名称】
     *
     * @param costPriceTacticsItem 【请填写功能名称】
     * @return 结果
     */
    int insertCostPriceTacticsItem(CostPriceTacticsItem costPriceTacticsItem);

    /**
     * 修改【请填写功能名称】
     *
     * @param costPriceTacticsItem 【请填写功能名称】
     * @return 结果
     */
    int updateCostPriceTacticsItem(CostPriceTacticsItem costPriceTacticsItem);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    int deleteCostPriceTacticsItemByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    int deleteCostPriceTacticsItemById(String id);
}
