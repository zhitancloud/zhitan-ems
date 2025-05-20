package com.zhitan.web.controller.costmanagement;

import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.costmanagement.domain.vo.DeviationAnalysisDTO;
import com.zhitan.costmanagement.domain.vo.ElectricityDataOutItem;
import com.zhitan.costmanagement.domain.vo.StatisticsDataOutItem;
import com.zhitan.costmanagement.service.DeviationAnalysisService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "偏差分析")
@RequestMapping("/cost/statistics")
public class DeviationAnalysisController extends BaseController {
    private DeviationAnalysisService deviationAnalysisService;

    /**
     * 查询成本策略列表
     */

    @GetMapping("/statistics")
    public AjaxResult statistics(DeviationAnalysisDTO dto) throws ParseException {
        Map<String, Object> result = new HashMap<>();
        StatisticsDataOutItem statisticsDataItem = deviationAnalysisService.getStatisticsDataItem(dto);
        ElectricityDataOutItem electricityDataItem = deviationAnalysisService.getElectricityDataItem(dto);
        result.put("CostElectricityData", electricityDataItem);
        result.put("CostStatisticsData", statisticsDataItem);

        return AjaxResult.success(result);
    }

    @GetMapping("/getStatisticsInfoList")
    public AjaxResult getStatisticsInfoList(DeviationAnalysisDTO dto) throws ParseException {
        return AjaxResult.success(deviationAnalysisService.getStatisticsInfoList(dto));
    }

    @GetMapping("/getStatisticsInfoEcharts")
    public AjaxResult echarts(DeviationAnalysisDTO dto) throws ParseException {
        Map<String, Object> result = deviationAnalysisService.getEcharst(dto);
        return AjaxResult.success(result);
    }
}
