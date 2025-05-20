package com.zhitan.model.service;

import com.zhitan.model.domain.RuleFunction;

import java.util.List;

/**
 * 计算函数Service接口
 * 
 * @author zhitan
 */
public interface IRuleFunctionService
{
    /**
     * 查询计算函数
     * 
     * @param id 计算函数ID
     * @return 计算函数
     */
    RuleFunction selectFunctionById(String id);

    /**
     * 查询计算函数列表
     * 
     * @param ruleFunction 计算函数
     * @return 计算函数集合
     */
    List<RuleFunction> selectFunctionList(RuleFunction ruleFunction);

    /**
     * 新增计算函数
     * 
     * @param ruleFunction 计算函数
     * @return 结果
     */
    int insertFunction(RuleFunction ruleFunction);

    /**
     * 修改计算函数
     * 
     * @param ruleFunction 计算函数
     * @return 结果
     */
    int updateFunction(RuleFunction ruleFunction);

    /**
     * 批量删除计算函数
     * 
     * @param ids 需要删除的计算函数ID
     * @return 结果
     */
    int deleteFunctionByIds(String[] ids);

}
