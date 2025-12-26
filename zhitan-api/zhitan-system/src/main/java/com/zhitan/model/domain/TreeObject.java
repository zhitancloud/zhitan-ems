package com.zhitan.model.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Treeselect树结构实体类
 *
 * @author zhitan
 */
@Data
public class TreeObject implements Serializable {
  private static final long serialVersionUID = 1L;

  /**
   * 节点ID
   */
  private String id;

  /**
   * 节点名称
   */
  private String label;

  private String nodeCategory;
  /**
   * 子节点
   */
  @JsonInclude(JsonInclude.Include.NON_EMPTY)
  private List<TreeObject> children;

  public TreeObject() {

  }

  public TreeObject(ModelNode modelNode) {
    this.id = modelNode.getNodeId();
    this.label = modelNode.getName();
    this.nodeCategory= modelNode.getNodeCategory();
    this.children = modelNode.getChildren().stream().map(TreeObject::new).collect(Collectors.toList());
  }

}
