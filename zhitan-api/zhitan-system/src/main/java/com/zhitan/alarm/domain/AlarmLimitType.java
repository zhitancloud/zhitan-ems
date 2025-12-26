package com.zhitan.alarm.domain;

import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 报警限值类型维护对象 alarm_limit_type
 *
 * @author zhitan
 */
@Data
@ApiModel(value = "报警限值")
public class AlarmLimitType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    @ApiModelProperty(value = "主键id")
    private String id;

    /** $column.columnComment */
    @Excel(name = "限值类型名称")
    @ApiModelProperty(value = "限值类型名称")
    private String limitName;

    /** $column.columnComment */
    @Excel(name = "限值类型编码")
    @ApiModelProperty(value = "限值类型编码")
    private String limitCode;

    /** $column.columnComment */
    @Excel(name = "色号")
    @ApiModelProperty(value = "色号")
    private String colorNumber;

    /** $column.columnComment */
    @Excel(name = "比较运算符")
    @ApiModelProperty(value = "比较运算符")
    private String comparatorOperator;

    /** $column.columnComment */
    @Excel(name = "警戒类型")
    @ApiModelProperty(value = "警戒类型")
    private String alarmType;

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("limitName", getLimitName())
            .append("limitCode", getLimitCode())
            .append("colorNumber", getColorNumber())
            .append("alarmType", getAlarmType())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}
