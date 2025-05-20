package com.zhitan.costmanagement.service;

import java.util.List;
import com.zhitan.costmanagement.domain.CostPriceTactics;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zhitan.costmanagement.domain.vo.CostPriceTacticsVo;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

/**
 * 成本策略Service接口
 *
 * @author ZhiTan
 */
public interface ICostPriceTacticsService extends IService<CostPriceTactics> {
    /**
     * 查询成本策略
     *
     * @param id 成本策略主键
     * @return 成本策略
     */
    CostPriceTactics selectCostPriceTacticsById(String id);

    /**
     * 查询成本策略列表
     *
     * @param costPriceTactics 成本策略
     * @return 成本策略集合
     */
    Page<CostPriceTacticsVo> selectCostPriceTacticsList(CostPriceTactics costPriceTactics, Long pageNum, Long pageSize);

    /**
     * 查询所有单价策略列表
     *

     * @return 成本策略集合
     */
    List<CostPriceTacticsVo> selectCostPriceTacticsListAll();

    /**
     * 新增成本策略
     *
     * @param costPriceTacticsVo 成本策略
     * @return 结果
     */
    int insertCostPriceTactics(CostPriceTacticsVo costPriceTacticsVo) throws Exception;

    /**
     * 修改成本策略
     *
     * @param costPriceTacticsVo 成本策略
     * @return 结果
     */
    int updateCostPriceTactics(CostPriceTacticsVo costPriceTacticsVo);

    /**
     * 批量删除成本策略
     *
     * @param ids 需要删除的成本策略主键集合
     * @return 结果
     */
    int deleteCostPriceTacticsByIds(String[] ids);

    /**
     * 删除成本策略信息
     *
     * @param id 成本策略主键
     * @return 结果
     */
    int deleteCostPriceTacticsById(String id);
}
