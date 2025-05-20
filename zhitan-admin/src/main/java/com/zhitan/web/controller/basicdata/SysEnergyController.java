package com.zhitan.web.controller.basicdata;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.basicdata.domain.SysEnergy;
import com.zhitan.basicdata.services.ISysEnergyService;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.constant.UserConstants;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * energyController
 *
 * @author zhitan
 */
@RestController
@AllArgsConstructor
@Api(tags = "系统选用能源品种")
@RequestMapping("/enerInfoManage/energy")
public class SysEnergyController extends BaseController {
    private ISysEnergyService sysEnergyService;

    /**
     * 查询energy列表
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:energy:list')")
    @GetMapping("/page")
    public TableDataInfo page(SysEnergy sysEnergy, Long pageNum, Long pageSize) {
        Page<SysEnergy> list = sysEnergyService.selectSysEnergyPage(sysEnergy, pageNum, pageSize);
        return getDataTable(list);
    }

    /**
     * 查询energy列表
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:energy:list')")
    @GetMapping("/list")
    public AjaxResult list(SysEnergy sysEnergy) {
        List<SysEnergy> list = sysEnergyService.selectSysEnergyList(sysEnergy);
        return AjaxResult.success(list);
    }

    /**
     * 导出energy列表
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:energy:export')")
    @Log(title = "energy", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(SysEnergy sysEnergy) {
        List<SysEnergy> list = sysEnergyService.selectSysEnergyList(sysEnergy);
        ExcelUtil<SysEnergy> util = new ExcelUtil<SysEnergy>(SysEnergy.class);
        return util.exportExcel(list, "energy");
    }

    /**
     * 获取energy详细信息
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:energy:list')")
    @GetMapping(value = "/{enerid}")
    public AjaxResult getInfo(@PathVariable("enerid") Integer enerid) {
        SysEnergy sysEnergy = sysEnergyService.selectSysEnergyById(enerid);
        if (UserConstants.YES.equals(sysEnergy.getIsstorage())) {
            sysEnergy.setIsstorageString("是");
        } else {
            sysEnergy.setIsstorageString("否");
        }
        return AjaxResult.success(sysEnergy);
    }

    /**
     * 新增energy
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:energy:add')")
    @Log(title = "energy", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysEnergy sysEnergy) {
        //非空校验
        String name = sysEnergy.getEnername();
        if (name.length() > 10) {
            return AjaxResult.error("新增失败，能源名称超长！");
        }
        SysEnergy nameNum = sysEnergyService.selectSameEnergyNameNum(name);
        SysEnergy codeNum = sysEnergyService.selectSameEnergyCodeNum(sysEnergy.getEnersno());
        if (null != nameNum) {
            return AjaxResult.error("新增失败，请检查能源名称是否重复！");
        }
        if (null != codeNum) {
            return AjaxResult.error("新增失败，请检查能源编号是否重复！");
        }
        return toAjax(sysEnergyService.insertSysEnergy(sysEnergy));
    }

    /**
     * 修改energy
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:energy:edit')")
    @Log(title = "energy", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysEnergy sysEnergy) {
        String enerName = sysEnergy.getEnername();
        //唯一校验
        Integer id = sysEnergy.getEnerid();
        if (enerName.length() > 10) {
            return AjaxResult.error("修改失败，能源名称超长！");
        }
        SysEnergy nameNum = sysEnergyService.selectSameEnergyNameNum(enerName);
        SysEnergy codeNum = sysEnergyService.selectSameEnergyCodeNum(sysEnergy.getEnersno());

        if (null != nameNum && !nameNum.getEnerid().equals(sysEnergy.getEnerid())) {
            return AjaxResult.error("修改失败，请检查能源名称是否重复！");
        }
        if (null != codeNum && !codeNum.getEnerid().equals(sysEnergy.getEnerid())) {
            return AjaxResult.error("修改失败，请检查能源编号是否重复！");
        }
        return toAjax(sysEnergyService.updateSysEnergy(sysEnergy));
    }

    /**
     * 删除energy
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:energy:remove')")
    @Log(title = "energy", businessType = BusinessType.DELETE)
    @DeleteMapping("/{enerids}")
    public AjaxResult remove(@PathVariable Integer[] enerids) {
        return toAjax(sysEnergyService.deleteSysEnergyByIds(enerids));
    }
}
