package com.zhitan.web.controller.peakvalley;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.peakvalley.domain.SettingElectricityPriceDate;
import com.zhitan.peakvalley.service.ISettingElectricityPriceDateService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 尖峰平谷电价时间段Controller
 * 
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "尖峰平谷电价时间段")
@RequestMapping("/electricitypricedate")
public class SettingElectricityPriceDateController extends BaseController
{
    private ISettingElectricityPriceDateService electricityPriceDateService;

    /**
     * 查询尖峰平谷电价时间段列表
     */
    @PreAuthorize("@ss.hasPermi('system:date:list')")
    @GetMapping("/list")
    public TableDataInfo list(SettingElectricityPriceDate settingElectricityPriceDate, @RequestParam Long pageNum, @RequestParam Long pageSize)
    {
        Page<SettingElectricityPriceDate> list = electricityPriceDateService.selectElectricityPriceDatePage(settingElectricityPriceDate,pageNum,pageSize);
        return getDataTable(list);
    }

    /**
     * 导出尖峰平谷电价时间段列表
     */
    @PreAuthorize("@ss.hasPermi('system:date:export')")
    @Log(title = "尖峰平谷电价时间段", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SettingElectricityPriceDate settingElectricityPriceDate)
    {
        List<SettingElectricityPriceDate> list = electricityPriceDateService.selectElectricityPriceDateList(settingElectricityPriceDate);
        ExcelUtil<SettingElectricityPriceDate> util = new ExcelUtil<SettingElectricityPriceDate>(SettingElectricityPriceDate.class);
        util.exportExcel(response, list, "尖峰平谷电价时间段数据");
    }

    /**
     * 获取尖峰平谷电价时间段详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:date:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(electricityPriceDateService.selectElectricityPriceDateById(id));
    }

    /**
     * 新增尖峰平谷电价时间段
     */
    @PreAuthorize("@ss.hasPermi('system:date:add')")
    @Log(title = "尖峰平谷电价时间段", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SettingElectricityPriceDate settingElectricityPriceDate)
    {
        return toAjax(electricityPriceDateService.insertElectricityPriceDate(settingElectricityPriceDate));
    }

    /**
     * 修改尖峰平谷电价时间段
     */
    @PreAuthorize("@ss.hasPermi('system:date:edit')")
    @Log(title = "尖峰平谷电价时间段", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SettingElectricityPriceDate settingElectricityPriceDate)
    {
        return toAjax(electricityPriceDateService.updateElectricityPriceDate(settingElectricityPriceDate));
    }

    /**
     * 删除尖峰平谷电价时间段
     */
    @PreAuthorize("@ss.hasPermi('system:date:remove')")
    @Log(title = "尖峰平谷电价时间段", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(electricityPriceDateService.deleteElectricityPriceDateByIds(ids));
    }
}
