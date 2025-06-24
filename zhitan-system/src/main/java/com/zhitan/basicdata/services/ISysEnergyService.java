package com.zhitan.basicdata.services;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.basicdata.domain.SysEnergy;
import com.zhitan.basicdata.domain.vo.EnergyTypeModel;

import java.util.List;

/**
 * energyService接口
 *
 * @author zhitan
 */
public interface ISysEnergyService {
    /**
     * 查询energy
     *
     * @param
     * @return energy
     */
    SysEnergy selectSysEnergyById(Integer enerid);

    /**
     * 查询energy列表
     *
     * @param sysEnergy energy
     * @return energy集合
     */
    List<SysEnergy> selectSysEnergyList(SysEnergy sysEnergy);

    /**
     * 新增energy
     *
     * @param sysEnergy energy
     * @return 结果
     */
    int insertSysEnergy(SysEnergy sysEnergy);

    /**
     * 修改energy
     *
     * @param sysEnergy energy
     * @return 结果
     */
    int updateSysEnergy(SysEnergy sysEnergy);

    /**
     * 批量删除energy
     *
     * @param
     * @return 结果
     */
    int deleteSysEnergyByIds(Integer[] enerids);

    /**
     * 删除energy信息
     *
     * @param
     * @return 结果
     */
    int deleteSysEnergyById(Integer enerid);

    /**
     * 查询能源类型id by enerclassname
     */
    Integer getEnerClassid(String enerclassname);

    /**
     * 查询一样的能源名称有几个 能源名称唯一校验
     */
    SysEnergy selectSameEnergyNameNum(String enername);

    /**
     * 修改的时候查询一样能源名称的id
     */
    Integer selectIdByName(String enername);

    /**
     * 查询所有能源类型信息
     *
     * @return 所有能源类型
     */
    List<EnergyTypeModel> listAllEnergyType();

    /**
     * 根据code查询能源信息
     *
     * @param code 编号
     * @return
     */
    EnergyTypeModel getEnergyTypeByCode(String code);

    Page<SysEnergy> selectSysEnergyPage(SysEnergy sysEnergy, Long pageNum, Long pageSize);

    SysEnergy selectSameEnergyCodeNum(String enersno);
}
