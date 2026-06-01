package com.zhitan.alarm.domain;


import com.fasterxml.jackson.annotation.JsonFormat;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;

import java.util.Date;

@Data
public class JkHistoryAlarm extends BaseEntity {
  private static final long serialVersionUID = 1L;

  /**
   * 模型节点名称
   * */
  @Excel(name = "单位名称")
  private String modelName;
  /**
   * 指标编号
   * */
  @Excel(name = "指标编码")
  private String code;
  /**
   * 指标名称*/
  @Excel(name = "指标名称")
  private String indexName;
  /**
   * 指标单位类型ID*/
  @Excel(name = "指标单位")
  private String unitId;
  /**
   * 报警级别*/
  @Excel(name = "报警级别")
  private String alarmLevel;
  /**
   * 限值类型
   * */
  @Excel(name = "限值类型")
  private String limitType;
  /**
   * 限值
   * */
  @Excel(name = "限值")
  private double limitingValue;
  /**
   * 报警值
   * */
  @Excel(name = "报警值")
  private double alarmValue;
  /**
   * 指标主键id
   * */
  private String indexId;
  /**
   * 模型节点主键id
   * */
  private String nodeId;
  /**
   * 模型查询层级标志 B本级  ALL包含下级
   * */
  private String eierarchyFlag;
  /**
   * 指标类型 COLLECT采集点  STATISTIC指标
   * */
  private String indexType;

  /** 报警时长 */
  @Excel(name = "持续时长(分钟)")
  private Double duration;

  /**
   * 报警开始时间
   */
  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
  @Excel(name = "报警开始时间", dateFormat = "yyyy-MM-dd HH:mm:ss")
  private Date alarmBeginTime;

  /**
   * 报警结束时间
   */
  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
  @Excel(name = "报警结束时间", dateFormat = "yyyy-MM-dd HH:mm:ss")
  private Date alarmEndTime;
  /**
   * SVG文件的ID
   */
  private Integer svgId;
  /** 报警内容 */
  private String content;
  private String id;
  private String alarmValueQuality;
  
  private String energyId;
  
  /**
   * 设置一下时间格式，根据时间分组
   */
  private String alarmTime;

}
