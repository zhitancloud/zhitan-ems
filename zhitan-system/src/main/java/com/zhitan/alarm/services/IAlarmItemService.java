package com.zhitan.alarm.services;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.alarm.domain.entity.AlarmItem;

import java.util.ArrayList;
import java.util.List;

/**
 * 预报警设置Service接口
 *
 * @author zhitan
 */
public interface IAlarmItemService {


    /**
     * 查询预报警设置列表
     *
     * @param alarmItem 预报警设置
     * @return 预报警设置集合
     */
    List<AlarmItem> selectAlarmItemList(AlarmItem alarmItem);

    /**
     * 修改预报警设置
     *
     * @param alarmItem 预报警设置
     * @return 结果
     */
    int updateAlarmItem(AlarmItem alarmItem);

    /**
     * 删除预报警设置信息
     *
     * @param id 预报警设置ID
     * @return 结果
     */
    int deleteAlarmItemById(String id);

    /**
     * 查询预报警设置列表
     *
     * @param id 预报警设置
     * @return 预报警设置集合
     */
    List<AlarmItem> selectAlarmItemtingById(String id);

    /**
     * 查询预报警列表行启停值
     *
     * @param indexid 预报警设置
     * @return 预报警设置集合
     */
    String getStartStop(String indexid);

    /**
     * 修改弹出框限值
     *
     * @param data 【修改弹出框限值】
     * @return 结果
     */
    int updateLimitVal(List data, String username);

    /**
     * 查询预id下设置限值的数量
     *
     * @param id 预报警设置
     * @return 数
     */
    ArrayList getSettingCount(String[] id);

    List<AlarmItem> getAllAlarmItem();
}
