package com.zhitan.alarm.domain.entity;


import com.baomidou.mybatisplus.annotation.TableName;
import com.zhitan.common.enums.Quality;
import lombok.Data;

import java.util.Date;

@Data
@TableName("alarm_history")
public class AlarmHistory {

  /**
   * 主键
   */
  private String id;
  /**
   * 指标主键
   */
  private String indexId;
  /**
   * 指标名称
   */
  private String indexName;
  private String itemId;
  /**
   * 报警配置项
   */
  private AlarmItem alarmItem;
  /**
   * 限值
   */
  private double limitingValue;
  /**
   * 报警时的值
   */
  private double alarmValue;
  /**
   * 报警是数据质量
   */
  private Quality alarmValueQuality;
  /**
   * 报警事件
   */
  private Date beginTime;
  /**
   * 报警结束时间
   */
  private Date endTime;
  private String timeCode;
  /**
   * 报警持续时间
   */
  private double duration;
  /**
   * 报警描述
   */
  private String content;

  /**
   * 报警编码拼接，indexid:time_slot:limit_type
   */
  private String alarmCode;

}
