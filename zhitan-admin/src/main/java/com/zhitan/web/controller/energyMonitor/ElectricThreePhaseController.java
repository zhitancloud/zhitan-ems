package com.zhitan.web.controller.energyMonitor;

import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.energyMonitor.service.IElectricThreePhaseService;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.service.IMeterPointService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Description: 三相不平衡
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "三相不平衡")
@RequestMapping("/threePhaseUnbalanceAnalysis")
public class ElectricThreePhaseController extends BaseController {

    private IElectricThreePhaseService electricThreePhaseService;
    private IMeterPointService meterPointService;

    /**
     * 获取用能单元下的某个电表的三相不平衡数据
     *
     * @param nodeId 节点id
     * @param meterId      电表id
     * @param timeType     时间类型 DAY/MONTH/YEAR
     * @param timeCode     时间值 与时间类型对应：2022-03-21/2022-03/2022
     * @param requestType  请求类型：0.电压；1.电流
     * @return
     */
    @Log(title = "根据电表id查询三相不平衡数据")
    @ApiOperation(value = "根据电表id查询三相不平衡数据", notes = "根据电表id查询三相不平衡数据")
    @GetMapping(value = "/detail")
    public AjaxResult list(@RequestParam(name = "nodeId") String nodeId,
                           @RequestParam(name = "meterId", required = false) String meterId,
                           @RequestParam(name = "timeType") String timeType,
                           @RequestParam(name = "timeCode") String timeCode,
                           @RequestParam(name = "requestType") String requestType) {
        if (ObjectUtils.isEmpty(meterId)){
            return AjaxResult.error("电表id不能为空");
        }

        List<MeterPoint> meterPointList = meterPointService.listMeterPointByNodeIdAndMeterId(nodeId, meterId);

        return AjaxResult.success(electricThreePhaseService.list(timeType, timeCode, meterPointList, requestType, meterId));
    }

}
