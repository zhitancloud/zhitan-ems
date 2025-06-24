package com.zhitan.alarm.services.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.alarm.domain.AlarmLimitType;
import com.zhitan.alarm.mapper.AlarmLimitTypeMapper;
import com.zhitan.alarm.services.IAlarmLimitTypeService;
import com.zhitan.common.utils.DateUtils;
import com.zhitan.common.utils.StringUtils;
import lombok.AllArgsConstructor;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;


@Service
@AllArgsConstructor
public class AlarmLimitTypeServiceImpl implements IAlarmLimitTypeService {

    private AlarmLimitTypeMapper alarmLimitTypeMapper;

    @Override
    public int insertAlarmLimitType(AlarmLimitType alarmLimitType) {
        alarmLimitType.setId(UUID.randomUUID().toString());
        alarmLimitType.setCreateTime(DateUtils.getNowDate());
        LambdaQueryWrapper<AlarmLimitType> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(AlarmLimitType::getLimitCode,alarmLimitType.getLimitCode());
        final Long aLong = alarmLimitTypeMapper.selectCount(queryWrapper);
        if(aLong>0){
            throw new RuntimeException("限制值类型编号不能重复");
        }
        return alarmLimitTypeMapper.insertLimitType(alarmLimitType);
    }

    @Override
    public List<AlarmLimitType> selectAlarmLimitTypeList(AlarmLimitType alarmLimitType) {
        return alarmLimitTypeMapper.selectLimitTypeList(alarmLimitType);
    }

    @Override
    public int updateAlarmLimitType(AlarmLimitType alarmLimitType) {
        alarmLimitType.setUpdateTime(DateUtils.getNowDate());
        LambdaQueryWrapper<AlarmLimitType> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(AlarmLimitType::getLimitCode,alarmLimitType.getLimitCode());
        final List<AlarmLimitType> alarmAlarmLimitTypes = alarmLimitTypeMapper.selectList(queryWrapper);
        if(CollectionUtils.isNotEmpty(alarmAlarmLimitTypes)){
            final String id = alarmAlarmLimitTypes.get(0).getId();
            if(!id.equals(alarmLimitType.getId())) {
                throw new RuntimeException("限制值类型编号不能重复");
            }
        }
        return alarmLimitTypeMapper.updateLimitType(alarmLimitType);
    }

    @Override
    public int deleteLimitTypeByIds(String[] ids) {
        return alarmLimitTypeMapper.deleteLimitTypeByIds(ids);
    }

    @Override
    public AlarmLimitType selectAlarmLimitTypeById(String id) {
        return alarmLimitTypeMapper.selectLimitTypeById(id);
    }

    @Override
    public Page<AlarmLimitType> selectAlarmLimitTypePage(AlarmLimitType alarmLimitType, Long pageNum, Long pageSize) {
        LambdaQueryWrapper<AlarmLimitType> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotEmpty(alarmLimitType.getLimitName()), AlarmLimitType::getLimitName,alarmLimitType.getLimitName());
        queryWrapper.orderByDesc(AlarmLimitType::getCreateTime);
        return alarmLimitTypeMapper.selectPage(new Page<>(pageNum,pageSize),queryWrapper);
    }
}
