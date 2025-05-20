package com.zhitan.web.controller.keyequipment;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.utils.DateTimeUtil;
import com.zhitan.common.utils.TypeTime;
import com.zhitan.keyequipment.domain.YearKeyEquipment;
import com.zhitan.keyequipment.service.IYearKeyEquipmentService;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.realtimedata.domain.EnergyUsed;
import com.zhitan.realtimedata.domain.dto.DataItemQueryDTO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
/**
 *重点设备能耗统计 年
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@RequestMapping("/keyEquipment/YearKeyEquipment")
@Api(value = "重点设备能耗统计（年）",tags = {"设备单耗分析"})
public class YearKeyEquipmentController extends BaseController {

    private IModelNodeService modelNodeService;
    private IYearKeyEquipmentService yearKeyEquipmentService;

    @GetMapping("/list")
    @ApiOperation(value = "重点设备能耗统计（年）列表")
    public AjaxResult list(EnergyUsed energyUsed) throws ParseException {
        List<ModelNode> nodeId = modelNodeService.getModelNodeByModelCode(energyUsed.getPointCode());
        if(CollectionUtils.isEmpty(nodeId)){
            return success(new ArrayList<>());
        }
        List<MeterPoint> energyList = modelNodeService.getSettingIndex(nodeId.get(0).getNodeId());
        if(CollectionUtils.isEmpty(energyList)){
            return success(new ArrayList<>());
        }
        List<String> indexIds = energyList.stream().map(MeterPoint::getPointId).collect(Collectors.toList());


       Date convertTime = DateTimeUtil.getEndTimeByType(energyUsed.getTimeType(), energyUsed.getDataTime());
       DateTime beginTime = DateUtil.beginOfYear(convertTime);
       DateTime endTime = DateUtil.endOfYear(convertTime);
       List<TypeTime> typeTimeList = DateTimeUtil.getDateTimeList(energyUsed.getTimeType(),convertTime);
        List<YearKeyEquipment> list = yearKeyEquipmentService.getYearKeyEquipmentList(indexIds, typeTimeList,beginTime,endTime, energyUsed.getTimeType(), energyUsed.getEnergyType());
        return success(list);
    }

    @GetMapping("/listChart")
    @ApiOperation(value = "重点设备能耗统计（年）图表")
    public AjaxResult listChart(DataItemQueryDTO queryDto){

        List<YearKeyEquipment> list = yearKeyEquipmentService.getListChart(queryDto);
        return AjaxResult.success(list);
    }
}
