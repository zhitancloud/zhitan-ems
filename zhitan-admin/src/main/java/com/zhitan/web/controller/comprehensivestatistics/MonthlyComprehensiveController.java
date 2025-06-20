package com.zhitan.web.controller.comprehensivestatistics;

import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.comprehensivestatistics.domain.MonthlyComprehensive;
import com.zhitan.comprehensivestatistics.service.ImonthlyComprehensive;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * electricityPriceController
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(value = "综合指标分析（月）controller", tags = {"综合指标分析"})
@RequestMapping("/comprehensive/monthlyComprehensive")
public class MonthlyComprehensiveController extends BaseController {

    private IModelNodeService modelNodeService;
    private ImonthlyComprehensive monthlyComprehensive;

    /*全厂能耗统计*/
    @ApiOperation(value = "获取综合指标分析（月）列表")
    @GetMapping("/list")
    public AjaxResult list(EnergyUsedDTO energyUsed) {
        try {

            Map tableColumn = new HashMap<>();//表数据
            List<MonthlyComprehensive> dataList = new ArrayList<>();
            DateFormat df = new SimpleDateFormat("yyyy-MM");
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = df.format(energyUsed.getDataTime());
            String hourDateTimeStr = "";
            int i = 1;
            String beginTime = formattedDate + "-01 00:00:00";
            energyUsed.setBeginTime(sf.parse(beginTime));
            String endTime = formattedDate + "-" + Integer.valueOf(getLastDayOfMonth(formattedDate).substring(getLastDayOfMonth(formattedDate).length() - 2)) + " 00:00:00";
            energyUsed.setEndTime(sf.parse(endTime));
            while (i <= Integer.parseInt(getLastDayOfMonth(formattedDate).substring(getLastDayOfMonth(formattedDate).length() - 2))) {
                if (i > 9) {
                    hourDateTimeStr = formattedDate + "-" + i + " 00:00:00";
                } else {
                    hourDateTimeStr = formattedDate + "-0" + i + " 00:00:00";
                }
                MonthlyComprehensive report = new MonthlyComprehensive();
                report.setDataTime(sf.parse(hourDateTimeStr));
                report.setValue("value" + i);
                dataList.add(report);
                tableColumn.put("value" + i, i + "日");
                i++;
            }

            MonthlyComprehensive reportList = new MonthlyComprehensive();
            List<Map> table = new ArrayList<>();
            table.add(tableColumn);
            reportList.setTablehead(table);

            ModelNode modelNode = modelNodeService.getModelNodeByModelCodeByIndexCode(energyUsed.getIndexCode());
            if (ObjectUtils.isEmpty(modelNode)) {
                return AjaxResult.success(reportList);
            }
            List<MonthlyComprehensive> list = monthlyComprehensive.getMonthlyComprehensiveList(modelNode.getNodeId(),
                    dataList, energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
            int count = Integer.parseInt(getLastDayOfMonth(formattedDate).substring(getLastDayOfMonth(formattedDate).length() - 2));
            list.forEach(monthlyReport -> monthlyReport.setCount(count));
            reportList.setTabledata(list);

            return AjaxResult.success(reportList);
        } catch (Exception ex) {
            logger.error("获取出错！", ex);
            return AjaxResult.error("获取出错!");
        }
    }

    /**
     * 全厂综合能耗统计图
     */
    @GetMapping("/listChart")
    @ApiOperation(value = "获取综合指标分析图表（月）数据")
    public AjaxResult listChart(EnergyUsedDTO energyUsed) throws ParseException {
        DateFormat df = new SimpleDateFormat("yyyy-MM");
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = df.format(energyUsed.getDataTime());
        String beginTime = formattedDate + "-01 00:00:00";
        energyUsed.setBeginTime(sf.parse(beginTime));
        String endTime = formattedDate + "-" + Integer.valueOf(getLastDayOfMonth(formattedDate).substring(getLastDayOfMonth(formattedDate).length() - 2)) + " 00:00:00";
        energyUsed.setEndTime(sf.parse(endTime));
        List<MonthlyComprehensive> list = monthlyComprehensive.getListChart(energyUsed.getPointId(), energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
        return AjaxResult.success(list);
    }

    public static String getLastDayOfMonth(String yearMonth) {
        int year = Integer.parseInt(yearMonth.split("-")[0]);  //年
        int month = Integer.parseInt(yearMonth.split("-")[1]); //月
        Calendar cal = Calendar.getInstance();
        // 设置年份
        cal.set(Calendar.YEAR, year);
        // 设置月份
        // cal.set(Calendar.MONTH, month - 1);
        cal.set(Calendar.MONTH, month); //设置当前月的上一个月
        // 获取某月最大天数
        //int lastDay = cal.getActualMaximum(Calendar.DATE);
        int lastDay = cal.getMinimum(Calendar.DATE); //获取月份中的最小值，即第一天
        // 设置日历中月份的最大天数
        //cal.set(Calendar.DAY_OF_MONTH, lastDay);
        cal.set(Calendar.DAY_OF_MONTH, lastDay - 1); //上月的第一天减去1就是当月的最后一天
        // 格式化日期
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(cal.getTime());
    }

    /*综合月报表导出*/
//    @Log(title = "综合月报表导出", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    @ApiOperation(value = "综合月报表导出")
    public AjaxResult export(EnergyUsedDTO energyUsed) {
        try {

            Map tableColumn = new HashMap<>();//表数据
            List<MonthlyComprehensive> dataList = new ArrayList<>();
            DateFormat df = new SimpleDateFormat("yyyy-MM");
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = df.format(energyUsed.getDataTime());
            String hourDateTimeStr = "";
            int i = 1;
            String beginTime = formattedDate + "-01 00:00:00";
            energyUsed.setBeginTime(sf.parse(beginTime));
            String endTime = formattedDate + "-" + Integer.valueOf(getLastDayOfMonth(formattedDate).substring(getLastDayOfMonth(formattedDate).length() - 2)) + " 00:00:00";
            energyUsed.setEndTime(sf.parse(endTime));
            while (i <= Integer.parseInt(getLastDayOfMonth(formattedDate).substring(getLastDayOfMonth(formattedDate).length() - 2))) {
                if (i > 9) {
                    hourDateTimeStr = formattedDate + "-" + i + " 00:00:00";
                } else {
                    hourDateTimeStr = formattedDate + "-0" + i + " 00:00:00";
                }
                MonthlyComprehensive report = new MonthlyComprehensive();
                report.setDataTime(sf.parse(hourDateTimeStr));
                report.setValue("value" + i);
                dataList.add(report);
                tableColumn.put("value" + i, i + "日");
                i++;
            }

            MonthlyComprehensive reportList = new MonthlyComprehensive();
            List<Map> table = new ArrayList<>();
            table.add(tableColumn);
            reportList.setTablehead(table);

            ModelNode modelNode = modelNodeService.getModelNodeByModelCodeByIndexCode(energyUsed.getIndexCode());
            if (ObjectUtils.isEmpty(modelNode)) {
                return AjaxResult.success(reportList);
            }
            List<MonthlyComprehensive> list = monthlyComprehensive.getMonthlyComprehensiveList(modelNode.getNodeId(), dataList,
                    energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
            int count = Integer.parseInt(getLastDayOfMonth(formattedDate).substring(getLastDayOfMonth(formattedDate).length() - 2));
            list.forEach(monthlyReport -> monthlyReport.setCount(count));
            if (CollectionUtils.isNotEmpty(list)) {
                list.forEach(this::valueRep);
            }
            ExcelUtil<MonthlyComprehensive> util = new ExcelUtil<>(MonthlyComprehensive.class);
            return util.exportExcel(list, "综合指标分析月");
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
