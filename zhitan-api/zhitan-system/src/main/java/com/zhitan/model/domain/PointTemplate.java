package com.zhitan.model.domain;

import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 采集参数模板对象 template
 *
 * @author zhitan
 */
@Data
public class PointTemplate extends BaseEntity {
  private static final long serialVersionUID = 1L;

  /**
   * 主键
   */
  private String id;

  /**
   * 参数编码
   */
  @Excel(name = "参数编码")
  private String code;

  @Excel(name = "采集编码")
  private String gatewayKey;
  /**
   * 参数名称
   */
  @Excel(name = "参数名称")
  private String name;

  /**
   * 参数所属类型
   */
  @Excel(name = "参数所属类型")
  private String deviceType;

  @Excel(name = "单位")
  private String unit;

}
