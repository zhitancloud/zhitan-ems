package com.zhitan.web.controller.meter;


import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.meter.domain.MeterAnnex;
import com.zhitan.meter.services.IMeterAnnexService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 计量器具档案附件Controller
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "计量器具档案附件管理")
@RequestMapping("/meter/annex")
public class MeterAnnexController extends BaseController {
    private IMeterAnnexService meterAnnexService;

    /**
     * 查询计量器具档案附件列表
     */
    @PreAuthorize("@ss.hasPermi('meter:annex:list')")
    @GetMapping("/list")
    public TableDataInfo list(MeterAnnex meterAnnex) {
        startPage();
        List<MeterAnnex> list = meterAnnexService.selectMeterAnnexList(meterAnnex);
        return getDataTable(list);
    }

    /**
     * 导出计量器具档案附件列表
     */
    @PreAuthorize("@ss.hasPermi('meter:annex:export')")
    @Log(title = "计量器具档案附件", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MeterAnnex meterAnnex) {
        List<MeterAnnex> list = meterAnnexService.selectMeterAnnexList(meterAnnex);
        ExcelUtil<MeterAnnex> util = new ExcelUtil<MeterAnnex>(MeterAnnex.class);
        return util.exportExcel(list, "annex");
    }
}
