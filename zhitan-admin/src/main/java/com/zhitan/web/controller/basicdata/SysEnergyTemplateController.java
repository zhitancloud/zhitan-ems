package com.zhitan.web.controller.basicdata;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.basicdata.domain.SysEnergyTemplate;
import com.zhitan.basicdata.services.ISysEnergyTemplateService;
import com.zhitan.common.annotation.Log;
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
 * 能源品种设置Controller
 *
 * @author zhitan
 */
@RestController
@AllArgsConstructor
@Api(value = "能源品种设置controller",tags = {"能源品种设置管理"})
@RequestMapping("/enerInfoManage/enerclass")
public class SysEnergyTemplateController extends BaseController
{
    private ISysEnergyTemplateService sysEnerclassService;

    /**
     * 查询能源品种设置列表
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:enerclass:list')")
    @GetMapping("/page")
    public TableDataInfo page(SysEnergyTemplate sysEnergyTemplate, Long pageNum, Long pageSize)
    {
        Page<SysEnergyTemplate> list = sysEnerclassService.selectSysEnerclassPage(sysEnergyTemplate, pageNum, pageSize);
        return getDataTable(list);
    }

    /**
     * 查询所有能源品种设置列表
     */
    @GetMapping("/list")
    public AjaxResult list(SysEnergyTemplate sysEnergyTemplate)
    {
        List<SysEnergyTemplate> list = sysEnerclassService.selectSysEnerclassList(sysEnergyTemplate);
        return AjaxResult.success(list);
    }

    /**
     * 导出能源品种设置列表
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:enerclass:export')")
    @Log(title = "能源品种设置", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(SysEnergyTemplate sysEnergyTemplate)
    {
        List<SysEnergyTemplate> list = sysEnerclassService.selectSysEnerclassList(sysEnergyTemplate);
        ExcelUtil<SysEnergyTemplate> util = new ExcelUtil<SysEnergyTemplate>(SysEnergyTemplate.class);
        return util.exportExcel(list, "enerclass");
    }

    /**
     * 获取能源品种设置详细信息
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:enerclass:query')")
    @GetMapping(value = "/{enerclassid}")
    public AjaxResult getInfo(@PathVariable("enerclassid") Integer enerclassid)
    {
        return AjaxResult.success(sysEnerclassService.selectSysEnerclassById(enerclassid));
    }

    /**
     * 新增能源品种设置
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:enerclass:add')")
    @Log(title = "能源品种设置", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysEnergyTemplate sysEnergyTemplate) {
        //非空校验
        String name = sysEnergyTemplate.getName();
        if(name.length()>10){
            return AjaxResult.error("新增失败，能源名称超长！");
        }
        Integer nameNum = sysEnerclassService.selectSameEnergyNameNum(name);
        if (nameNum==0){
            return toAjax(sysEnerclassService.insertSysEnerclass(sysEnergyTemplate));
        }
        return AjaxResult.error("新增失败，请检查能源名称是否重复！");
    }

    /**
     * 修改能源品种设置
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:enerclass:edit')")
    @Log(title = "能源品种设置", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysEnergyTemplate sysEnergyTemplate) {
        //唯一校验
        Integer id = sysEnergyTemplate.getId();
        String enerName = sysEnergyTemplate.getName();
        if(enerName.length()>10){
            return AjaxResult.error("修改失败，能源名称超长！");
        }
        // 通过要改的能源名称查已有一样的能源名称有几个,如果等于1就要通过id判断是不是改自己
        if(sysEnerclassService.selectSameEnergyNameNum(enerName) == 1
                && id.equals(sysEnerclassService.selectIdByName(enerName))){
            return toAjax(sysEnerclassService.updateSysEnerclass(sysEnergyTemplate));
        // 如果=0 就说明这个能源名称可改
        }else if(sysEnerclassService.selectSameEnergyNameNum(enerName)==0){
            return toAjax(sysEnerclassService.updateSysEnerclass(sysEnergyTemplate));
        }
        return AjaxResult.error("修改失败，能源名称重复！");
    }

    /**
     * 删除能源品种设置
     */
    @PreAuthorize("@ss.hasPermi('enerInfoManage:enerclass:remove')")
    @Log(title = "能源品种设置", businessType = BusinessType.DELETE)
	@DeleteMapping("/{enerclassids}")
    public AjaxResult remove(@PathVariable Integer[] enerclassids)
    {
        return toAjax(sysEnerclassService.deleteSysEnerclassByIds(enerclassids));
    }
}
