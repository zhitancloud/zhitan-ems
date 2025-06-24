package com.zhitan.model.service;


import com.zhitan.common.enums.TimeType;
import com.zhitan.model.domain.RuleFormula;
import com.zhitan.model.domain.RuleStorage;

import java.util.List;

/**
 * @author zhitan
 */
public interface IRuleStorageService {

  void saveIndexStorage(String indexId, List<RuleStorage> ruleStorage);

  void saveFormulaAndStorage(RuleFormula ruleFormula, List<RuleStorage> ruleStorage,
                             String indexId);

  List<RuleStorage> getIndexStorage(String indexId);

  List<RuleStorage> getAllCalcIndexStorage();

  RuleStorage getIndexStorage(String indexId, TimeType timeType);
}
