package com.zhitan.costmanagement.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.costmanagement.domain.CostPriceRelevancy;
import com.zhitan.costmanagement.domain.vo.CostPriceRelevancyVo;
import org.apache.ibatis.annotations.Param;

/**
 * 单价关联Mapper接口
 *
 * @author ZhiTan
 */
public interface CostPriceRelevancyMapper extends BaseMapper<CostPriceRelevancy> {
    /**
     * 查询单价关联
     *
     * @param id 单价关联主键
     * @return 单价关联
     */
    CostPriceRelevancy selectCostPriceRelevancyById(String id);

    /**
     * 查询单价关联列表
     *
     * @param costPriceRelevancy 单价关联
     * @return 单价关联集合
     */
    List<CostPriceRelevancy> selectCostPriceRelevancyList(CostPriceRelevancy costPriceRelevancy);

    /**
     * 新增单价关联
     *
     * @param costPriceRelevancy 单价关联
     * @return 结果
     */
    int insertCostPriceRelevancy(CostPriceRelevancy costPriceRelevancy);

    /**
     * 修改单价关联
     *
     * @param costPriceRelevancy 单价关联
     * @return 结果
     */
    int updateCostPriceRelevancy(CostPriceRelevancy costPriceRelevancy);

    /**
     * 删除单价关联
     *
     * @param id 单价关联主键
     * @return 结果
     */
    int deleteCostPriceRelevancyById(String id);

    /**
     * 批量删除单价关联
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteCostPriceRelevancyByIds(String[] ids);



    /**
     * 查询范围内唯一的单价策略关联信息
     *

     */
    CostPriceRelevancyVo selectCostPriceRelevancyByNodeId(@Param("nodeId") String nodeId,
                                                                 @Param("elType")String elType);


}
