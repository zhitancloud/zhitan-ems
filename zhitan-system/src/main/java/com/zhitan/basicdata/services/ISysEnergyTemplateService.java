package com.zhitan.basicdata.services;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.basicdata.domain.SysEnergyTemplate;

import java.util.List;

/**
 * 能源品种设置Service接口
 *
 * @author zhitan
 */
public interface ISysEnergyTemplateService
{
    /**
     * 查询能源品种设置
     *
     * @param energyTypeId 能源品种设置ID
     * @return 能源品种设置
     */
    SysEnergyTemplate selectSysEnerclassById(Integer energyTypeId);

    /**
     * 查询能源品种设置列表
     *
     * @param sysEnergyTemplate 能源品种设置
     * @return 能源品种设置集合
     */
    List<SysEnergyTemplate> selectSysEnerclassList(SysEnergyTemplate sysEnergyTemplate);

    /**
     * 新增能源品种设置
     *
     * @param sysEnergyTemplate 能源品种设置
     * @return 结果
     */
    int insertSysEnerclass(SysEnergyTemplate sysEnergyTemplate);

    /**
     * 修改能源品种设置
     *
     * @param sysEnergyTemplate 能源品种设置
     * @return 结果
     */
    int updateSysEnerclass(SysEnergyTemplate sysEnergyTemplate);

    /**
     * 批量删除能源品种设置
     *
     * @param energyTypeIds 需要删除的能源品种设置ID
     * @return 结果
     */
    int deleteSysEnerclassByIds(Integer[] energyTypeIds);

    /**
     * 删除能源品种设置信息
     *
     * @param energyTypeId 能源品种设置ID
     * @return 结果
     */
    int deleteSysEnerclassById(Integer energyTypeId);
    /**
     * 查询一样的能源名称有几个 能源名称唯一校验
     */
    int selectSameEnergyNameNum(String name);
    /**
     * 修改的时候查询一样能源名称的id
     */
    Integer selectIdByName(String name);

    Page<SysEnergyTemplate> selectSysEnerclassPage(SysEnergyTemplate sysEnergyTemplate, Long pageNum, Long pageSize);
}
