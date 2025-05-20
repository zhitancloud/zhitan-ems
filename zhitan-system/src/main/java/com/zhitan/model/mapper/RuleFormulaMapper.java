package com.zhitan.model.mapper;

import com.zhitan.model.domain.RuleFormula;
import com.zhitan.model.domain.RuleFormulaParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RuleFormulaMapper {

  void insertIndexFormula(RuleFormula ruleFormula);

  void updateIndexFormula(RuleFormula ruleFormula);

  void saveIndexFormulaParam(@Param("indexId") String indexId, @Param("indexFormulaParams") List<RuleFormulaParam> ruleFormulaParams);

  RuleFormula getFormula(String indexId);

  List<RuleFormulaParam> getFormulaParam(String indexId);
}
