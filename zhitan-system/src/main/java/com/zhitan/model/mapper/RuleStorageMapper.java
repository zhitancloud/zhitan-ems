package com.zhitan.model.mapper;

import com.zhitan.common.enums.CalcType;
import com.zhitan.common.enums.TimeType;
import com.zhitan.model.domain.RuleStorage;
import com.zhitan.model.domain.IndexStorageParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RuleStorageMapper {

  void insertIndexStorage(RuleStorage storage);

  void updateIndexStorage(RuleStorage storage);

  List<RuleStorage> getIndexStorage(String indexId);

  void saveParams(@Param("storageId")String storageId, @Param("parameterIds")List<String> parameterIds);

  List<IndexStorageParam> getAllParameter();

  List<RuleStorage> getAllCalcIndexStorage(CalcType calc);

  RuleStorage getWithTimetype(@Param("indexId") String indexId, @Param("timeType") TimeType timeType);
}
