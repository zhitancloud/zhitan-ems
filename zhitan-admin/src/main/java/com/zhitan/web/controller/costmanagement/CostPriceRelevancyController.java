package com.zhitan.web.controller.costmanagement;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.framework.web.service.TokenService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.costmanagement.domain.CostPriceRelevancy;
import com.zhitan.costmanagement.service.ICostPriceRelevancyService;

/**
 * 单价关联Controller
 * 
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "单价关联管理")
@RequestMapping("/cost/relevancy")
public class CostPriceRelevancyController extends BaseController
{
    private ICostPriceRelevancyService costPriceRelevancyService;
    private TokenService tokenService;

    /**
     * 查询单价关联列表
     */
    @PreAuthorize("@ss.hasPermi('costmanagement:relevancy:list')")
    @GetMapping("/list")
    public TableDataInfo list(CostPriceRelevancy costPriceRelevancy,Long pageNum, Long pageSize)
    {
        startPage();
        Page<CostPriceRelevancy> page =  costPriceRelevancyService.selectCostPriceRelevancyList(costPriceRelevancy, pageNum, pageSize);
        return getDataTable(page);
    }

    /**
     * 获取单价关联详细信息
     */
    @PreAuthorize("@ss.hasPermi('costmanagement:relevancy:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(costPriceRelevancyService.selectCostPriceRelevancyById(id));
    }

    /**
     * 新增单价关联
     */
    @PreAuthorize("@ss.hasPermi('costmanagement:relevancy:add')")
    @Log(title = "单价关联", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostPriceRelevancy costPriceRelevancy)
    {
        return toAjax(costPriceRelevancyService.insertCostPriceRelevancy(costPriceRelevancy));
    }

    /**
     * 修改单价关联
     */
    @PreAuthorize("@ss.hasPermi('costmanagement:relevancy:edit')")
    @Log(title = "单价关联", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostPriceRelevancy costPriceRelevancy)
    {
        return toAjax(costPriceRelevancyService.updateCostPriceRelevancy(costPriceRelevancy));
    }

    /**
     * 删除单价关联
     */
    @PreAuthorize("@ss.hasPermi('costmanagement:relevancy:remove')")
    @Log(title = "单价关联", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(costPriceRelevancyService.deleteCostPriceRelevancyByIds(ids));
    }
}
