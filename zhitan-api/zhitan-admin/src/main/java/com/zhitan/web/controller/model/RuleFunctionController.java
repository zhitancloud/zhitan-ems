package com.zhitan.web.controller.model;


import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.common.utils.uuid.UUID;
import com.zhitan.model.domain.RuleFunction;
import com.zhitan.model.service.IRuleFunctionService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 计算函数Controller
 *
 * @author zhitan
 */
@RestController
@RequestMapping("/basicsetting/function")
@Api(value = "计算公式管理",tags = {"计算公式管理"})
public class RuleFunctionController extends BaseController
{
    @Autowired
    private IRuleFunctionService functionService;

    /**
     * 查询计算函数列表
     */
    @PreAuthorize("@ss.hasPermi('basicsetting:function:list')")
    @GetMapping("/list")
    @ApiOperation(value = "计算函数列表")
    public TableDataInfo list(RuleFunction ruleFunction)
    {
        startPage();
        List<RuleFunction> list = functionService.selectFunctionList(ruleFunction);
        return getDataTable(list);
    }

    /**
     * 导出计算函数列表
     */
    @ApiOperation(value = "计算函数列表导出")
    @PreAuthorize("@ss.hasPermi('basicsetting:function:export')")
    @Log(title = "计算函数", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(RuleFunction ruleFunction)
    {
        List<RuleFunction> list = functionService.selectFunctionList(ruleFunction);
        ExcelUtil<RuleFunction> util = new ExcelUtil<RuleFunction>(RuleFunction.class);
        return util.exportExcel(list, "function");
    }

    /**
     * 获取计算函数详细信息
     */
    @ApiOperation(value = "获取计算函数详细信息")
    @PreAuthorize("@ss.hasPermi('basicsetting:function:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(functionService.selectFunctionById(id));
    }

    /**
     * 新增计算函数
     */
    @PreAuthorize("@ss.hasPermi('basicsetting:function:add')")
    @Log(title = "计算函数", businessType = BusinessType.INSERT)
    @PostMapping
    @ApiOperation(value = "新增计算函数")
    public AjaxResult add(@RequestBody RuleFunction ruleFunction)
    {
        ruleFunction.setId(UUID.fastUUID().toString());
        return toAjax(functionService.insertFunction(ruleFunction));
    }

    /**
     * 修改计算函数
     */
    @PreAuthorize("@ss.hasPermi('basicsetting:function:edit')")
    @Log(title = "计算函数", businessType = BusinessType.UPDATE)
    @PutMapping
    @ApiOperation(value = "编辑计算函数")
    public AjaxResult edit(@RequestBody RuleFunction ruleFunction)
    {
        return toAjax(functionService.updateFunction(ruleFunction));
    }

    /**
     * 删除计算函数
     */
    @PreAuthorize("@ss.hasPermi('basicsetting:function:remove')")
    @Log(title = "计算函数", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    @ApiOperation(value = "删除计算函数")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(functionService.deleteFunctionByIds(ids));
    }
}
