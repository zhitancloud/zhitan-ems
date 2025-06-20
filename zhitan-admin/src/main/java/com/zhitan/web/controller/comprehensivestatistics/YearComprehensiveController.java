package com.zhitan.web.controller.comprehensivestatistics;

import cn.hutool.core.date.DateUtil;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.comprehensivestatistics.domain.YearComperhensive;
import com.zhitan.comprehensivestatistics.service.IyearComprehensive;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.realtimedata.domain.dto.EnergyUsedDTO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * electricityPriceController
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(value = "综合指标分析（年）controller", tags = {"综合指标分析"})
@RequestMapping("/comprehensive/yearComprehensive")
public class YearComprehensiveController extends BaseController {

    private IModelNodeService modelNodeService;
    private IyearComprehensive yearComprehensive;

    /**
     * 全厂能耗统计
     *
     * @param energyUsed
     * @return
     */
    @GetMapping("/list")
    @ApiOperation(value = "获取综合指标分析（年）列表")
    public AjaxResult list(EnergyUsedDTO energyUsed) {
        try {
            ModelNode modelNode = modelNodeService.getModelNodeByModelCodeByIndexCode(energyUsed.getIndexCode());
            if (ObjectUtils.isEmpty(modelNode)) {
                return AjaxResult.success("暂无数据");
            }
            List<YearComperhensive> dataList = new ArrayList<>();

            energyUsed.setBeginTime(DateUtil.beginOfYear(energyUsed.getDataTime()));
            energyUsed.setEndTime(DateUtil.endOfYear(energyUsed.getDataTime()));

            DateFormat df = new SimpleDateFormat("yyyy");
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = df.format(energyUsed.getDataTime());
            String hourDateTimeStr = "";
            int i = 1;
            while (i <= 12) {
                if (i > 9) {
                    hourDateTimeStr = formattedDate + "-" + i + "-01 00:00:00";
                } else {
                    hourDateTimeStr = formattedDate + "-0" + i + "-01 00:00:00";
                }
                YearComperhensive report = new YearComperhensive();
                report.setDataTime(sf.parse(hourDateTimeStr));
                report.setValue("value" + i);
                dataList.add(report);
                i++;
            }
            List<YearComperhensive> list = yearComprehensive.getYearComprehensiveList(modelNode.getNodeId(),
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
    @GetMapping("/listChart")
    @ApiOperation(value = "获取综合指标分析图表（年）数据")
    public AjaxResult listChart(EnergyUsedDTO energyUsed) {

        energyUsed.setBeginTime(DateUtil.beginOfYear(energyUsed.getDataTime()));
        energyUsed.setEndTime(DateUtil.endOfYear(energyUsed.getDataTime()));

        List<YearComperhensive> list = yearComprehensive.getListChart(energyUsed.getPointId(), energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
        return AjaxResult.success(list);
    }

    /**
     * 导出工序单耗统计指标设置功能列表
     */
    @Log(title = "综合报表", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    @ApiOperation(value = "综合年报表导出")
    public AjaxResult export(EnergyUsedDTO energyUsed) {
        try {
            ModelNode modelNode = modelNodeService.getModelNodeByModelCodeByIndexCode(energyUsed.getIndexCode());
            if (ObjectUtils.isEmpty(modelNode)) {
                return AjaxResult.success("暂无数据");
            }
            List<YearComperhensive> dataList = new ArrayList<>();
            DateFormat df = new SimpleDateFormat("yyyy");
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = df.format(energyUsed.getBeginTime());
            String hourDateTimeStr = "";
            int i = 1;
            while (i <= 12) {
                if (i > 9) {
                    hourDateTimeStr = formattedDate + "-" + i + "-01 00:00:00";
                } else {
                    hourDateTimeStr = formattedDate + "-0" + i + "-01 00:00:00";
                }
                YearComperhensive report = new YearComperhensive();
                report.setDataTime(sf.parse(hourDateTimeStr));
                report.setValue("value" + i);
                dataList.add(report);
                i++;
            }
            List<YearComperhensive> list = yearComprehensive.getYearComprehensiveList(modelNode.getNodeId(),
                    dataList, energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
            if (CollectionUtils.isNotEmpty(list)) {
                list.forEach(this::valueRep);
            }
            ExcelUtil<YearComperhensive> util = new ExcelUtil<>(YearComperhensive.class);
            return util.exportExcel(list, "综合指标分析年");
        } catch (Exception ex) {
            logger.error("获取出错！", ex);
            return AjaxResult.error("获取出错!");
        }
    }

    public void valueRep(Object dr) {
        Field[] fields = dr.getClass().getDeclaredFields();
        for (Field field : fields) {
            field.setAccessible(true);
            Object obj = field.getType();
            if (field.getType().getName().equals("java.lang.Double")) {
                String name = field.getName();
                try {
                    if (ObjectUtils.isEmpty(field.get(dr))) {
                        field.set(dr, 0.00);
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
