package com.zhitan.web.controller.model;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.model.domain.EnergyIndexQuery;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.service.IMeterPointService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/**
 * 指标点位信息Controller
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "指标管理")
@RequestMapping("/basicsetting/energyindex")
public class MeterPointController extends BaseController {

    private IMeterPointService meterPointService;

    /**
     * 查询指标信息列表
     */
    @PreAuthorize("@ss.hasPermi('energyindex:energyindex:query')")
    @GetMapping("/list")
    public TableDataInfo list(MeterPoint meterPoint, @RequestParam Long pageNum, @RequestParam Long pageSize) {
        EnergyIndexQuery query = new EnergyIndexQuery(meterPoint.getNodeId(), meterPoint.getName(),
                meterPoint.getPointCategory(), meterPoint.getPointType());
        Page<MeterPoint> list = meterPointService.pageMeterPoint(query, pageNum, pageSize);
        return getDataTable(list);
    }

    /**
     * 查询指标信息列表
     */
    @GetMapping("/filter")
    public AjaxResult filter(EnergyIndexQuery query) {
        List<MeterPoint> list = meterPointService.listMeterPointByQuery(query);
        return AjaxResult.success(list);
    }

    /**
     * 查询指标信息列表
     */
    @PreAuthorize("@ss.hasPermi('energyindex:energyindex:query')")
    @GetMapping("/collectIndex")
    public TableDataInfo listCollectIndex(String deviceId) {
        startPage();
        List<MeterPoint> list = meterPointService.listCollectPointByMeterId(deviceId);
        return getDataTable(list);
    }

    /**
     * 导出指标信息列表
     */
    @PreAuthorize("@ss.hasPermi('energyindex:energyindex:export')")
    @Log(title = "指标信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MeterPoint meterPoint) {
        List<MeterPoint> list = meterPointService.listMeterPointByQuery(meterPoint);
        ExcelUtil<MeterPoint> util = new ExcelUtil<>(MeterPoint.class);
        return util.exportExcel(list, "energyindex");
    }

    /**
     * 获取指标信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('energyindex:energyindex:query')")
    @GetMapping(value = "/{indexId}")
    public AjaxResult getInfo(@PathVariable("indexId") String indexId) {
        return AjaxResult.success(meterPointService.getMeterPointById(indexId));
    }

    /**
     * 新增指标信息
     */
    @PreAuthorize("@ss.hasPermi('energyindex:energyindex:add')")
    @Log(title = "指标信息", businessType = BusinessType.INSERT)
    @PostMapping(value = "/{nodeId}")
    public AjaxResult add(@PathVariable("nodeId") String nodeId,
                          @RequestBody MeterPoint meterPoint) {
        boolean isExist = meterPointService.meterPointExist(meterPoint.getCode());
        if (isExist) {
            return AjaxResult.error("指标编码不能重复！");
        } else {
            meterPoint.setPointId(UUID.randomUUID().toString());
            meterPointService.insertMeterPoint(nodeId, meterPoint);
            return AjaxResult.success();
        }
    }

    /**
     * 修改指标信息
     */
    @PreAuthorize("@ss.hasPermi('energyindex:energyindex:edit')")
    @Log(title = "指标信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MeterPoint meterPoint) {
        boolean isExist = meterPointService
                .meterPointExist(meterPoint.getPointId(), meterPoint.getCode());
        if (isExist) {
            return AjaxResult.error("指标编码不能重复！");
        } else {
            return toAjax(meterPointService.updateMeterPoint(meterPoint));
        }
    }

    /**
     * 删除采集指标信息
     */
    @PreAuthorize("@ss.hasPermi('energyindex:energyindex:remove')")
    @Log(title = "指标信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{indexIds}")
    public AjaxResult remove(@PathVariable String[] indexIds) {

        List<String> indexIdList = Arrays.asList(indexIds);
        if (ObjectUtils.isEmpty(indexIdList)) {
            return AjaxResult.success();
        }
        // 查询模型节点点位信息
        List<ModelNodePointInfo> modelNodePointInfoList = meterPointService.listModelNodePointByPointIds(indexIds);
        if (ObjectUtils.isNotEmpty(modelNodePointInfoList)) {
            ModelNodePointInfo modelNodePointInfo = modelNodePointInfoList.stream().findFirst().get();
            return AjaxResult.error("采集指标 " + modelNodePointInfo.getIndexName() + " 已被模型 " + modelNodePointInfo.getModelName() + " 关联，不能删除！");
        }

        meterPointService.deleteMeterPointByPoints(indexIdList);

        return AjaxResult.success();
    }

    /**
     * 删除统计指标信息
     */
    @PreAuthorize("@ss.hasPermi('energyindex:energyindex:remove')")
    @Log(title = "指标信息", businessType = BusinessType.DELETE)
    @DeleteMapping("{nodeId}/{indexIds}")
    public AjaxResult remove(@PathVariable String nodeId, @PathVariable String[] indexIds) {

        List<String> indexIdList = Arrays.asList(indexIds);
        if (ObjectUtils.isEmpty(indexIdList)) {
            return AjaxResult.success();
        }
        // 查询模型节点点位信息
        List<ModelNodePointInfo> modelNodePointInfoList = meterPointService.listModelNodePointByPointIds(indexIds);
        if (ObjectUtils.isNotEmpty(modelNodePointInfoList)) {
            if (modelNodePointInfoList.size() > 1) {
                return AjaxResult.error("该统计指标已被其他模型关联，不能删除！");
            }
        }

        meterPointService.deleteMeterPointByPoints(indexIdList);

        return AjaxResult.success();
    }

    @Log(title = "增加计量器具采集点", businessType = BusinessType.INSERT)
    @PostMapping("/meterIndex/{meterId}")
    public AjaxResult addCollectIndex(@PathVariable("meterId") String meterId) {
        try {
            return meterPointService.addMeterPoint(meterId);
        } catch (Exception ex) {
            logger.error("创建计量器具采集点失败！", ex);
            return AjaxResult.error();
        }
    }

    @GetMapping("/meterIndex/{meterId}")
    public AjaxResult getDeviceCollectIndex(@PathVariable("meterId") String meterId) {
        return AjaxResult.success(meterPointService.listMeterPointByMeterId(meterId));
    }

    @GetMapping("/includeChildrenNode/{nodeId}")
    public AjaxResult getIndexByNodeAndChildrenNode(@PathVariable("nodeId") String nodeId) {
        try {
            return AjaxResult.success(meterPointService.listMeterPointByNodeId(nodeId));
        } catch (Exception ex) {
            logger.error("获取关联采集指标出错！", ex);
            return AjaxResult.error("获取关联指标出错!");
        }
    }

    @GetMapping("/importTemplate")
    public AjaxResult importTemplate() {
        ExcelUtil<MeterPoint> util = new ExcelUtil<>(MeterPoint.class);
        return util.importTemplateExcel("指标数据");
    }

    @GetMapping("/getIndexByCode")
    public AjaxResult getIndexByCode(String code, String nodeId) {
        List<MeterPoint> meterPointList = meterPointService.listMeterPointByCodeAndNodeId(code, nodeId);
        return AjaxResult.success(meterPointList);
    }
}
