package com.zhitan.powerDistribution.services.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhitan.meter.mapper.MeterImplementMapper;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.powerDistribution.domain.PowerDistribution;
import com.zhitan.powerDistribution.mapper.PowerDistributionMapper;
import com.zhitan.powerDistribution.services.IPowerDistributionService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
@Service
@AllArgsConstructor
public class PowerDistributionServiceImpl extends ServiceImpl<PowerDistributionMapper, PowerDistribution> implements IPowerDistributionService {

    @Override
    public List<PowerDistribution> selectPowerDistributionList(PowerDistribution powerDistribution) {
        LambdaQueryWrapper<PowerDistribution> queryWrapper = new LambdaQueryWrapper<>();
        if(StringUtils.isNotEmpty(powerDistribution.getCode())){
            queryWrapper.like(PowerDistribution::getCode, powerDistribution.getCode());
        }
        if (StringUtils.isNotEmpty(powerDistribution.getName())){
            queryWrapper.like(PowerDistribution::getName, powerDistribution.getName());
        }
        if (StringUtils.isNotEmpty(powerDistribution.getPrincipals())){
            queryWrapper.like(PowerDistribution::getPrincipals, powerDistribution.getPrincipals());
        }
        if (StringUtils.isNotEmpty(powerDistribution.getPrincipalsTel())){
            queryWrapper.like(PowerDistribution::getPrincipalsTel, powerDistribution.getPrincipalsTel());
        }
        return list(queryWrapper);
    }

    @Override
    public Page<PowerDistribution> pageList(PowerDistribution powerDistribution, Page<PowerDistribution> page) {
        LambdaQueryWrapper<PowerDistribution> queryWrapper = new LambdaQueryWrapper<>();
        if(StringUtils.isNotEmpty(powerDistribution.getCode())){
            queryWrapper.like(PowerDistribution::getCode, powerDistribution.getCode());
        }
        if (StringUtils.isNotEmpty(powerDistribution.getName())){
            queryWrapper.like(PowerDistribution::getName, powerDistribution.getName());
        }
        if (StringUtils.isNotEmpty(powerDistribution.getPrincipals())){
            queryWrapper.like(PowerDistribution::getPrincipals, powerDistribution.getPrincipals());
        }
        if (StringUtils.isNotEmpty(powerDistribution.getPrincipalsTel())){
            queryWrapper.like(PowerDistribution::getPrincipalsTel, powerDistribution.getPrincipalsTel());
        }
        return page(page, queryWrapper);
    }

    @Override
    public int deleteByIds(List<String> idList) {
        return baseMapper.deletePowerDistributionByIds(idList);
    }

}
