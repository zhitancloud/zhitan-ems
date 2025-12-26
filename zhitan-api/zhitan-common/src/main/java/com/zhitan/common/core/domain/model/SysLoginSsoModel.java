package com.zhitan.common.core.domain.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 单点登录对象
 *
 * @Author zhitan
 */
@Data
@ApiModel(value = "单点登录对象", description = "单点登录对象")
public class SysLoginSsoModel {
    @ApiModelProperty(value = "票据")
    private String ticket;
}