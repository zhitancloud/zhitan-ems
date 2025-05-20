package com.zhitan.basicSetup.service.impl;

import com.zhitan.basicSetup.mapper.SvgAttachMapper;
import com.zhitan.basicSetup.service.ISvgAttachService;
import com.zhitan.realtimedata.domain.SvgAttach;
import com.zhitan.realtimedata.domain.SvgSetting;
import lombok.AllArgsConstructor;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 组态图Service业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class SvgAttachServiceImpl implements ISvgAttachService {

  private SvgAttachMapper svgAttachMapper;

  @Override
  public void saveEquipmentFile(SvgAttach sysEquipmentfile) {
    SvgAttach svgAttach = svgAttachMapper.selectById(sysEquipmentfile.getNodeId());
    if (ObjectUtils.isNotEmpty(svgAttach)){
      svgAttach.setFilePath(sysEquipmentfile.getFilePath());
      svgAttachMapper.updateById(svgAttach);
    }else {
      SvgAttach equipmentFile = new SvgAttach();
      equipmentFile.setFilePath(sysEquipmentfile.getFilePath());
      equipmentFile.setNodeId(sysEquipmentfile.getNodeId());
      svgAttachMapper.insert(equipmentFile);
    }
  }

  @Override
  public void saveSettingInfo(String nodeId, List<SvgSetting> svgInfo) {
    svgAttachMapper.saveSettingInfo(nodeId, svgInfo);
  }

  @Override
  public SvgAttach getConfigure(String nodeId) {
    SvgAttach sysEquipmentfile = svgAttachMapper.getConfigure(nodeId);
    List<SvgSetting> infos = getConfigureTag(nodeId);
    if (sysEquipmentfile != null) {
      sysEquipmentfile.setInfoList(infos);
    }

    return sysEquipmentfile;
  }

  @Override
  public List<SvgSetting> getConfigureTag(String nodeId) {
    return svgAttachMapper.getConfigureTag(nodeId);
  }
}
