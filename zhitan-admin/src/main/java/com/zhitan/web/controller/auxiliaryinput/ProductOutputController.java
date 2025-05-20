package com.zhitan.web.controller.auxiliaryinput;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.productoutput.domain.ProductOutput;
import com.zhitan.productoutput.services.IProductOutputService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;

/**
 * 产品产量录入
 *
 * @author zhitan
 */
@RestController
@AllArgsConstructor
@Api(tags = "产品产量录入")
public class ProductOutputController extends BaseController {

    private IProductOutputService auxiliaryInputService;

    /**
     * 查询产品产量录入列表
     */
    @PreAuthorize("@ss.hasPermi('system:prodoutput:list')")
    @GetMapping("/productoutput/list")
    public TableDataInfo list(ProductOutput productOutput, @RequestParam Long pageNum, @RequestParam Long pageSize) {
        productOutput.setDataType("1");
        Page<ProductOutput> list = auxiliaryInputService.selectProductOutputPage(productOutput, pageNum, pageSize);
        return getDataTable(list);
    }

    /**
     * 导出产品产量录入列表
     */
    @PreAuthorize("@ss.hasPermi('system:prodoutput:export')")
    @Log(title = "产品产量录入", businessType = BusinessType.EXPORT)
    @PostMapping("/productoutput/export")
    public void export(HttpServletResponse response, ProductOutput productOutput) {
        productOutput.setDataType("1");
        List<ProductOutput> list = auxiliaryInputService.selectProductOutputList(productOutput);
        ExcelUtil<ProductOutput> util = new ExcelUtil<ProductOutput>(ProductOutput.class);
        util.exportExcel(response, list, "产品产量录入数据");
    }

    /**
     * 获取产品产量录入详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:prodoutput:query')")
    @GetMapping(value = "/productoutput/{productOutputId}")
    public AjaxResult getInfo(@PathVariable("productOutputId") String productOutputId) {
        return success(auxiliaryInputService.selectProductOutputById(productOutputId));
    }

    /**
     * 新增产品产量录入
     */
    @PreAuthorize("@ss.hasPermi('system:prodoutput:add')")
    @Log(title = "产品产量录入", businessType = BusinessType.INSERT)
    @PostMapping(value = "/productoutput")
    public AjaxResult add(@RequestBody ProductOutput productOutput) {
        productOutput.setProductOutputId(UUID.randomUUID().toString());
        productOutput.setDataType("1");
        return toAjax(auxiliaryInputService.insertProductOutput(productOutput));
    }

    /**
     * 修改产品产量录入
     */
    @PreAuthorize("@ss.hasPermi('system:prodoutput:edit')")
    @Log(title = "产品产量录入", businessType = BusinessType.UPDATE)
    @PutMapping(value = "/productoutput")
    public AjaxResult edit(@RequestBody ProductOutput productOutput) {
        return toAjax(auxiliaryInputService.updateProductOutput(productOutput));
    }

    /**
     * 删除产品产量录入
     */
    @PreAuthorize("@ss.hasPermi('system:prodoutput:remove')")
    @Log(title = "产品产量录入", businessType = BusinessType.DELETE)
    @DeleteMapping("/productoutput/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(auxiliaryInputService.deleteProductOutputByIds(ids));
    }


    /**
     * 查询能源仪表录入列表
     */
    @PreAuthorize("@ss.hasPermi('system:meter:list')")
    @GetMapping("/meter/list")
    public TableDataInfo meterList(ProductOutput productOutput, @RequestParam Long pageNum, @RequestParam Long pageSize) {
        productOutput.setDataType("2");
        Page<ProductOutput> list = auxiliaryInputService.selectProductOutputPage(productOutput, pageNum, pageSize);
        return getDataTable(list);
    }

    /**
     * 导出能源仪表录入列表
     */
    @PreAuthorize("@ss.hasPermi('system:meter:export')")
    @Log(title = "能源仪表录入", businessType = BusinessType.EXPORT)
    @PostMapping("/meter/export")
    public void meterExport(HttpServletResponse response, ProductOutput productOutput) {
        productOutput.setDataType("2");
        List<ProductOutput> list = auxiliaryInputService.selectProductOutputList(productOutput);
        ExcelUtil<ProductOutput> util = new ExcelUtil<ProductOutput>(ProductOutput.class);
        util.exportExcel(response, list, "能源仪表录入数据");
    }

