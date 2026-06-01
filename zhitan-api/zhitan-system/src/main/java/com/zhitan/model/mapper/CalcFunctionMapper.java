package com.zhitan.model.mapper;

import com.zhitan.model.domain.RuleFunction;

import java.util.List;

/**
 * 计算函数Mapper接口
 * 
 * @author zhitan
 */
public interface CalcFunctionMapper 
{
    /**
     * 查询计算函数
     * 
     * @param id 计算函数ID
     * @return 计算函数
     */
    RuleFunction selectCalcFunctionById(String id);

    /**
     * 查询计算函数列表
     * 
     * @param ruleFunction 计算函数
     * @return 计算函数集合
     */
    List<RuleFunction> selectCalcFunctionList(RuleFunction ruleFunction);

    /**
     * 新增计算函数
     * 
     * @param ruleFunction 计算函数
     * @return 结果
     */
    int insertCalcFunction(RuleFunction ruleFunction);

    /**
     * 修改计算函数
     * 
     * @param ruleFunction 计算函数
     * @return 结果
     */
    int updateCalcFunction(RuleFunction ruleFunction);

    /**
     * 删除计算函数
     * 
     * @param id 计算函数ID
     * @return 结果
     */
    int deleteCalcFunctionById(String id);

    /**
     * 批量删除计算函数
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int deleteCalcFunctionByIds(String[] ids);
}
