package com.zhitan.web.controller.costmanagement;

import java.math.BigDecimal;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.core.domain.model.LoginUser;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.utils.ServletUtils;
import com.zhitan.framework.web.service.TokenService;
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
import com.zhitan.costmanagement.domain.InputElectricityCost;
import com.zhitan.costmanagement.service.IInputElectricityCostService;

/**
 * 【请填写功能名称】Controller
 * 
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@RequestMapping("/cost/input")
public class InputElectricityCostController extends BaseController
{
    private IInputElectricityCostService costElectricityInputService;
    private TokenService tokenService;

    @PreAuthorize("@ss.hasPermi('system:Input:list')")
    @GetMapping("/list")
    public TableDataInfo list(InputElectricityCost inputElectricityCost, Long pageNum, Long pageSize)
    {
        Page<InputElectricityCost> page =  costElectricityInputService.selectCostElectricityInputList(inputElectricityCost, pageNum, pageSize);
        return getDataTable(page);
    }


    @PreAuthorize("@ss.hasPermi('system:Input:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(costElectricityInputService.selectCostElectricityInputById(id));
    }

    @PreAuthorize("@ss.hasPermi('system:Input:add')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody InputElectricityCost inputElectricityCost) throws Exception {
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        inputElectricityCost.setCreateBy(loginUser.getUsername());
        //校验尖峰平谷电量相加是否=总用电
        BigDecimal total = inputElectricityCost.getFlatElectricity().add(inputElectricityCost.getSharpElectricity()).
                add(inputElectricityCost.getPeakElectricity()).add(inputElectricityCost.getValleyElectricity());
        if(total.compareTo(inputElectricityCost.getElectricityNum())!=0){
                return AjaxResult.error("尖峰平谷电量相加不等于总用电量");
        }
        return toAjax(costElectricityInputService.insertCostElectricityInput(inputElectricityCost));
    }

    @PreAuthorize("@ss.hasPermi('system:Input:edit')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody InputElectricityCost inputElectricityCost) throws Exception {
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        inputElectricityCost.setUpdateBy(loginUser.getUsername());
        //校验尖峰平谷电量相加是否=总用电
        BigDecimal total = inputElectricityCost.getFlatElectricity().add(inputElectricityCost.getSharpElectricity()).
                add(inputElectricityCost.getPeakElectricity()).add(inputElectricityCost.getValleyElectricity());
        if(total.compareTo(inputElectricityCost.getElectricityNum())!=0){
            return AjaxResult.error("尖峰平谷电量相加不等于总用电量");
        }
        return toAjax(costElectricityInputService.updateCostElectricityInput(inputElectricityCost));
    }

    @PreAuthorize("@ss.hasPermi('system:Input:remove')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(costElectricityInputService.deleteCostElectricityInputByIds(ids));
    }
}
