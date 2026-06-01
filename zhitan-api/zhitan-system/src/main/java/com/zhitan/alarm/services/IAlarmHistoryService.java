package com.zhitan.alarm.services;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.alarm.domain.JkHistoryAlarm;
import com.zhitan.alarm.domain.entity.AlarmHistory;
import com.zhitan.common.enums.TimeType;

import java.util.Date;
import java.util.List;

public interface IAlarmHistoryService {

    List<AlarmHistory> getHistoryAlarm(Date beginTime, Date endTime);

    List<AlarmHistory> getHistoryAlarm(Date beginTime, Date endTime, TimeType timeType);

    List<AlarmHistory> getHistoryAlarm(Date beginTime, Date endTime, String alarmType);

    /**
     * @param jkHistoryAlarm 根据历史报警对象取值
     * @return
     */
    List<JkHistoryAlarm> selectJkHistoryAlarmList(JkHistoryAlarm jkHistoryAlarm);

    List<JkHistoryAlarm> selectJkHistoryAlarmListExcel(JkHistoryAlarm jkHistoryAlarm);

    void updateHistoryAlarm(String alarmCode, AlarmHistory alarmHistory);

    /**
     * 历史报警分页查询
     *
     * @param jkHistoryAlarm
     * @return
     */
    Page<JkHistoryAlarm> selectHistoryAlarmPageList(JkHistoryAlarm jkHistoryAlarm);
}
