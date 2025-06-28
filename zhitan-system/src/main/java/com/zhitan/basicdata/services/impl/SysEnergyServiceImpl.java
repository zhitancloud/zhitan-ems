package com.zhitan.basicdata.services.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.basicdata.domain.SysEnergy;
import com.zhitan.basicdata.domain.vo.EnergyTypeModel;
import com.zhitan.basicdata.mapper.SysEnergyMapper;
import com.zhitan.basicdata.services.ISysEnergyService;
import com.zhitan.common.constant.UserConstants;
import com.zhitan.common.utils.SecurityUtils;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * energyService业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class SysEnergyServiceImpl implements ISysEnergyService {
    private SysEnergyMapper sysEnergyMapper;

    /**
     * 查询energy
     *
     * @return energy
     */
    @Override
    public SysEnergy selectSysEnergyById(Integer energyId) {
        return sysEnergyMapper.selectSysEnergyById(energyId);
    }

    /**
     * 查询energy列表
     *
     * @param sysEnergy energy
     * @return energy
     */
    @Override
    public List<SysEnergy> selectSysEnergyList(SysEnergy sysEnergy) {
        //放入  是否储存（字符串）
        List<SysEnergy> list = sysEnergyMapper.selectSysEnergyList(sysEnergy);
        for (SysEnergy energy : list) {
            if (UserConstants.YES.equals(energy.getIsstorage())) {
                energy.setIsstorageString("是");
            } else {
                energy.setIsstorageString("否");
            }
        }
        return list;
    }

    /**
     * 新增energy
     *
     * @param sysEnergy energy
     * @return 结果
     */
    @Override
    public int insertSysEnergy(SysEnergy sysEnergy) {
        //获取当前登录人
        String nowMan = SecurityUtils.getUsername();
        sysEnergy.setModMan(nowMan);
        sysEnergy.setOprMan(nowMan);
        sysEnergy.setIsstorage(sysEnergy.getIsstorageString());
        sysEnergy.setMuid(sysEnergy.getMuidString());
        return sysEnergyMapper.insertSysEnergy(sysEnergy);
    }

    /**
     * 修改energy
     *
     * @param sysEnergy energy
     * @return 结果
     */
    @Override
    public int updateSysEnergy(SysEnergy sysEnergy) {
        String nowMan = SecurityUtils.getUsername();
        sysEnergy.setModMan(nowMan);
        sysEnergy.setIsstorage(sysEnergy.getIsstorageString());
        sysEnergy.setMuid(sysEnergy.getMuidString());
        return sysEnergyMapper.updateSysEnergy(sysEnergy);
    }

    /**
     * 批量删除energy
     *
     * @return 结果
     */
    @Override
    public int deleteSysEnergyByIds(Integer[] energyIds) {
        return sysEnergyMapper.deleteSysEnergyByIds(energyIds);
    }

    /**
     * 删除energy信息
     *
     * @return 结果
     */
    @Override
    public int deleteSysEnergyById(Integer energyId) {
        return sysEnergyMapper.deleteSysEnergyById(energyId);
    }

    @Override
    public Integer getEnerClassid(String name) {
        return sysEnergyMapper.getEnerClassid(name);
    }

    /**
     * 查询一样的能源名称有几个 能源名称唯一校验
     */
    @Override
    public SysEnergy selectSameEnergyNameNum(String enername) {
        LambdaQueryWrapper<SysEnergy> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(SysEnergy::getEnername, enername);
        return sysEnergyMapper.selectOne(queryWrapper);
    }

    /**
     * 修改的时候查询一样能源名称的id
     */
    @Override
    public Integer selectIdByName(String energyName) {
        return sysEnergyMapper.selectIdByName(energyName);
    }

    /**
     * 查询所有能源类型信息
     *
     * @return 所有能源类型
     */
    @Override
    public List<EnergyTypeModel> listAllEnergyType() {
        return sysEnergyMapper.listAllEnergyType();
    }

    /**
     * 根据code查询能源信息
     *
     * @param code 编号
     */
    @Override
    public EnergyTypeModel getEnergyTypeByCode(String code) {
        Optional<EnergyTypeModel> first = sysEnergyMapper.listAllEnergyType().stream()
                .filter(li -> code.equals(li.getEnersno())).findFirst();
        return first.orElse(null);
    }

    @Override
    public Page<SysEnergy> selectSysEnergyPage(SysEnergy sysEnergy, Long pageNum, Long pageSize) {
        return sysEnergyMapper.selectSysEnergyPage(sysEnergy, new Page<>(pageNum, pageSize));
    }

    @Override
    public SysEnergy selectSameEnergyCodeNum(String enersno) {
        LambdaQueryWrapper<SysEnergy> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(SysEnergy::getEnersno, enersno);
        return sysEnergyMapper.selectOne(queryWrapper);
    }
}
