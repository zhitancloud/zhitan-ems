package com.zhitan.web.controller.processenergy;

import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.processenergy.domain.DailyProcessEnergy;
import com.zhitan.processenergy.service.IDailyProcessEnergyService;
import com.zhitan.realtimedata.domain.EnergyUsed;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 工序能耗 日
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(value = "工序能耗统计（日）", tags = {"工序能耗统计"})
@RequestMapping("/processEnergy/dailyProcessEnergy")
public class DailyProcessEnergyController extends BaseController {

    private IModelNodeService modelNodeService;
    private IDailyProcessEnergyService dailyProcessEnergy;

    @GetMapping("/list")
    @ApiOperation(value = "工序能耗统计（日）列表")
    public AjaxResult list(EnergyUsed energyUsed) throws ParseException{
        List<ModelNode> nodeId = modelNodeService.getModelNodeByModelCode(energyUsed.getPointCode());
        if(CollectionUtils.isEmpty(nodeId)){
            return success(new ArrayList<>());
        }
        List<MeterPoint> energyList = modelNodeService.getSettingIndex(nodeId.get(0).getNodeId());
        if(CollectionUtils.isEmpty(energyList)){
            return success(new ArrayList<>());
        }
        List<String> indexIds = energyList.stream().map(MeterPoint::getPointId).collect(Collectors.toList());
        List<DailyProcessEnergy> dataList = new ArrayList<>();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String aa= df.format(energyUsed.getDataTime());
        String bb;
        int i = 0;
        energyUsed.setBeginTime(energyUsed.getDataTime());
        String endTime=aa+" 24:00:00";
        energyUsed.setEndTime(sf.parse(endTime));
        while (i < 24) {
            if(i>9){
                bb=aa+" "+i+":00:00";
            }else{
                bb=aa+" 0"+i+":00:00";
            }
            DailyProcessEnergy report=new DailyProcessEnergy();
            report.setDataTime(sf.parse(bb));
            report.setValue("value"+i);
            dataList.add(report);
            i++;
        }
        List<DailyProcessEnergy> list = dailyProcessEnergy.getDailyProcessEnergyList(indexIds, dataList, energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
        return success(list);
    }

    @GetMapping("/listChart")
    @ApiOperation(value = "工序能耗（日）图表")
    public AjaxResult listChart(EnergyUsed energyUsed) throws ParseException {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String aa= df.format(energyUsed.getDataTime());
        energyUsed.setBeginTime(energyUsed.getDataTime());
        String endTime=aa+" 24:00:00";
        energyUsed.setEndTime(sf.parse(endTime));
        List<DailyProcessEnergy> list = dailyProcessEnergy.getListChart(energyUsed.getPointId(), energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
        return AjaxResult.success(list);
    }
}
