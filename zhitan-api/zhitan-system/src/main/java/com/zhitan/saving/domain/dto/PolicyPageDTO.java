package com.zhitan.saving.domain.dto;

import io.swagger.annotations.ApiModel;
import lombok.Data;

/**
 * @author zhitan
 */
@Data
@ApiModel(value = "PolicyDTO", description = "政策法规-列表查询Dto")
public class PolicyPageDTO {

    /**
     * 类型
     */
    private String type;

    /**
     * 标题
     */
    private String title;
}
