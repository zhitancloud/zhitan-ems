package com.zhitan.web.controller.energyMonitor;

import com.zhitan.common.annotation.Log;
import com.zhitan.common.constant.CommonConst;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.energyMonitor.service.IElectricPowerFactorService;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.service.IMeterPointService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * 功率因数
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "功率因数")
@RequestMapping("/powerFactorAnalysis")
public class ElectricPowerFactorController extends BaseController {

    private IElectricPowerFactorService electricPowerFactorService;
    private IMeterPointService energyIndexService;

    /**
     * 根据电表id获取功率因数数据
     *
     * @param nodeId   节点id
     * @param meterId  电表id
     * @param timeCode 时间值 与时间类型对应：2022-03-21
     */
    @Log(title = "根据电表id获取功率因数数据")
    @ApiOperation(value = "根据电表id获取功率因数数据", notes = "根据电表id获取功率因数数据")
    @GetMapping(value = "/detail")
    public AjaxResult list(@RequestParam(name = "nodeId") String nodeId,
                           @RequestParam(name = "meterId") String meterId,
                           @RequestParam(name = "timeCode") String timeCode) {
        MeterPoint meterPoint = energyIndexService.getMeterPointByMeterIdPointCodeAndNodeId(nodeId, meterId, CommonConst.TAG_CODE_GLYS);

        return AjaxResult.success(electricPowerFactorService.list(timeCode, meterPoint));
    }

}
