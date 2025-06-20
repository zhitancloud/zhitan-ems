package com.zhitan.web.controller.comprehensivestatistics;

import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.comprehensivestatistics.domain.DailyComprehensive;
import com.zhitan.comprehensivestatistics.service.IDailyComprehensiveService;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.realtimedata.domain.dto.EnergyUsedDTO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(value = "综合指标分析（日）controller", tags = {"综合指标分析"})
@RequestMapping("/comprehensive/dailyComprehensive")
public class DailyComprehensiveController extends BaseController {

    private IModelNodeService modelNodeService;
    private IDailyComprehensiveService dailyComprehensiveService;

    /*全厂能耗统计*/
    @ApiOperation(value = "获取综合指标分析（日）列表")
    @GetMapping("/list")
    public AjaxResult list(EnergyUsedDTO energyUsed) {
        try {
            ModelNode modelNode = modelNodeService.getModelNodeByModelCodeByIndexCode(energyUsed.getIndexCode());
            if (ObjectUtils.isEmpty(modelNode)) {
                return AjaxResult.success("暂无数据");
            }
            List<DailyComprehensive> dataList = new ArrayList<>();
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = df.format(energyUsed.getDataTime());
            String hourDateTimeStr;
            int i = 0;
            energyUsed.setBeginTime(energyUsed.getDataTime());
            String endTime = formattedDate + " 24:00:00";
            energyUsed.setEndTime(sf.parse(endTime));
            while (i < 24) {
                if (i > 9) {
                    hourDateTimeStr = formattedDate + " " + i + ":00:00";
                } else {
                    hourDateTimeStr = formattedDate + " 0" + i + ":00:00";
                }
                DailyComprehensive report = new DailyComprehensive();
                report.setDataTime(sf.parse(hourDateTimeStr));
                report.setValue("value" + i);
                dataList.add(report);
                i++;
            }
            List<DailyComprehensive> list = dailyComprehensiveService.getDailyComprehensiveList(modelNode.getNodeId(),
                    dataList, energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
            return AjaxResult.success(list);
        } catch (Exception ex) {
            logger.error("获取出错！", ex);
            return AjaxResult.error("获取出错!");
        }
    }

    /**
     * 全厂综合能耗统计图
     */
    @ApiOperation(value = "获取综合指标分析图表（日）数据")
    @GetMapping("/listChart")
    public AjaxResult listChart(EnergyUsedDTO energyUsed) throws ParseException {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = df.format(energyUsed.getDataTime());
        energyUsed.setBeginTime(energyUsed.getDataTime());
        String endTime = formattedDate + " 24:00:00";
        energyUsed.setEndTime(sf.parse(endTime));
        List<DailyComprehensive> list = dailyComprehensiveService.getListChart(energyUsed.getPointId(), energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
        return AjaxResult.success(list);
    }

}
