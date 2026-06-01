package com.zhitan.processenergy.domain;

import com.zhitan.common.annotation.Excel;
import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 *工序能耗 月
 *
 * @author zhitan
 */
@Data
public class YearProcessEnergy implements Serializable {
    private static final long serialVersionUID = 1L;
    private String indexId;
    @Excel(name = "指标名称")
    private String indexName;
    private String value;
    private Date dataTime;
    private String timeType;
    private String timeCode;
    @Excel(name = "1月")
    private Double value1;
    @Excel(name = "2月")
    private Double value2;
    @Excel(name = "3月")
    private Double value3;
    @Excel(name = "4月")
    private Double value4;
    @Excel(name = "5月")
    private Double value5;
    @Excel(name = "6月")
    private Double value6;
    @Excel(name = "7月")
    private Double value7;
    @Excel(name = "8月")
    private Double value8;
    @Excel(name = "9月")
    private Double value9;
    @Excel(name = "10月")
    private Double value10;
    @Excel(name = "11月")
    private Double value11;
    @Excel(name = "12月")
    private Double value12;
    private Integer count;
    private String unitId;
    /** 总记录数 */
    private long total;
    private List<Map> tablehead =new ArrayList<>();
    private List<YearProcessEnergy> tabledata =new ArrayList<YearProcessEnergy>();

}
