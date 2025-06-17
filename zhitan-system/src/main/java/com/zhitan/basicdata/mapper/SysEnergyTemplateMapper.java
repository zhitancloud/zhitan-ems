package com.zhitan.basicdata.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.basicdata.domain.SysEnergyTemplate;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 能源品种设置Mapper接口
 *
 * @author zhitan
 */
public interface SysEnergyTemplateMapper extends BaseMapper<SysEnergyTemplate>
{
    /**
     * 查询能源品种设置
     *
     * @param energyTypeId 能源品种设置ID
     * @return 能源品种设置
     */
    SysEnergyTemplate selectSysEnerclassById(@Param("id") Integer energyTypeId);

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
     * 删除能源品种设置
     *
     * @param energyTypeId 能源品种设置ID
     * @return 结果
     */
    int deleteSysEnerclassById(@Param("id") Integer energyTypeId);

    /**
     * 批量删除能源品种设置
     *
     * @param energyTypeIds 需要删除的数据ID
     * @return 结果
     */
    int deleteSysEnerclassByIds(@Param("ids") Integer[] energyTypeIds);
    /**
     * 查询一样的能源名称有几个 能源名称唯一校验
     */
    int selectSameEnergyNameNum(@Param("name") String name);
    /**
     * 修改的时候查询一样能源名称的id
     */
    Integer selectIdByName(@Param("name") String name);
}
