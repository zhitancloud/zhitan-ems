package com.zhitan.realtimedata.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.List;

/**
 * 拓扑图对象 svg_attach
 *
 */
@Data
@TableName("svg_attach")
public class SvgAttach {

  @TableId
  private String nodeId;

  @TableField(value = "filepath")
  private String filePath;

  @TableField(exist = false)
  private String svgType;

  @TableField(exist = false)
  private List<SvgSetting> infoList;
}
