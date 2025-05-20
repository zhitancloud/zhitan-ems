package com.zhitan.web.controller.homepage;

import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.consumptionanalysis.domain.vo.RankingEnergyData;
import com.zhitan.home.domain.vo.HomeEnergyConsumptionTrendVO;
import com.zhitan.home.domain.vo.HomePeakValleyVO;
import com.zhitan.home.service.impl.IHomePageService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * HomePageController
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "首页")
@RequestMapping("/homepage")
public class HomePageController extends BaseController {

    public IHomePageService homepageService;

    /**
     * &#064;description:  全厂能耗统计
     */
    @GetMapping("/energyConsumptionSummation")
    public AjaxResult energyConsumptionSummation(String timeType) {
        try {
            String modelcode = "COMPREHENSIVE_CODE";
            return AjaxResult.success(homepageService.energyConsumptionSummation(timeType, modelcode));
        } catch (Exception ex) {
            logger.error("获取出错！", ex);
            return AjaxResult.error("获取出错!");
        }
    }


    /**
     * @description: 能耗趋势
     * @author zhitan
     */
    @GetMapping("/energyConsumptionTrend")
    public AjaxResult energyConsumptionTrend(String timeType) {
        try {
            String modelcode = "COMPREHENSIVE_CODE";
            HomeEnergyConsumptionTrendVO vo = homepageService.energyConsumptionTrend(timeType, modelcode);

            return AjaxResult.success(vo);
        } catch (Exception ex) {
            logger.error("获取出错！", ex);
            return AjaxResult.error("获取出错!");
        }
    }

    /**
     * @description: 科室能耗排名
     * @author zhitan
     */
    @GetMapping("/energyConsumptionRanking")
    public AjaxResult energyConsumptionRanking(String timeType) {
        try {
            String modelcode = "COMPREHENSIVE_CODE";
            List<RankingEnergyData> consumptionAnalysisVO = homepageService.energyConsumptionRanking(modelcode, timeType);
            return AjaxResult.success(consumptionAnalysisVO);
        } catch (Exception ex) {
            logger.error("获取出错！", ex);
            return AjaxResult.error("获取出错!");
        }
    }

    /**
     * @description: 峰平谷占比
     * @author zhitan
     */
    @GetMapping("/peakValley")
    public AjaxResult peakValley(String timeType) {
        try {
            String modelcode = "COMPREHENSIVE_CODE";
            List<HomePeakValleyVO> vo = homepageService.peakValley(timeType, modelcode);
            return AjaxResult.success(vo);
        } catch (Exception ex) {
            logger.error("获取出错！", ex);
            return AjaxResult.error("获取出错!");
        }
    }
}
