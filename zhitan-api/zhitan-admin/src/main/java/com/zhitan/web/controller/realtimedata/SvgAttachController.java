package com.zhitan.web.controller.realtimedata;

import com.zhitan.basicSetup.service.ISvgAttachService;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.config.BaseConfig;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.file.FileUploadUtils;
import com.zhitan.common.utils.uuid.UUID;
import com.zhitan.realtimedata.domain.SvgAttach;
import com.zhitan.realtimedata.domain.SvgSetting;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;


/**
 * 拓扑图Controller
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(value = "系统图", tags = {"系统图"})
@RequestMapping("/equipmentFile")
public class SvgAttachController extends BaseController {

  private ISvgAttachService sysEquipmentFileService;

  /**
   * 上传图：仅限于格式为svg、jpg、png、gif
   * @param file
   * @return
   * @throws IOException
   */
  @PostMapping(value = "/upload")
  @Log(title = "系统图", businessType = BusinessType.IMPORT)
  public AjaxResult upload(MultipartFile file) throws IOException {
    if (!file.isEmpty()) {
      String fileSuffix = FileUploadUtils.getExtension(file);
      if (StringUtils.containsIgnoreCase(".svg,.jpg,.png,.gif", fileSuffix)) {
        //文件最终保存的绝对路径
        String filePath = FileUploadUtils.upload(BaseConfig.getUploadPath(), file);
        return AjaxResult.success(filePath);
      }
      return AjaxResult.error("文件格式错误");
    }
    return AjaxResult.error("系统图上传失败");
  }

  /**
   * 保存拓扑图：通过上传文件获取的地址和节点保存，如果当前节点存在图地址，更新掉（直接在SQL内执行）
   */
  @Log(title = "拓扑图", businessType = BusinessType.UPDATE)
  @PutMapping
  public AjaxResult edit(@RequestBody SvgAttach sysEquipmentfile) {
    try {
      sysEquipmentFileService.saveEquipmentFile(sysEquipmentfile);
      return AjaxResult.success();
    } catch (Exception ex) {
      return AjaxResult.error();
    }
  }

  /**
   * 保存配置接口：先根据节点数据删除，然后再新增数据（直接在SQL内执行）
   * @param nodeId
   * @param svgInfo
   * @return
   */
  @PutMapping("/setting/{nodeId}")
  public AjaxResult saveSetting(@PathVariable("nodeId") String nodeId,
      @RequestBody List<SvgSetting> svgInfo) {
    try {
      svgInfo.forEach(info -> info.setId(UUID.fastUUID().toString()));
      sysEquipmentFileService.saveSettingInfo(nodeId, svgInfo);
      return AjaxResult.success("保存成功！");
    } catch (Exception ex) {
      return AjaxResult.error("保存失败！");
    }
  }

  /**
   * 根据节点查询参数和采集点
   * @param nodeId
   * @return
   */
  @GetMapping("/configure/{nodeId}")
  public AjaxResult getConfigure(@PathVariable("nodeId") String nodeId) {
    try {
      SvgAttach sysEquipmentfile = sysEquipmentFileService.getConfigure(nodeId);
      return AjaxResult.success(sysEquipmentfile);
    } catch (Exception ex) {
      return AjaxResult.error("查询失败！");
    }
  }
}
