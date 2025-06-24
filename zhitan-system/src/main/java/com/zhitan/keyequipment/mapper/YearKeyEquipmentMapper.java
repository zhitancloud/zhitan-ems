package com.zhitan.keyequipment.mapper;

import com.zhitan.common.utils.TypeTime;
import com.zhitan.keyequipment.domain.YearKeyEquipment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 *重点设备能耗统计 年
 *
 * @author zhitan
 */
@Mapper
public interface YearKeyEquipmentMapper {
    List<YearKeyEquipment> getYearKeyEquipmentList(@Param("indexIds") List<String> indexIds,
                                                          @Param("dataList") List<TypeTime> dataList,
                                                          @Param("beginTime") Date beginTime,
                                                          @Param("endTime") Date endTime,
                                                          @Param("timeType") String timeType,
                                                          @Param("indexStorageId") String indexStorageId);
    List<YearKeyEquipment> getListChart(@Param("indexId") String indexId,
                                            @Param("beginTime") Date beginTime,
                                            @Param("endTime") Date endTime,
                                            @Param("timeType") String timeType
                                            );

}
