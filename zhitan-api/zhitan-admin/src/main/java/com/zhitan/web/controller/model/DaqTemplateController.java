package com.zhitan.web.controller.model;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.model.domain.PointTemplate;
import com.zhitan.model.service.IPointTemplateService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

/**
 * 采集参数模板Controller
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "采集参数模板管理")
@RequestMapping("/system/template")
public class DaqTemplateController extends BaseController {
  private IPointTemplateService pointTemplateService;

  /**
   * 查询采集参数模板列表
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:template:query')")
  @GetMapping("/list")
  public TableDataInfo list(PointTemplate pointTemplate, @RequestParam Long pageNum, @RequestParam Long pageSize) {
    Page<PointTemplate> list = pointTemplateService.selectPointTemplatePage(pointTemplate,pageNum,pageSize);
    return getDataTable(list);
  }

  /**
   * 导出采集参数模板列表
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:template:query')")
  @Log(title = "采集参数模板" , businessType = BusinessType.EXPORT)
  @GetMapping("/export")
  public AjaxResult export(PointTemplate pointTemplate) {
    List<PointTemplate> list = pointTemplateService.selectPointTemplateList(pointTemplate);
    ExcelUtil<PointTemplate> util = new ExcelUtil<PointTemplate>(PointTemplate.class);
    return util.exportExcel(list, "template");
  }

  /**
   * 获取采集参数模板详细信息
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:template:query')")
  @GetMapping(value = "/{id}")
  public AjaxResult getInfo(@PathVariable("id") String id) {
    return AjaxResult.success(pointTemplateService.selectPointTemplateById(id));
  }

  /**
   * 新增采集参数模板
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:template:add')")
  @Log(title = "采集参数模板" , businessType = BusinessType.INSERT)
  @PostMapping
  public AjaxResult add(@RequestBody PointTemplate pointTemplate) {
    pointTemplate.setId(UUID.randomUUID().toString());
    boolean isExist = pointTemplateService.hasExist(pointTemplate.getCode(), pointTemplate.getDeviceType());
    if (isExist) {
      return AjaxResult.error("相同设备类型下的参数编码不能重复！");
    }
    boolean isCodeExist = pointTemplateService.codeHasExist(pointTemplate.getGatewayKey(), pointTemplate.getDeviceType());
    if (isCodeExist) {
      return AjaxResult.error("相同设备类型下的采集参数编码不能重复！");
    }
    return toAjax(pointTemplateService.insertPointTemplate(pointTemplate));
  }

  /**
   * 修改采集参数模板
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:template:edit')")
  @Log(title = "采集参数模板" , businessType = BusinessType.UPDATE)
  @PutMapping
  public AjaxResult edit(@RequestBody PointTemplate pointTemplate) {
    boolean isExist = pointTemplateService.hasExist(pointTemplate);
    if (isExist) {
      return AjaxResult.error("相同设备类型下的参数编码不能重复！");
    }
    boolean isCodeExist = pointTemplateService.codeHasExist(pointTemplate);
    if (isCodeExist) {
      return AjaxResult.error("相同设备类型下的采集参数编码不能重复！");
    }
    return toAjax(pointTemplateService.updatePointTemplate(pointTemplate));
  }
  /**
   * 删除采集参数模板
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:template:remove')")
  @Log(title = "采集参数模板" , businessType = BusinessType.DELETE)
  @DeleteMapping("/{ids}")
  public AjaxResult remove(@PathVariable String[] ids) {
    return toAjax(pointTemplateService.deletePointTemplateByIds(ids));
  }
}
