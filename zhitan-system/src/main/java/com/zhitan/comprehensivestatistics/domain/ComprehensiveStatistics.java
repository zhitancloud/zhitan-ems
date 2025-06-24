package com.zhitan.comprehensivestatistics.domain;


import com.zhitan.common.annotation.Excel;
import com.zhitan.common.enums.Quality;
import com.zhitan.common.enums.TimeType;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public  class ComprehensiveStatistics implements Serializable {
  private static final long serialVersionUID = -2777479013884125925L;

  private String pointId;
  private String indexStorageId;
  @Excel(name = "指标Id")
  private String indexCode;
  private String indexName;
  private Date beginTime;
  private Date endTime;
  private Date dataTime;
  private String timeCode;
  private TimeType timeType;
  @Excel(name = "能耗量")
  private Double value;
  private Quality quality;
  private String unitId;
  private Date createTime;
  private Date updateTime;
  private String remark;
  @Excel(name = "名称")
  private String name;
  private String indexType;
  private String facilityName;
  private String valueScale;

}
