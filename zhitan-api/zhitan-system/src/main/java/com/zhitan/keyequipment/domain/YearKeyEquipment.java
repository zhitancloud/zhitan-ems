package com.zhitan.keyequipment.domain;


import com.zhitan.common.annotation.Excel;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 *重点设备能耗统计 年
 *
 * @author zhitan
 */
@Data
public class YearKeyEquipment implements Serializable {
    private static final long serialVersionUID = 1L;
    private String indexId;
    @Excel(name = "指标名称")
    private String indexName;
    private String value;
    private Date dataTime;
    private String timeType;
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
    private String timeCode;
    private  String unitId;

}
