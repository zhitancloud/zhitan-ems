package com.zhitan.realtimedata.mapper;

import com.zhitan.common.enums.Quality;
import com.zhitan.common.enums.StatisticType;
import com.zhitan.common.enums.TimeType;
import com.zhitan.realtimedata.domain.EnergyUsed;
import com.zhitan.realtimedata.domain.ElectricityDataDetail;
import com.zhitan.realtimedata.domain.StatisticResult;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 阶段数据查询，数据访问接口.
 */
@Mapper
public interface PeriodDataMapper {

    void save(@Param("dataItem") EnergyUsed energyUsed);

    void insert(@Param("dataItem") EnergyUsed energyUsed);

    void insertTOUData(@Param("dataItem") ElectricityDataDetail dataItem);

    void insertTOUDataItems(@Param("dataItems") List<ElectricityDataDetail> dataItems);

    void update(@Param("dataItem") EnergyUsed energyUsed);

    EnergyUsed getDataByIndex(@Param("indexId") String indexId,
                              @Param("timeCode") String timeCode);

    List<EnergyUsed> getDatasByIndex(@Param("indexIds") List<String> indexIds,
                                     @Param("timeCode") String timeCode);

    List<EnergyUsed> getPeriodDatasByIndex(@Param("indexIds") List<String> indexIds,
                                           @Param("beginTime") Date beginTime,
                                           @Param("endTime") Date endTime,
                                           @Param("timeType") TimeType timeType);

    Double dataStatisticsByIndex(@Param("indexId") String indexId,
                                 @Param("statisticType") StatisticType statisticType,
                                 @Param("timeType") TimeType timeType,
                                 @Param("beginTime") Date beginTime,
                                 @Param("endTime") Date endTime);

    List<EnergyUsed> dataStatisticsByIndexs(@Param("indexIds") List<String> indexIds,
                                            @Param("statisticType") StatisticType
                                                  statisticType,
                                            @Param("timeType") TimeType timeType,
                                            @Param("beginTime") Date beginTime,
                                            @Param("endTime") Date endTime);

    List<EnergyUsed> statistic(@Param("indexIds") List<String> indexIds,
                               @Param("timeType") TimeType timeType,
                               @Param("beginTime") Date beginTime,
                               @Param("endTime") Date endTime);

    List<EnergyUsed> statisticByCode(@Param("indexCodes") List<String> indexCodes,
                                     @Param("timeType") TimeType timeType,
                                     @Param("beginTime") Date beginTime,
                                     @Param("endTime") Date endTime);

    List<StatisticResult> getStatisticDatasById(@Param("indexIds") List<String> indexIds,
                                                @Param("timeType") TimeType timeType);

    List<StatisticResult> getStatisticDatasByCode(@Param("indexCodes") List<String> indexCodes,
                                                  @Param("timeType") TimeType timeType);

    List<EnergyUsed> dataStatisticsByCodes(@Param("indexCodes") List<String> indexCodes,
                                           @Param("statisticType") StatisticType statisticType,
                                           @Param("timeType") TimeType timeType,
                                           @Param("beginTime") Date beginTime,
                                           @Param("endTime") Date endTime);

    String hasExist(@Param("indexId") String indexId,
                    @Param("timeCode") String timeCode);

    void saveDataList(@Param("dataItemVlues") List<EnergyUsed> datas);

    List<EnergyUsed> getPeriodDatasByIndexAndQuality(@Param("indexIds") List<String> indexIds,
                                                     @Param("beginTime") Date beginTime,
                                                     @Param("endTime") Date endTime,
                                                     @Param("timeType") TimeType timeType,
                                                     @Param("quality") Quality quality);

    List<EnergyUsed> dataStatisticsFilterByCodes(@Param("indexCodes") List<String> indexCodes,
                                                 @Param("statisticType") StatisticType statisticType,
                                                 @Param("timeType") TimeType timeType,
                                                 @Param("beginTime") Date beginTime,
                                                 @Param("endTime") Date endTime,
                                                 @Param("isFilter") boolean isFilter);

    void delete(@Param("indexId") String indexId,
                @Param("timeType") TimeType timeType,
                @Param("beginTime") Date beginTime,
                @Param("endTime") Date endTime);

    EnergyUsed getDataByIndexCode(String indexCode, String timeCode);

    List<String> queryDataItemIsExist(@Param("queryMap") Map<String, List<String>> queryMap);

    void insertDataList(List<EnergyUsed> insertData);
}
