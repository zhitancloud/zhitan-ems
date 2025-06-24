package com.zhitan.web.controller.peakvalley;


import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.peakvalley.domain.dto.PeakValleyDTO;
import com.zhitan.peakvalley.domain.vo.peakvalley.PeakValleyHourDataVO;
import com.zhitan.peakvalley.service.IEnergyUsedElectricityService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 尖峰平谷数据Controller
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "尖峰平谷数据")
@RequestMapping("/peakValley")
public class EnergyUsedElectricityController extends BaseController {

    private IEnergyUsedElectricityService rulesService;


    /**
     * 获取尖峰平谷数据统计 - 按小时统计
     */
    @GetMapping("/segmentAnalysis/hour")
    @ApiOperation(value = "获取尖峰平谷分时统计")
    public AjaxResult segmentAnalysisHour(PeakValleyDTO dto) {
        return AjaxResult.success(rulesService.segmentAnalysisHour(dto));
    }

    /**
     * 获取尖峰平谷数据统计 - 按小时统计
     */
    @PostMapping("/segmentAnalysis/hour/export")
    @ApiOperation(value = "获取尖峰平谷分时统计")
    public void segmentAnalysisHourExport(HttpServletResponse response, PeakValleyDTO dto) {
        List<PeakValleyHourDataVO> list = rulesService.segmentAnalysisHourExport(dto);
        ExcelUtil<PeakValleyHourDataVO> util = new ExcelUtil<PeakValleyHourDataVO>(PeakValleyHourDataVO.class);
        util.exportExcel(response, list, "尖峰平谷分时统计数据");
    }

    /**
     * 获取尖峰平谷数据统计 - 按天统计
     */
    @GetMapping("/segmentAnalysis/day")
    @ApiOperation(value = "获取尖峰平谷分时统计")
    public AjaxResult segmentAnalysisDay(PeakValleyDTO dto) {
        return AjaxResult.success(rulesService.segmentAnalysisDay(dto));
    }

}
