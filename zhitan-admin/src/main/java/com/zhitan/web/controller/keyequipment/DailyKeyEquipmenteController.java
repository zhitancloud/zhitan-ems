package com.zhitan.web.controller.keyequipment;

import com.zhitan.basicdata.domain.Device;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.keyequipment.domain.DailyKeyEquipment;
import com.zhitan.keyequipment.service.IDailyKeyEquipmentService;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.domain.vo.MeterPointVO;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.realtimedata.domain.dto.EnergyUsedDTO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
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
 * 重点设备能耗统计 日
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(value = "重点设备能耗统计（日）", tags = {"设备单耗分析"})
@RequestMapping("/keyEquipment/dailyKeyEquipment")
public class DailyKeyEquipmenteController extends BaseController {

    private IModelNodeService modelNodeService;
    private IDailyKeyEquipmentService dailykeyEquipment;

    @GetMapping("/list")
    @ApiOperation(value = "重点设备能耗分析（日）列表")
    public AjaxResult list(EnergyUsedDTO energyUsed) throws ParseException {
        List<ModelNode> nodeId = modelNodeService.getModelNodeByModelCode(energyUsed.getIndexCode());
        if (CollectionUtils.isEmpty(nodeId)) {
            return success(new ArrayList<>());
        }
        List<MeterPointVO> energyList = modelNodeService.getSettingIndex(nodeId.get(0).getNodeId());
        if (CollectionUtils.isEmpty(energyList)) {
            return success(new ArrayList<>());
        }
        List<String> indexIds = energyList.stream().map(MeterPointVO::getPointId).collect(Collectors.toList());
        List<DailyKeyEquipment> dataList = new ArrayList<>();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String aa = df.format(energyUsed.getDataTime());
        String bb;
        int i = 0;
        energyUsed.setBeginTime(energyUsed.getDataTime());
        String endTime = aa + " 24:00:00";
        energyUsed.setEndTime(sf.parse(endTime));
        while (i < 24) {
            if (i > 9) {
                bb = aa + " " + i + ":00:00";
            } else {
                bb = aa + " 0" + i + ":00:00";
            }
            DailyKeyEquipment report = new DailyKeyEquipment();
            report.setDataTime(sf.parse(bb));
            report.setValue("value" + i);
            dataList.add(report);
            i++;
        }

        List<DailyKeyEquipment> list = dailykeyEquipment.getdailyKeyEquipmentList(indexIds, dataList, energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());

        return success(list);
    }

    @GetMapping("/listChart")
    @ApiOperation(value = "重点设备能耗分析（日）图表")
    public AjaxResult listChart(EnergyUsedDTO energyUsed) throws ParseException {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String aa = df.format(energyUsed.getDataTime());
        energyUsed.setBeginTime(energyUsed.getDataTime());
        String endTime = aa + " 24:00:00";
        energyUsed.setEndTime(sf.parse(endTime));
        List<DailyKeyEquipment> list = dailykeyEquipment.getListChart(energyUsed.getPointId(), energyUsed.getBeginTime(), energyUsed.getEndTime(), energyUsed.getTimeType(), energyUsed.getEnergyType());
        return AjaxResult.success(list);
    }

    /*所有设备*/
    @GetMapping("/getFacilityArchives")
    @ApiOperation(value = "查询重点设备列表")
    public AjaxResult getFacilityArchives() {
        try {
            List<Device> list = dailykeyEquipment.getFacilityArchives();
            return AjaxResult.success(list);
        } catch (Exception ex) {
            logger.error("获取设备出错！", ex);
            return AjaxResult.error("获取标题出错!");
        }
    }

    /**
     * 重点能耗设备
     */
    @GetMapping("/getPointFacility")
    @ApiOperation(value = "查询重点设备列表")
    public AjaxResult getPointFacility() {
        try {
            List<Device> list = dailykeyEquipment.getPointFacility();
            return AjaxResult.success(list);
        } catch (Exception ex) {
            logger.error("获取设备出错！", ex);
            return AjaxResult.error("获取标题出错!");
        }
    }
}
