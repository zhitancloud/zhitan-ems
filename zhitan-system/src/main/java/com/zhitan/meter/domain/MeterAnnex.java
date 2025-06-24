package com.zhitan.meter.domain;

import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 计量器具档案附件对象 meter_annex
 * 
 * @author zhitan
 */
@Data
public class MeterAnnex extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private String id;

    /** 关联meter.id */
    private String meterId;

    /** 文件名 */
    @Excel(name = "文件名")
    private String fileName;

    /** 文件后缀 */
    private String fileSuffix;

    /** 文件路径 */
    private String filePath;

    /** 删除标志Y 删除  N未删除 */
    private String delFlage;

}
