package com.zhitan.model.service;


import com.zhitan.model.domain.RuleFormula;

public interface RuleFormulaService {

  void saveIndexFormula(RuleFormula ruleFormula);

  RuleFormula getIndexFormula(String indexId);
}
