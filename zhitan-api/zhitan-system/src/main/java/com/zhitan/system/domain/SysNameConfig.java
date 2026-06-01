package com.zhitan.system.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 系统名称配置对象 sys_name_config
 *
 * @author ZhiTan
 */
@Data
@TableName("sys_name_config")
public class SysNameConfig extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 系统名称
     */
    @Excel(name = "系统名称")
    private String systemName;

    /**
     * 左上角logo
     */
    @Excel(name = "左上角logo")
    private String leftLogo;

    /**
     * 底部版权
     */
    @Excel(name = "底部版权")
    private String copyRight;

    /**
     * 主键
     */
    private String id;

    /**
     * 首页logo
     */
    @Excel(name = "首页logo")
    private String homeLogo;

    /**
     * 管理员微信二维码
     */
    @Excel(name = "管理员微信二维码")
    private String adminWechatQrCode;

}
