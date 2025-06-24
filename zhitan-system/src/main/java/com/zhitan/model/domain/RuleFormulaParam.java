package com.zhitan.model.domain;

import lombok.Data;

/**
 * 计算规则-公式参数
 */
@Data
public class RuleFormulaParam {

  private String id;
  private String pointId;
  private String formulaId;
  private String paramName;
  private String paramValue;

}
