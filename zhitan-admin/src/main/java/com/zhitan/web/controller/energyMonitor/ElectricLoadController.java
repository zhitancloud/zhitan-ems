package com.zhitan.web.controller.energyMonitor;

import com.zhitan.common.annotation.Log;
import com.zhitan.common.constant.CommonConst;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.energyMonitor.domain.vo.ListElectricLoadVO;
import com.zhitan.energyMonitor.domain.vo.ListElectricityMeterVO;
import com.zhitan.energyMonitor.service.IElectricLoadService;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.service.IMeterPointService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 负荷分析
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "负荷分析")
@RequestMapping("/loadAnalysis")
public class ElectricLoadController extends BaseController {
    private IElectricLoadService electricLoadService;
    private IMeterPointService energyIndexService;

    /**
     * 根据电表id获取负荷分析数据
     *
     * @param nodeId   用能单元id
     * @param meterId  电表id
     * @param timeType 时间类型 DAY/MONTH/YEAR
     * @param timeCode 时间值 与时间类型对应：2022-03-21/2022-03/2022
     */
    @Log(title = "根据电表id获取负荷分析数据")
    @ApiOperation(value = "根据电表id获取负荷分析数据", notes = "根据电表id获取负荷分析数据")
    @GetMapping(value = "/detail")
    public AjaxResult list(@RequestParam(name = "nodeId") String nodeId,
                           @RequestParam(name = "meterId", required = false) String meterId,
                           @RequestParam(name = "timeType") String timeType,
                           @RequestParam(name = "timeCode") String timeCode) {
        MeterPoint meterPoint = energyIndexService.getMeterPointByMeterIdPointCodeAndNodeId(nodeId, meterId, CommonConst.TAG_CODE_ZYGGL);

        ListElectricLoadVO vo = electricLoadService.list(timeType, timeCode, meterPoint, meterId);
        return AjaxResult.success(vo);
    }

    @Log(title = "获取节点下所有电表")
    @ApiOperation(value = "获取节点下所有电表", notes = "获取节点下所有电表")
    @GetMapping(value = "/listElectricMeter")
    public AjaxResult listElectricMeter(@RequestParam(name = "nodeId") String nodeId) {
        List<ListElectricityMeterVO> vo = electricLoadService.listElectricMeter(nodeId);
        return AjaxResult.success(vo);
    }

}
