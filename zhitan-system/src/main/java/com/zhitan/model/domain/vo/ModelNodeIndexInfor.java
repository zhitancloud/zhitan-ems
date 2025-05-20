package com.zhitan.model.domain.vo;


import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 模型节点与点位关系对象
 *
 */
@Data
public class ModelNodeIndexInfor extends BaseEntity {
  private static final long serialVersionUID = 1L;

  /**
   * 主键
   */
  private String nodeId;

  /**
   * 名称
   */
  private String name;

  /**
   * 点位id
   */
  private String indexId;
  
  /**
   * 能源类型
   */
  private String energyId;

  private String indexType;
  /**
   * 单位
   */
  private String unitId;
}
