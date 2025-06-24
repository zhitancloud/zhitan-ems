package com.zhitan.model.service.impl;

import com.zhitan.common.enums.CalcType;
import com.zhitan.common.enums.TimeType;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.model.domain.*;
import com.zhitan.model.mapper.RuleStorageMapper;
import com.zhitan.model.service.IMeterPointService;
import com.zhitan.model.service.IRuleStorageService;
import com.zhitan.model.service.RuleFormulaService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import static org.apache.commons.lang3.StringUtils.equalsIgnoreCase;

@AllArgsConstructor
@Service
public class RuleStorageServiceImpl implements IRuleStorageService {

  private RuleStorageMapper ruleStorageMapper;
  private RuleFormulaService ruleFormulaService;
  private IMeterPointService energyIndexService;

  @Override
  public void saveIndexStorage(String indexId, List<RuleStorage> ruleStorage) {
    ruleStorage.forEach(storage -> {
      storage.setPointId(indexId);
      if (StringUtils.isEmpty(storage.getId())) {
        storage.setId(UUID.randomUUID().toString());
        ruleStorageMapper.insertIndexStorage(storage);
      } else {
        ruleStorageMapper.updateIndexStorage(storage);
      }

      ruleStorageMapper.saveParams(storage.getId(), storage.getParamIndex());
    });
  }

  @Override
  @Transactional(rollbackFor = Exception.class)
  public void saveFormulaAndStorage(RuleFormula ruleFormula, List<RuleStorage> ruleStorage,
                                    String indexId) {
    ruleFormulaService.saveIndexFormula(ruleFormula);
    String calcText = ruleFormula.getFormulaText();
    List<String> paramNames = new ArrayList<>();
    for (RuleFormulaParam param : ruleFormula.getIndexFormulaParams()) {
        calcText = calcText
                .replace("(" + param.getParamName() + ")", "(" + String.format("'%s'", param.getParamValue()) + ")");
        paramNames.add(param.getParamValue());
    }

    List<MeterPoint> meterPointList = energyIndexService.listMeterPointByCodes(paramNames);
    List<String> paramIndex = meterPointList.stream()
        .map(MeterPoint::getPointId)
        .collect(Collectors.toList());
    for (RuleStorage storage : ruleStorage) {
      storage.setCalcText(calcText);
      storage.setIsPvCalc(ruleFormula.getIsPvCalc());
      storage.getParamIndex().addAll(paramIndex);
    }

    saveIndexStorage(indexId, ruleStorage);
  }

  @Override
  public List<RuleStorage> getIndexStorage(String indexId) {
    return ruleStorageMapper.getIndexStorage(indexId);
  }

  @Override
  public List<RuleStorage> getAllCalcIndexStorage() {
    List<RuleStorage> ruleStorageList = ruleStorageMapper.getAllCalcIndexStorage(CalcType.CALC);
    List<IndexStorageParam> params = ruleStorageMapper.getAllParameter();
    ruleStorageList.forEach(storage -> {
      List<String> indexIds = params.stream()
          .filter(f -> equalsIgnoreCase(f.getStorageId(), storage.getId()))
          .map(IndexStorageParam::getIndexId)
          .collect(Collectors.toList());
      if (!indexIds.isEmpty()) {
        storage.getParamIndex().addAll(indexIds);
      }
    });

    return ruleStorageList;
  }

  @Override
  public RuleStorage getIndexStorage(String indexId, TimeType timeType) {
    return ruleStorageMapper.getWithTimetype(indexId, timeType);
  }

}
