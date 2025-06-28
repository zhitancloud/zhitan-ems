package com.zhitan.alarm.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.alarm.domain.entity.AlarmItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 预报警设置Mapper接口
 *
 * @author zhitan
 */
public interface AlarmItemMapper extends BaseMapper<AlarmItem> {

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
     * 删除预报警设置
     *
     * @param id 预报警设置ID
     * @return 结果
     */
    int deleteAlarmItemById(String id);

    /**
     * 查询预报警设置
     *
     * @param id 预报警设置ID
     * @return 预报警设置
     */
    List<AlarmItem> selectAlarmItemtingById(String id);

    /**
     * @return 结果
     */
    String getStartStop(String pointId);

    /**
     * 修改【请填写功能名称】
     *
     * @param data     【请填写功能名称】
     * @param username 当前登录人用户名
     * @return 结果
     */
    int updateLimitVal(@Param("data") List data, @Param("id") String id, String username);

    /**
     * 修改预报警设置
     *
     * @param ids       预报警设置
     * @param update_by 预报警设置
     * @param flag      预报警设置
     * @return 结果
     */
    int updateStartStop(@Param("ids") String[] ids, @Param("flag") String flag, @Param("update_by") String update_by);

    /**
     * 修改【查询是否存在测点设置】
     *
     * @return 结果
     */
    int selectCountById(String id);

    /**
     * 修改【请填写功能名称】
     *
     * @param data 【请填写功能名称】
     * @return 结果
     */
    int updateLimitValNoDel(@Param("data") List data, @Param("id") String id, @Param("username") String username);

    /**
     * 修改【查询是否存在测点设置】
     *
     * @return 结果
     */
    int deleteAllLimitVal(String id);

    /**
     * 查询预报警设置
     *
     * @param id 预报警设置ID
     * @return 预报警设置
     */
    int getSettingCount(String id);

    List<AlarmItem> getAllAlarmItem();
}
