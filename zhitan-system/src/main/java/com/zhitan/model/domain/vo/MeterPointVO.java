package com.zhitan.model.domain.vo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.enums.PointType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;


/**
 * 点位指标信息对象VO
 *
 * @author zhitan
 */
@Data
@ApiModel(value = "指标信息")
public class MeterPointVO {
    /**
     * 主键
     */
    @TableId
    @ApiModelProperty(value = "主键")
    private String pointId;

    /**
     * 指标名称
     */
    @ApiModelProperty(value = "指标名称")
    @Excel(name = "指标名称", prompt = "必填")
    private String name;

    /**
     * 指标编码
     */
    @ApiModelProperty(value = "指标编码")
    @Excel(name = "指标编码", prompt = "必填")
    private String code;

    /**
     * 系统指标类型
     */
    @ApiModelProperty(value = "系统指标类型")
    private PointType pointType;
}


