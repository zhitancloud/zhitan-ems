package com.zhitan.realtimedata.domain;

import com.zhitan.common.enums.Quality;
import lombok.Data;

import java.util.Date;

@Data
public class TagValueResult {

  /**
   * 测点编码.
   */
  private String tagCode;

  private String tagName;
  private String unitId;

  /**
   * 测点数据时间.
   */
  private Date dataTime;

  /**
   * 测点值.
   */
  private Double value;

  /**
   * 测点数据质量.
   */
  private Quality quality;
  /**
   * 计量器具名称
   */
  private String meteName;

}
