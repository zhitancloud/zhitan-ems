package com.zhitan.basicSetup.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.realtimedata.domain.SvgAttach;
import com.zhitan.realtimedata.domain.SvgSetting;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 组态图Mapper接口
 *
 * @author zhitan
 */
public interface SvgAttachMapper extends BaseMapper<SvgAttach> {

  void saveEquipmentFile(SvgAttach sysEquipmentfile);

  void saveSettingInfo(@Param("nodeId") String nodeId, @Param("svgInfo") List<SvgSetting> svgInfo);

  SvgAttach getConfigure(String nodeId);

  List<SvgSetting> getConfigureTag(String nodeId);
}
