package com.zhitan.model.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 自定义函数
 *
 * @author zhitan
 */
@Data
@ApiModel(value = "自定义函数")
@TableName("rule_func")
public class RuleFunction extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    @ApiModelProperty(value = "主键")
    private String id;

    /** 函数名 */
    @Excel(name = "函数名")
    @ApiModelProperty(value = "函数名")
    private String funcName;

    /** 函数文本 */
    @Excel(name = "函数文本")
    @ApiModelProperty(value = "函数文本")
    private String funcText;

    /** 介绍 */
    @Excel(name = "介绍")
    @ApiModelProperty(value = "介绍")
    private String info;

}
