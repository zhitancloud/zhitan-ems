package com.zhitan.model.domain;


import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.zhitan.common.annotation.Excel;
import com.zhitan.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.ArrayList;
import java.util.List;

/**
 * 模型节点对象 model_node
 *
 * @author zhitan
 */
@Data
public class ModelNode extends BaseEntity {
  private static final long serialVersionUID = 1L;

  /**
   * 主键
   */
  @TableId
  private String nodeId;

  /**
   * 编码
   */
  @Excel(name = "编码")
  private String code;

  /**
   * 名称
   */
  @Excel(name = "名称")
  private String name;

  /**
   * 父节点 id
   */
  private String parentId;

  /**
   * 地址
   */
  private String address;

  /**
   * 模型 id
   */
  private String modelCode;

  private String nodeCategory;

  private int orderNum;

  @TableField(exist = false)
  private List<ModelNode> children = new ArrayList<>();

}
