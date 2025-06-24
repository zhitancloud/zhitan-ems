package com.zhitan.costmanagement.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.UUID;

import com.zhitan.common.utils.DateUtils;
import com.zhitan.common.utils.StringUtils;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import com.zhitan.costmanagement.mapper.InputElectricityCostMapper;
import com.zhitan.costmanagement.domain.InputElectricityCost;
import com.zhitan.costmanagement.service.IInputElectricityCostService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ZhiTan
 */
@Service
@AllArgsConstructor
public class InputElectricityCostServiceImpl extends ServiceImpl<InputElectricityCostMapper, InputElectricityCost> implements IInputElectricityCostService {
    private InputElectricityCostMapper inputElectricityCostMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public InputElectricityCost selectCostElectricityInputById(String id) {
        return inputElectricityCostMapper.selectCostElectricityInputById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param inputElectricityCost 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public Page<InputElectricityCost> selectCostElectricityInputList(InputElectricityCost inputElectricityCost, Long pageNum, Long pageSize) {
        LambdaQueryWrapper<InputElectricityCost> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotEmpty(inputElectricityCost.getTime()), InputElectricityCost::getTime, inputElectricityCost.getTime());
        queryWrapper.eq(StringUtils.isNotEmpty(inputElectricityCost.getType()), InputElectricityCost::getType, inputElectricityCost.getType());
        queryWrapper.orderByDesc(InputElectricityCost::getCreateTime);
        Page<InputElectricityCost> page = inputElectricityCostMapper.selectPage(new Page<>(pageNum,pageSize),queryWrapper);


        return page;
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param inputElectricityCost 【请填写功能名称】
     * @return 结果
     */
    @Override
    @Transactional
    public int insertCostElectricityInput(InputElectricityCost inputElectricityCost) throws Exception {
        inputElectricityCost.setCreateTime(DateUtils.getNowDate());
        inputElectricityCost.setId(UUID.randomUUID().toString());

        InputElectricityCost search = inputElectricityCostMapper.selectOne(new QueryWrapper<InputElectricityCost>().
                eq("type", inputElectricityCost.getType()).eq("time", inputElectricityCost.getTime()));
        if (search!=null){
            throw new Exception("该时间段已维护电量信息！");
        }
        return inputElectricityCostMapper.insertCostElectricityInput(inputElectricityCost);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param inputElectricityCost 【请填写功能名称】
     * @return 结果
     */
    @Override
    @Transactional
    public int updateCostElectricityInput(InputElectricityCost inputElectricityCost) throws Exception {
        inputElectricityCost.setUpdateTime(DateUtils.getNowDate());
        InputElectricityCost search = inputElectricityCostMapper.selectOne(new QueryWrapper<InputElectricityCost>().
                eq("type", inputElectricityCost.getType())
                .eq("time", inputElectricityCost.getTime())
                .ne("id",inputElectricityCost.getId()));
        if (search!=null){
            throw new Exception("该时间段已维护电量信息！");
        }
        return inputElectricityCostMapper.updateCostElectricityInput(inputElectricityCost);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteCostElectricityInputByIds(String[] ids) {
        return inputElectricityCostMapper.deleteCostElectricityInputByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteCostElectricityInputById(String id) {
        return inputElectricityCostMapper.deleteCostElectricityInputById(id);
    }
}
