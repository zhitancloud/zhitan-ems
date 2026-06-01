package com.zhitan.alarm.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 预报警设置对象
 *
 * @author zhitan
 */
@Data
@TableName("alarm_item")
public class AlarmItem extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 主键id
   */
  private String id;

  /**
   * 指标的主键id
   */
  @Excel(name = "指标的主键id")
  private String dwid;

  /**
   * 指标编码
   */
  private String indexCode;

  /**
   * 启停状态 1启动2停止
   */
  @Excel(name = "启停状态 1启动2停止")
  private String startStop;

  /**
   * 时段
   */
  @Excel(name = "时段")
  private String timeSlot;

  /**
   * 限   1上限2下限
   */
  @Excel(name = "限   1上限2下限")
  private String limitType;

  /**
   * 限值
   */
  @Excel(name = "限值")
  private String limitVal;

  /**
   * 报警级别
   */
  @Excel(name = "报警级别")
  private String alarmLevel;

  /**
   * 报警编码拼接，indexid:time_slot:limit_type
   */
  private String alarmCode;

  /**
   * nodeid
   */
  @Excel(name = "节点ID")
  private String nodeId;

  @TableField(exist = false)
  private String calcText;

  @Override
  public String toString() {
    return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
        .append("id", getId())
        .append("createTime", getCreateTime())
        .append("createBy", getCreateBy())
        .append("updateTime", getUpdateTime())
        .append("updateBy", getUpdateBy())
        .append("dwid", getDwid())
        .append("startStop", getStartStop())
        .append("timeSlot", getTimeSlot())
        .append("limitType", getLimitType())
        .append("limitVal", getLimitVal())
        .append("alarmLevel", getAlarmLevel())
        .append("nodeId", getNodeId())
        .toString();
  }
}
