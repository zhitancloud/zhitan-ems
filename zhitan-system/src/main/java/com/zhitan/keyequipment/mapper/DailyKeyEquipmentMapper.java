package com.zhitan.keyequipment.mapper;

import com.zhitan.basicdata.domain.Device;
import com.zhitan.keyequipment.domain.DailyKeyEquipment;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 *重点设备能耗统计 日
 *
 * @author zhitan
 */
public interface DailyKeyEquipmentMapper {
    List<DailyKeyEquipment> getdailyKeyEquipmentList(@Param("indexIds") List<String> indexIds,
                                                            @Param("dataList") List<DailyKeyEquipment> dataList,
                                                            @Param("beginTime") Date beginTime,
                                                            @Param("endTime") Date endTime,
                                                            @Param("timeType") String timeType,
                                                            @Param("indexStorageId") String indexStorageId);
    List<DailyKeyEquipment> getListChart(@Param("indexId") String indexId,
                                            @Param("beginTime") Date beginTime,
                                            @Param("endTime") Date endTime,
                                            @Param("timeType") String timeType,
                                            @Param("indexStorageId")  String indexStorageId);
    List<Device> getFacilityArchives();
    List<Device> getPointFacility();
}
