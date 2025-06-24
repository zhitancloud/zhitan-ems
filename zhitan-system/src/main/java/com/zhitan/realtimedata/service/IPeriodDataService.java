package com.zhitan.realtimedata.service;


import com.zhitan.common.enums.Quality;
import com.zhitan.common.enums.StatisticType;
import com.zhitan.common.enums.TimeType;
import com.zhitan.realtimedata.domain.EnergyUsed;
import com.zhitan.realtimedata.domain.ElectricityDataDetail;
import com.zhitan.realtimedata.domain.StatisticResult;

import java.util.Date;
import java.util.List;

/**
 * 阶段数据查询接口.
 */
public interface IPeriodDataService {

    /**
     * 保存指标数据.
     *
     * @param data 指标数据
     */
    void save(EnergyUsed data);

    /**
     * 尖峰平谷
     */
    void saveTOUData(ElectricityDataDetail data);

    /**
     * 批量保存周期数据.
     *
     * @param energyUseds 要保存的数据集合
     */
    void save(List<EnergyUsed> energyUseds);

    void saveTOUData(List<ElectricityDataDetail> dataItems);

    /**
     * 批量保存数据，不处理异常
     * 采用merge保存数据，如果批量保存失败跑出异常
     *
     * @param energyUseds
     */
    void savePeriodData(List<EnergyUsed> energyUseds);

    /**
     * 修改指标数据.
     *
     * @param data 指标数据
     */
    void update(EnergyUsed data);

    /**
     * 获取指标数据.
     *
     * @param indexId  计算指标
     * @param timeCode 时间编码
     */
    EnergyUsed getDataByIndex(String indexId, String timeCode);

    /**
     * 获取指标某一时刻的数据.
     *
     * @param indexId  计算指标
     * @param dataTime 时间
     * @param timeType 周期类型
     */
    EnergyUsed getDataByIndex(String indexId, Date dataTime, TimeType timeType);

    /**
     * 获取计算指标数据.
     *
     * @param indexIds 计算指标
     * @param timeCode 时间编号
     * @return 计算指标数据
     */
    List<EnergyUsed> getDataItemsByIndex(List<String> indexIds, String timeCode);

    /**
     * 获取计算指标数据.
     *
     * @param indexIds 计算指标集合
     * @param dataTime 时间
     * @param timeType 周期类型
     * @return 计算指标数据
     */
    List<EnergyUsed> getDataItemsByIndex(List<String> indexIds,
                                         Date dataTime,
                                         TimeType timeType);

    /**
     * 获取指标某一时刻的数据.
     *
     * @param indexIds  计算指标存储集合
     * @param beginTime 开始时间
     * @param endTime   结束时间
     * @param timeType  周期类型
     */
    List<EnergyUsed> getDataItemsByIndex(List<String> indexIds,
                                         Date beginTime,
                                         Date endTime,
                                         TimeType timeType);

    /**
     * 获取指标某一时刻的数据.
     *
     * @param indexId   计算指标存储集合
     * @param beginTime 开始时间
     * @param endTime   结束时间
     * @param timeType  周期类型
     */
    List<EnergyUsed> getDataItemsByIndex(String indexId,
                                         Date beginTime,
                                         Date endTime,
                                         TimeType timeType);

    /**
     * 获取指标某一时刻的数据.
     *
     * @param indexIds  计算指标存储集合
     * @param beginTime 开始时间
     * @param endTime   结束时间
     * @param timeType  周期类型
     */
    List<EnergyUsed> getDataItemsByIndex(List<String> indexIds,
                                         Date beginTime,
                                         Date endTime,
                                         TimeType timeType,
                                         Quality quality);

    /**
     * 获取统计数据.
     *
     * @param indexId       计算指标
     * @param statisticType 统计类型
     * @param timeType      时间类型
     * @param beginTime     开始时间
     * @param endTime       结束时间
     */
    double dataStatisticsByIndex(String indexId,
                                 StatisticType statisticType,
                                 TimeType timeType,
                                 Date beginTime,
                                 Date endTime);

    /**
     * 获取统计数据.
     *
     * @param indexIds      计算指标集合
     * @param statisticType 统计类型
     * @param timeType      时间类型
     * @param beginTime     开始时间
     * @param endTime       结束时间
     */
    List<EnergyUsed> dataStatisticsByIndexes(List<String> indexIds,
                                             StatisticType statisticType,
                                             TimeType timeType,
                                             Date beginTime,
                                             Date endTime);


    /**
     * 获取统计数据.
     *
     * @param indexCode     计算指标
     * @param statisticType 统计类型
     * @param timeType      时间类型
     * @param beginTime     开始时间
     * @param endTime       结束时间
     */
    double dataStatisticsByCode(String indexCode,
                                StatisticType statisticType,
                                TimeType timeType,
                                Date beginTime,
                                Date endTime);

