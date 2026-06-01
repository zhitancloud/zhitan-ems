package com.zhitan.model.service.impl;

import com.zhitan.model.domain.RuleFunction;
import com.zhitan.model.mapper.CalcFunctionMapper;
import com.zhitan.model.service.IRuleFunctionService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 计算函数Service业务层处理
 * 
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class RuleFunctionServiceImpl implements IRuleFunctionService
{
    private CalcFunctionMapper calcFunctionMapper;

    /**
     * 查询计算函数
     * 
     * @param id 计算函数ID
     * @return 计算函数
     */
    @Override
    public RuleFunction selectFunctionById(String id)
    {
        return calcFunctionMapper.selectCalcFunctionById(id);
    }

    /**
     * 查询计算函数列表
     * 
     * @param ruleFunction 计算函数
     * @return 计算函数
     */
    @Override
    public List<RuleFunction> selectFunctionList(RuleFunction ruleFunction)
    {
        return calcFunctionMapper.selectCalcFunctionList(ruleFunction);
    }

    /**
     * 新增计算函数
     * 
     * @param ruleFunction 计算函数
     * @return 结果
     */
    @Override
    public int insertFunction(RuleFunction ruleFunction)
    {
        return calcFunctionMapper.insertCalcFunction(ruleFunction);
    }

    /**
     * 修改计算函数
     * 
     * @param ruleFunction 计算函数
     * @return 结果
     */
    @Override
    public int updateFunction(RuleFunction ruleFunction)
    {
        return calcFunctionMapper.updateCalcFunction(ruleFunction);
    }

    /**
     * 批量删除计算函数
     * 
     * @param ids 需要删除的计算函数ID
     * @return 结果
     */
    @Override
    public int deleteFunctionByIds(String[] ids)
    {
        return calcFunctionMapper.deleteCalcFunctionByIds(ids);
    }

}
