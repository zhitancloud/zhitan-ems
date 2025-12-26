package com.zhitan.model.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
@TableName("rule_formula")
public class RuleFormula {

  private String id;
  private String formulaText;
  private String pointId;
  private Integer isPvCalc;
  private List<RuleFormulaParam> indexFormulaParams = new ArrayList<>();
}