    /**
     * 获取能源仪表录入详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:meter:query')")
    @GetMapping(value = "/meter/{productOutputId}")
    public AjaxResult meterGetInfo(@PathVariable("productOutputId") String productOutputId) {
        return success(auxiliaryInputService.selectProductOutputById(productOutputId));
    }

    /**
     * 新增能源仪表录入
     */
    @PreAuthorize("@ss.hasPermi('system:meter:add')")
    @Log(title = "能源仪表录入", businessType = BusinessType.INSERT)
    @PostMapping(value = "/meter")
    public AjaxResult meterAdd(@RequestBody ProductOutput productOutput) {
        productOutput.setProductOutputId(UUID.randomUUID().toString());
        productOutput.setDataType("2");
        return toAjax(auxiliaryInputService.insertProductOutput(productOutput));
    }

    /**
     * 修改能源仪表录入
     */
    @PreAuthorize("@ss.hasPermi('system:meter:edit')")
    @Log(title = "能源仪表录入", businessType = BusinessType.UPDATE)
    @PutMapping(value = "/meter")
    public AjaxResult meterEdit(@RequestBody ProductOutput productOutput) {
        return toAjax(auxiliaryInputService.updateProductOutput(productOutput));
    }

    /**
     * 删除能源仪表录入
     */
    @PreAuthorize("@ss.hasPermi('system:meter:remove')")
    @Log(title = "能源仪表录入", businessType = BusinessType.DELETE)
    @DeleteMapping("/meter/{ids}")
    public AjaxResult meterRemove(@PathVariable String[] ids) {
        return toAjax(auxiliaryInputService.deleteProductOutputByIds(ids));
    }

    /**
     * 查询能源指标录入列表
     */
    @PreAuthorize("@ss.hasPermi('system:energyindex:list')")
    @GetMapping("/energyindex/list")
    public TableDataInfo energyIndexList(ProductOutput productOutput, @RequestParam Long pageNum, @RequestParam Long pageSize) {
        productOutput.setDataType("3");
        Page<ProductOutput> list = auxiliaryInputService.selectProductOutputPage(productOutput, pageNum, pageSize);
        return getDataTable(list);
    }

    /**
     * 导出能源指标录入列表
     */
    @PreAuthorize("@ss.hasPermi('system:energyindex:export')")
    @Log(title = "能源指标录入", businessType = BusinessType.EXPORT)
    @PostMapping("/energyindex/export")
    public void energyIndexExport(HttpServletResponse response, ProductOutput productOutput) {
        productOutput.setDataType("3");
        List<ProductOutput> list = auxiliaryInputService.selectProductOutputList(productOutput);
        ExcelUtil<ProductOutput> util = new ExcelUtil<ProductOutput>(ProductOutput.class);
        util.exportExcel(response, list, "能源指标录入数据");
    }

    /**
     * 获取能源指标录入详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:energyindex:query')")
    @GetMapping(value = "/energyindex/{productOutputId}")
    public AjaxResult energyIndexGetInfo(@PathVariable("productOutputId") String productOutputId) {
        return success(auxiliaryInputService.selectProductOutputById(productOutputId));
    }

    /**
     * 新增能源指标录入
     */
    @PreAuthorize("@ss.hasPermi('system:energyindex:add')")
    @Log(title = "能源指标录入", businessType = BusinessType.INSERT)
    @PostMapping(value = "/energyindex")
    public AjaxResult energyIndexAdd(@RequestBody ProductOutput productOutput) {
        productOutput.setProductOutputId(UUID.randomUUID().toString());
        productOutput.setDataType("3");
        return toAjax(auxiliaryInputService.insertProductOutput(productOutput));
    }

    /**
     * 修改能源指标录入
     */
    @PreAuthorize("@ss.hasPermi('system:energyindex:edit')")
    @Log(title = "能源指标录入", businessType = BusinessType.UPDATE)
    @PutMapping(value = "/energyindex")
    public AjaxResult energyIndexEdit(@RequestBody ProductOutput productOutput) {
        return toAjax(auxiliaryInputService.updateProductOutput(productOutput));
    }

    /**
     * 删除能源指标录入
     */
    @PreAuthorize("@ss.hasPermi('system:energyindex:remove')")
    @Log(title = "能源指标录入", businessType = BusinessType.DELETE)
    @DeleteMapping("/energyindex/{ids}")
    public AjaxResult energyIndexRemove(@PathVariable String[] ids) {
        return toAjax(auxiliaryInputService.deleteProductOutputByIds(ids));
    }
}
