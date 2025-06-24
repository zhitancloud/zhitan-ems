package com.zhitan.comprehensivestatistics.domain;


import com.zhitan.common.annotation.Excel;
import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Data
public  class Comprehensive implements Serializable {
  private static final long serialVersionUID = -2777479013884125925L;
  private String indexId;
  @Excel(name = "指标名称")
  private String indexName;
  private String value;
  private Date dataTime;
  private String timeType;
  @Excel(name = "1")
  private Double value1;
  @Excel(name = "2")
  private Double value2;
  @Excel(name = "3")
  private Double value3;
  @Excel(name = "4")
  private Double value4;
  @Excel(name = "5")
  private Double value5;
  @Excel(name = "6")
  private Double value6;
  @Excel(name = "7")
  private Double value7;
  @Excel(name = "8")
  private Double value8;
  @Excel(name = "9")
  private Double value9;
  @Excel(name = "10")
  private Double value10;
  @Excel(name = "11")
  private Double value11;
  @Excel(name = "12")
  private Double value12;
  @Excel(name = "13")
  private Double value13;
  @Excel(name = "14")
  private Double value14;
  @Excel(name = "15")
  private Double value15;
  @Excel(name = "16")
  private Double value16;
  @Excel(name = "17")
  private Double value17;
  @Excel(name = "18")
  private Double value18;
  @Excel(name = "19")
  private Double value19;
  @Excel(name = "20")
  private Double value20;
  @Excel(name = "21")
  private Double value21;
  @Excel(name = "22")
  private Double value22;
  @Excel(name = "23")
  private Double value23;
  @Excel(name = "24")
  private Double value24;
  @Excel(name = "25")
  private Double value25;
  @Excel(name = "16")
  private Double value26;
  @Excel(name = "27")
  private Double value27;
  @Excel(name = "28")
  private Double value28;
  @Excel(name = "29")
  private Double value29;
  @Excel(name = "30")
  private Double value30;
  @Excel(name = "31")
  private Double value31;
  private List<Map> tablehead =new ArrayList<>();
  private List<Comprehensive> tabledata =new ArrayList<>();

}
