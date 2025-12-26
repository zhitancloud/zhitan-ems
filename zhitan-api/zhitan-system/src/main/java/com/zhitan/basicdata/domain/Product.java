package com.zhitan.basicdata.domain;

import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 产品对象 product
 *
 * @author zhitan
 */
@Data
public class Product extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 产品ID */
    private Integer id;

    /** 产品名称 */
    @Excel(name = "产品名称")
    private String name;

    /** 产品编号 */
    @Excel(name = "产品编号")
    private String sn;

    /** 计量单位 */
    @Excel(name = "计量单位")
    private String muid;

    /** 父级产品ID */
    @Excel(name = "父级产品ID")
    private Integer superid;

    /** 是否为子级 */
    @Excel(name = "是否为子级")
    private String issub;

    /** 折算系数 */
    @Excel(name = "折算系数")
    private Double procofficient;

    /** 是否显示 */
    @Excel(name = "是否显示")
    private String isshow;

    /** 是否主要产品 */
    @Excel(name = "是否主要产品")
    private String iscpnyproduct;

    /** 操作人 */
    private String oprMan;

    /** 操作时间 */
    private Date oprTime;

    /** 更新人 */
    private String modMan;

    /** 更新时间 */
    private Date modTime;

    /** 备注 */
    @Excel(name = "备注")
    private String note;
    //价格
    private double price;

    private String superidname;
}
