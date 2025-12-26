package com.zhitan.common.enums;

public enum PointType {
  /**
   * 采集指标
   */
  COLLECT("COLLECT"),
  /**
   * 统计指标
   */
  STATISTIC("STATISTIC");

  private final String description;

  PointType(String description)
  {
    this.description = description;
  }


  public String getDescription()
  {
    return description;
  }
}
