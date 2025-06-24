package com.zhitan.spikesandvalleys.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.zhitan.common.annotation.Excel;

/**
 * 尖峰平谷时间段明细对象 spikes_and_valleys_scheme
 *
 * @author ZhiTan
 */
@Data
@TableName("spikes_and_valleys_scheme")
public class SpikesAndValleysScheme extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private String id;

    /** 方案名称 */
    @Excel(name = "方案名称")
    private String schemeName;

    /** 执行时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "执行时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date executeTime;

    /** 方案类型1默认2后勤3外部 */
    @Excel(name = "方案类型1默认2后勤3外部")
    private String type;

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .append("schemeName", getSchemeName())
            .append("executeTime", getExecuteTime())
            .append("type", getType())
        .toString();
    }
}
