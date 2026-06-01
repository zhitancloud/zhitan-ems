package com.zhitan.basicdata.services.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.basicdata.domain.SysEnergyTemplate;
import com.zhitan.basicdata.mapper.SysEnergyTemplateMapper;
import com.zhitan.basicdata.services.ISysEnergyTemplateService;
import com.zhitan.common.utils.SecurityUtils;
import com.zhitan.common.utils.StringUtils;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 能源品种设置Service业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class SysEnergyTemplateServiceImpl implements ISysEnergyTemplateService
{
    private SysEnergyTemplateMapper sysEnergyTemplateMapper;

    /**
     * 查询能源品种设置
     *
     * @param energyTypeId 能源品种设置ID
     * @return 能源品种设置
     */
    @Override
    public SysEnergyTemplate selectSysEnerclassById(Integer energyTypeId)
    {
        return sysEnergyTemplateMapper.selectSysEnerclassById(energyTypeId);
    }

    /**
     * 查询能源品种设置列表
     *
     * @param sysEnergyTemplate 能源品种设置
     * @return 能源品种设置
     */
    @Override
    public List<SysEnergyTemplate> selectSysEnerclassList(SysEnergyTemplate sysEnergyTemplate)
    {
        return sysEnergyTemplateMapper.selectSysEnerclassList(sysEnergyTemplate);
    }

    /**
     * 新增能源品种设置
     *
     * @param sysEnergyTemplate 能源品种设置
     * @return 结果
     */
    @Override
    public int insertSysEnerclass(SysEnergyTemplate sysEnergyTemplate) {
        //获取当前登录人
        String nowMan = SecurityUtils.getUsername();
        sysEnergyTemplate.setCreateBy(nowMan);
        sysEnergyTemplate.setUpdateBy(nowMan);
        return sysEnergyTemplateMapper.insertSysEnerclass(sysEnergyTemplate);
    }

    /**
     * 修改能源品种设置
     *
     * @param sysEnergyTemplate 能源品种设置
     * @return 结果
     */
    @Override
    public int updateSysEnerclass(SysEnergyTemplate sysEnergyTemplate) {
        String nowMan = SecurityUtils.getUsername();
        sysEnergyTemplate.setUpdateBy(nowMan);
        return sysEnergyTemplateMapper.updateSysEnerclass(sysEnergyTemplate);
    }

    /**
     * 批量删除能源品种设置
     *
     * @param energyTypeIds 需要删除的能源品种设置ID
     * @return 结果
     */
    @Override
    public int deleteSysEnerclassByIds(Integer[] energyTypeIds)
    {
        return sysEnergyTemplateMapper.deleteSysEnerclassByIds(energyTypeIds);
    }

    /**
     * 删除能源品种设置信息
     *
     * @param energyTypeId 能源品种设置ID
     * @return 结果
     */
    @Override
    public int deleteSysEnerclassById(Integer energyTypeId)
    {
        return sysEnergyTemplateMapper.deleteSysEnerclassById(energyTypeId);
    }
    /**
     * 查询一样的能源名称有几个 能源名称唯一校验
     */
    @Override
    public int selectSameEnergyNameNum(String name) {
        return sysEnergyTemplateMapper.selectSameEnergyNameNum(name);
    }
    /**
     * 修改的时候查询一样能源名称的id
     */
    @Override
    public Integer selectIdByName(String name) {
        return sysEnergyTemplateMapper.selectIdByName(name);
    }

    @Override
    public Page<SysEnergyTemplate> selectSysEnerclassPage(SysEnergyTemplate sysEnergyTemplate, Long pageNum, Long pageSize) {
        LambdaQueryWrapper<SysEnergyTemplate> queryWrapper = new LambdaQueryWrapper<SysEnergyTemplate>();
        queryWrapper.like(StringUtils.isNotEmpty(sysEnergyTemplate.getName()), SysEnergyTemplate::getName, sysEnergyTemplate.getName());
        queryWrapper.orderByDesc(SysEnergyTemplate::getCreateTime);
        return sysEnergyTemplateMapper.selectPage(new Page<>(pageNum,pageSize),queryWrapper);
    }
}
