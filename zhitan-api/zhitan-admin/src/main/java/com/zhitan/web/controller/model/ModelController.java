package com.zhitan.web.controller.model;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.model.domain.Model;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.domain.vo.PointDataVO;
import com.zhitan.model.service.IModelService;
import com.zhitan.model.service.IModelNodeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 模型Controller
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "模型相关")
@RequestMapping("/basicsetting/model")
public class ModelController extends BaseController {

  @Resource
  private IModelService modelInfoService;
  @Resource
  private IModelNodeService modelNodeService;

  /**
   * 查询模型列表
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:model:list')")
  @GetMapping("/list")
  public AjaxResult list(Model model) {
    List<Model> list = modelInfoService.selectModelInfoList(model);
    return AjaxResult.success(list);
  }

  /**
   * 导出模型列表
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:model:export')")
  @Log(title = "模型", businessType = BusinessType.EXPORT)
  @GetMapping("/export")
  public AjaxResult export(Model model) {
    List<Model> list = modelInfoService.selectModelInfoList(model);
    ExcelUtil<Model> util = new ExcelUtil<Model>(Model.class);
    return util.exportExcel(list, "model");
  }

  /**
   * 获取模型详细信息
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:model:query')")
  @GetMapping(value = "/{modelCode}")
  public AjaxResult getInfo(@PathVariable("modelCode") String modelCode) {
    return AjaxResult.success(modelInfoService.selectModelInfoById(modelCode));
  }

  /**
   * 新增模型
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:model:add')")
  @Log(title = "模型", businessType = BusinessType.INSERT)
  @PostMapping
  public AjaxResult add(@RequestBody Model model) {
    return toAjax(modelInfoService.insertModelInfo(model));
  }

  /**
   * 修改模型
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:model:edit')")
  @Log(title = "模型", businessType = BusinessType.UPDATE)
  @PutMapping
  public AjaxResult edit(@RequestBody Model model) {
    return toAjax(modelInfoService.updateModelInfo(model));
  }

  /**
   * 删除模型
   */
  @PreAuthorize("@ss.hasPermi('basicsetting:model:remove')")
  @Log(title = "模型", businessType = BusinessType.DELETE)
  @DeleteMapping("/{modelCode}")
  public AjaxResult remove(@PathVariable String modelCode) {
    List<ModelNode> modelNodeList = modelNodeService.getModelNodeByModelCode(modelCode);
    if (ObjectUtils.isNotEmpty(modelNodeList)) {
      return AjaxResult.error("该模型已经配置节点或指标，不能删除！");
    }

    return toAjax(modelInfoService.deleteModelInfoByCode(modelCode));
  }

  /**
   * 根据模型id查询对应点位信息
   *
   * @param modelId 查询模型id
   * @return
   */
  @ApiOperation("根据模型id查询对应点位信息")
  @GetMapping("/getEnergyIndexByModelId")
  public AjaxResult listEnergyIndexByModelId(String modelId) {
    if (StringUtils.isEmpty(modelId)) {
      return AjaxResult.error("未找到查询模型信息");
    }
    List<PointDataVO> voList = modelInfoService.listEnergyIndexByModelId(modelId);
    return AjaxResult.success(voList);
  }
}
