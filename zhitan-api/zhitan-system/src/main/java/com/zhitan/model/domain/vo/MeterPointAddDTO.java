package com.zhitan.model.domain.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import com.zhitan.common.enums.PointType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;


/**
 * 点位指标信息对象新增DTO
 *
 * @author zhitan
 */
@Data
@ApiModel(value = "指标信息")
public class MeterPointAddDTO extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
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

    @Excel(name = "指标类型", combo = "COLLECT,STATISTIC")
    @ApiModelProperty(value = "")
    @TableField(exist = false)
    private String pointTypeCode;

    /**
     * 指标分类
     */
    @Excel(name = "指标分类")
    @ApiModelProperty(value = "指标分类")
    private String pointCategory;

    /**
     * 单位主键
     */
    @Excel(name = "单位主键")
    @ApiModelProperty(value = "单位主键")
    private String unitId;

    @Excel(name = "所属节点", prompt = "必填")
    @ApiModelProperty(value = "所属节点")
    @TableField(exist = false)
    private String nodeId;


    @ApiModelProperty(value = "顺序号")
    @Excel(name = "顺序号")
    private int orderNum;

    @ApiModelProperty(value = "")
    private String equipment;

    @ApiModelProperty(value = "id")
    private String energyId;


    public void setPointType(PointType pointType) {
        this.pointType = pointType;
        if (StringUtils.isBlank(this.pointTypeCode)) {
            this.pointTypeCode = pointType.name();
        }
    }

    public PointType getPointType() {
        if (pointType == null && StringUtils.isNotBlank(this.pointTypeCode)) {
            return PointType.valueOf(pointTypeCode);
        }

        return pointType;
    }

    public String getPointTypeCode() {
        if (StringUtils.isBlank(pointTypeCode) && this.pointType != null) {
            return this.pointType.name();
        }
        return pointTypeCode;
    }

    public void setPointTypeCode(String pointTypeCode) {
        this.pointTypeCode = pointTypeCode;
        if (this.pointType == null) {
            this.pointType = PointType.valueOf(pointTypeCode);
        }
    }

}