    /**
     * 获取统计数据.
     *
     * @param indexCodes    计算指标集合
     * @param statisticType 统计类型
     * @param timeType      时间类型
     * @param beginTime     开始时间
     * @param endTime       结束时间
     */
    List<EnergyUsed> dataStatisticsByCodes(List<String> indexCodes,
                                           StatisticType statisticType,
                                           TimeType timeType,
                                           Date beginTime,
                                           Date endTime);

    /**
     * 获取统计数据.
     *
     * @param indexCodes    计算指标集合
     * @param statisticType 统计类型
     * @param timeType      时间类型
     * @param beginTime     开始时间
     * @param endTime       结束时间
     */
    List<EnergyUsed> dataStatisticsByCodes(List<String> indexCodes,
                                           StatisticType statisticType,
                                           TimeType timeType,
                                           Date beginTime,
                                           Date endTime,
                                           boolean isFilter);

    /**
     * 统计指标本期值、上期值、同期值、最大值、最小值和平均值.
     *
     * @param indexId  指标主键
     * @param timeType 时间周期类型
     * @param dataTime 数据时间
     * @return 统计结构
     */
    StatisticResult statisticById(String indexId, TimeType timeType, Date dataTime);

    /**
     * 统计指标本期值、上期值、同期值、最大值、最小值和平均值.
     *
     * @param indexIds 指标主键
     * @param timeType 时间周期类型
     * @param dataTime 数据时间
     * @return 统计结果
     */
    List<StatisticResult> statisticById(List<String> indexIds, TimeType timeType, Date dataTime);

    /**
     * 统计一段时间周期内指标每个数据时间的本期值、上期值、同期值、最大值、最小值和平均值.
     *
     * @param indexId   指标主键
     * @param timeType  时间周期类型
     * @param beginTime 开始时间
     * @param endTime   结束时间
     * @return 统计结果
     */
    List<StatisticResult> statisticById(String indexId, TimeType timeType, Date beginTime, Date endTime);

    /**
     * 统计一段时间周期内指标每个数据时间的本期值、上期值、同期值、最大值、最小值和平均值.
     *
     * @param indexIds  指标主键
     * @param timeType  时间周期类型
     * @param beginTime 开始时间
     * @param endTime   结束时间
     * @return 统计结果
     */
    List<StatisticResult> statisticById(List<String> indexIds, TimeType timeType, Date beginTime, Date endTime);


    /**
     * 统计一段时间周期内指标每个数据时间的本期值、上期值
     * 这里是上期数值略有不同，小时的是昨天的，日数据是上个月的，月是去年的
     *
     * @param indexIds  指标主键
     * @param timeType  时间周期类型
     * @param beginTime 开始时间
     * @param endTime   结束时间
     * @return 统计结果
     */
    List<StatisticResult> statisticOtherCycle(List<String> indexIds, TimeType timeType, Date beginTime, Date endTime);

    /**
     * 统计指标本期值、上期值、同期值、最大值、最小值和平均值.
     *
     * @param indexCode 指标主键
     * @param timeType  时间周期类型
     * @param dataTime  数据时间
     * @return 统计结构
     */
    StatisticResult statisticByCode(String indexCode, TimeType timeType, Date dataTime);

    /**
     * 统计指标本期值、上期值、同期值、最大值、最小值和平均值.
     *
     * @param indexCodes 指标主键
     * @param timeType   时间周期类型
     * @param dataTime   数据时间
     * @return 统计结果
     */
    List<StatisticResult> statisticByCode(List<String> indexCodes, TimeType timeType, Date dataTime);

    /**
     * 统计一段时间周期内指标每个数据时间的本期值、上期值、同期值、最大值、最小值和平均值.
     *
     * @param indexCode 指标主键
     * @param timeType  时间周期类型
     * @param beginTime 开始时间
     * @param endTime   结束时间
     * @return 统计结果
     */
    List<StatisticResult> statisticByCode(String indexCode, TimeType timeType, Date beginTime, Date endTime);

    /**
     * 统计一段时间周期内指标每个数据时间的本期值、上期值、同期值、最大值、最小值和平均值.
     *
     * @param indexCodes 指标主键
     * @param timeType   时间周期类型
     * @param beginTime  开始时间
     * @param endTime    结束时间
     * @return 统计结果
     */
    List<StatisticResult> statisticByCode(List<String> indexCodes, TimeType timeType, Date beginTime, Date endTime);

    /**
     * 获取指标数据.
     *
     * @param indexCode 计算指标编码
     * @param timeCode  时间编码
     */
    EnergyUsed getDataByIndexCode(String indexCode, String timeCode);
}
