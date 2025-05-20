package com.zhitan.alarm.services;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.alarm.domain.AlarmLimitType;

import java.util.List;


public interface IAlarmLimitTypeService {

    int insertAlarmLimitType(AlarmLimitType alarmLimitType);

    List<AlarmLimitType> selectAlarmLimitTypeList(AlarmLimitType alarmLimitType);

    int updateAlarmLimitType(AlarmLimitType alarmLimitType);

    int deleteLimitTypeByIds(String[] ids);

    AlarmLimitType selectAlarmLimitTypeById(String id);


    Page<AlarmLimitType> selectAlarmLimitTypePage(AlarmLimitType alarmLimitType, Long pageNum, Long pageSize);
}
