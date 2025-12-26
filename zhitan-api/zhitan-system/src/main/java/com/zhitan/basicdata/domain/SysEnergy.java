package com.zhitan.basicdata.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 【请填写功能名称】对象 sys_energy
 *
 * @author zhitan
 */
@Data
@TableName("sys_energy")
public class SysEnergy extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 能源名称 */
    @Excel(name = "能源名称")
    private String enername;

    /** 计量单位 */
    @Excel(name = "计量单位")
    private String muid;

    @TableField(exist = false)
    private String muidString;

    /** 能源类别ID */
    @Excel(name = "能源类别ID")
    private Integer enerclassid;

    /** 能源编号 */
    @Excel(name = "能源编号")
    private String enersno;

    /** 是否存储、0为是、1为否 */
    @Excel(name = "是否存储、0为是、1为否")
    private String isstorage;

    /** 能源类型 */
    @Excel(name = "能源类型")
    @TableField(exist = false)
    private String enerclassname;

    /** 是否储存（字符串） */
    @TableField(exist = false)
    private String isstorageString;

    /** 操作人 */
    @Excel(name = "操作人")
    private String oprMan;

    /** 操作时间 */
    @Excel(name = "操作时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date oprTime;

    /** 修改人 */
    @Excel(name = "修改人")
    private String modMan;

    /** 修改时间 */
    @Excel(name = "修改时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date modTime;

    /** 备注 */
    @Excel(name = "备注")
    private String note;

    /** $column.columnComment */
    @TableId
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Integer enerid;

    /** 等价折标系数 */
    @Excel(name = "等价折标系数")
    private BigDecimal coefficient;

    //折标系数note
    @TableField(exist = false)
    private String coefficientnote;

    /** 折标系数执行日期 */
    @Excel(name = "修改时间", width = 30, dateFormat = "yyyy-MM-dd")
    @TableField(exist = false)
    private Date coefficientexecdate;

    /** 执行日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "执行日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date execdate;

    /** 单价 */
    @Excel(name = "单价")
    private BigDecimal price;

    /** 排放因子 */
    @Excel(name = "排放因子")
    private BigDecimal emissionFactors;

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("enername", getEnername())
            .append("muid", getMuid())
            .append("enerclassid", getEnerclassid())
            .append("enersno", getEnersno())
            .append("isstorage", getIsstorage())
            .append("oprMan", getOprMan())
            .append("oprTime", getOprTime())
            .append("modMan", getModMan())
            .append("modTime", getModTime())
            .append("note", getNote())
            .append("enerid", getEnerid())
            .append("coefficient", getCoefficient())
            .append("execdate", getExecdate())
            .append("price", getPrice())
            .append("emissionFactors", getEmissionFactors())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
        .toString();
    }
}
