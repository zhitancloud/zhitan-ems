package com.zhitan.model.domain;

import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 模型对象 model
 * 
 * @author zhitan
 */
@Data
public class Model extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 模型编码 */
    @Excel(name = "模型编码")
    private String modelCode;

    /** 模型名称 */
    @Excel(name = "模型名称")
    private String modelName;

    /** 是否显示 */
    private Integer isShow;

    private String modelType;

}
