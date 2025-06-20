package com.zhitan.model.service.impl;

import com.zhitan.common.utils.StringUtils;
import com.zhitan.common.utils.uuid.UUID;
import com.zhitan.model.domain.RuleFormula;
import com.zhitan.model.domain.RuleFormulaParam;
import com.zhitan.model.mapper.RuleFormulaMapper;
import com.zhitan.model.service.RuleFormulaService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class RuleFormulaServiceImpl implements RuleFormulaService {

  private RuleFormulaMapper ruleFormulaMapper;

  @Override
  public void saveIndexFormula(RuleFormula ruleFormula) {
    if (StringUtils.isEmpty(ruleFormula.getId())) {
      ruleFormula.setId(UUID.fastUUID().toString());
      ruleFormulaMapper.insertIndexFormula(ruleFormula);
    } else {
      ruleFormulaMapper.updateIndexFormula(ruleFormula);
    }

    ruleFormula.getIndexFormulaParams().forEach(param -> {
      param.setId(UUID.fastUUID().toString());
      param.setFormulaId(ruleFormula.getId());
      param.setPointId(ruleFormula.getPointId());
    });
    ruleFormulaMapper
        .saveIndexFormulaParam(ruleFormula.getPointId(), ruleFormula.getIndexFormulaParams());
  }

  @Override
  public RuleFormula getIndexFormula(String indexId) {
    RuleFormula ruleFormula = ruleFormulaMapper.getFormula(indexId);
    if (ruleFormula != null) {
      List<RuleFormulaParam> ruleFormulaParams = ruleFormulaMapper.getFormulaParam(indexId);
      if (!ruleFormulaParams.isEmpty()) {
        ruleFormula.setIndexFormulaParams(ruleFormulaParams);
      }
    } else {
      ruleFormula = new RuleFormula();
    }

    return ruleFormula;
  }

}
