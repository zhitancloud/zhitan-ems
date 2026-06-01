package com.zhitan.keyequipment.mapper;

import com.zhitan.keyequipment.domain.MonthlyKeyEquipment;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 *重点设备能耗统计 月
 *
 * @author zhitan
 */
public interface MonthlyKeyEquipmentMapper {
    List<MonthlyKeyEquipment> getMonthlyKeyEquipmentList(@Param("indexIds") List<String> indexIds,
                                                                @Param("dataList") List<MonthlyKeyEquipment> dataList,
                                                                @Param("beginTime") Date beginTime,
                                                                @Param("endTime") Date endTime,
                                                                @Param("timeType") String timeType,
                                                                @Param("indexStorageId") String indexStorageId);
    List<MonthlyKeyEquipment> getListChart(@Param("indexId") String indexId,
                                               @Param("beginTime") Date beginTime,
                                               @Param("endTime") Date endTime,
                                               @Param("timeType") String timeType,
                                               @Param("indexStorageId") String indexStorageId);

}
