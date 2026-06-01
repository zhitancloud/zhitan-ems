package com.zhitan.comprehensivestatistics.domain;

import com.zhitan.common.annotation.Excel;
import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 
 * @author zhitan
 */
@Data
public class MonthlyComprehensive implements Serializable {
    private static final long serialVersionUID = 1L;
    private String indexId;
    @Excel(name = "指标名称")
    private String indexName;
    private String value;
    private Date dataTime;
    private String timeType;
    private String unitId;
    @Excel(name = "1日")
    private Double value1;
    @Excel(name = "2日")
    private Double value2;
    @Excel(name = "3日")
    private Double value3;
    @Excel(name = "4日")
    private Double value4;
    @Excel(name = "5日")
    private Double value5;
    @Excel(name = "6日")
    private Double value6;
    @Excel(name = "7日")
    private Double value7;
    @Excel(name = "8日")
    private Double value8;
    @Excel(name = "9日")
    private Double value9;
    @Excel(name = "10日")
    private Double value10;
    @Excel(name = "11日")
    private Double value11;
    @Excel(name = "12日")
    private Double value12;
    @Excel(name = "13日")
    private Double value13;
    @Excel(name = "14日")
    private Double value14;
    @Excel(name = "15日")
    private Double value15;
    @Excel(name = "16日")
    private Double value16;
    @Excel(name = "17日")
    private Double value17;
    @Excel(name = "18日")
    private Double value18;
    @Excel(name = "19日")
    private Double value19;
    @Excel(name = "20日")
    private Double value20;
    @Excel(name = "21日")
    private Double value21;
    @Excel(name = "22日")
    private Double value22;
    @Excel(name = "23日")
    private Double value23;
    @Excel(name = "24日")
    private Double value24;
    @Excel(name = "25日")
    private Double value25;
    @Excel(name = "26日")
    private Double value26;
    @Excel(name = "27日")
    private Double value27;
    @Excel(name = "28日")
    private Double value28;
    @Excel(name = "29日")
    private Double value29;
    @Excel(name = "30日")
    private Double value30;
    @Excel(name = "31日")
    private Double value31;
    private String timeCode;
    private Integer count;
    private List<Map> tablehead =new ArrayList<>();
    private List<MonthlyComprehensive> tabledata =new ArrayList<>();

}
