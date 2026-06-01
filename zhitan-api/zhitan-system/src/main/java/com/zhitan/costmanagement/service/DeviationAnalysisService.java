package com.zhitan.costmanagement.service;

import com.zhitan.costmanagement.domain.vo.DeviationAnalysisDTO;
import com.zhitan.costmanagement.domain.vo.ElectricityDataOutItem;
import com.zhitan.costmanagement.domain.vo.StatisticsDataOutItem;
import com.zhitan.costmanagement.domain.vo.StatisticsInfoListOut;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

/**
 * 成本策略Service接口
 *
 * @author ZhiTan
 */
public interface DeviationAnalysisService {
    StatisticsDataOutItem getStatisticsDataItem(DeviationAnalysisDTO dto) throws ParseException;

    ElectricityDataOutItem getElectricityDataItem(DeviationAnalysisDTO dto) throws ParseException;

    StatisticsInfoListOut getStatisticsInfoList(DeviationAnalysisDTO dto) throws ParseException;

    List<StatisticsInfoListOut> getStatisticsInfoNewList(DeviationAnalysisDTO dto) throws ParseException;

    Map<String, Object> getEcharst(DeviationAnalysisDTO dto) throws ParseException;
}
