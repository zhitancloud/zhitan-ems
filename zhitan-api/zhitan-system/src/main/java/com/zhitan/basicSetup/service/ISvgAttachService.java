package com.zhitan.basicSetup.service;

import com.zhitan.realtimedata.domain.SvgAttach;
import com.zhitan.realtimedata.domain.SvgSetting;

import java.util.List;

/**
 * 组态图Service接口
 *
 * @author zhitan
 */
public interface ISvgAttachService {

  void saveEquipmentFile(SvgAttach svgAttach);

  void saveSettingInfo(String nodeId, List<SvgSetting> svgInfo);

  /**
   * 获取组态图配置信息
   * @param nodeId 模型节点 id
   * @return
   */
  SvgAttach getConfigure(String nodeId);

  /**
   * 获取组态图配置的点位号
   * @param nodeId 模型节点 id
   * @return
   */
  List<SvgSetting> getConfigureTag(String nodeId);
}
