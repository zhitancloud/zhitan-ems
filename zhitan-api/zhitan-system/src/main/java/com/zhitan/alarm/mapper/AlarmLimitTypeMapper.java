package com.zhitan.alarm.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.alarm.domain.AlarmLimitType;

import java.util.List;


public interface AlarmLimitTypeMapper extends BaseMapper<AlarmLimitType> {
    /**
     * 查询报警限值类型维护
     *
     * @param id 报警限值类型维护ID
     * @return 报警限值类型维护
     */
    AlarmLimitType selectLimitTypeById(String id);

    /**
     * 查询报警限值类型维护列表
     *
     * @param alarmLimitType 报警限值类型维护
     * @return 报警限值类型维护集合
     */
    List<AlarmLimitType> selectLimitTypeList(AlarmLimitType alarmLimitType);

    /**
     * 新增报警限值类型维护
     *
     * @param alarmLimitType 报警限值类型维护
     * @return 结果
     */
    int insertLimitType(AlarmLimitType alarmLimitType);

    /**
     * 修改报警限值类型维护
     *
     * @param alarmLimitType 报警限值类型维护
     * @return 结果
     */
    int updateLimitType(AlarmLimitType alarmLimitType);

    /**
     * 删除报警限值类型维护
     *
     * @param id 报警限值类型维护ID
     * @return 结果
     */
    int deleteLimitTypeById(String id);

    /**
     * 批量删除报警限值类型维护
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int deleteLimitTypeByIds(String[] ids);
}
