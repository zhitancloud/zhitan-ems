package com.zhitan.model.service.impl;

import com.zhitan.meter.domain.Meter;
import com.zhitan.meter.mapper.MeterImplementMapper;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.Model;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.domain.vo.PointDataVO;
import com.zhitan.model.mapper.MeterPointMapper;
import com.zhitan.model.mapper.ModelMapper;
import com.zhitan.model.mapper.ModelNodeMapper;
import com.zhitan.model.service.IModelService;
import lombok.AllArgsConstructor;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 模型Service业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class ModelServiceImpl implements IModelService {

  @Resource
  private ModelMapper modelMapper;
  @Resource
  private ModelNodeMapper modelNodeMapper;
  @Resource
  private MeterPointMapper meterPointMapper;
  @Resource
  private MeterImplementMapper meterImplementMapper;

  /**
   * 查询模型
   *
   * @param modelCode 模型ID
   * @return 模型
   */
  @Override
  public Model selectModelInfoById(String modelCode) {
    return modelMapper.selectModelInfoById(modelCode);
  }

  /**
   * 查询模型列表
   *
   * @param model 模型
   * @return 模型
   */
  @Override
  public List<Model> selectModelInfoList(Model model) {
    return modelMapper.selectModelInfoList(model);
  }

  /**
   * 新增模型
   *
   * @param model 模型
   * @return 结果
   */
  @Override
  public int insertModelInfo(Model model) {
    return modelMapper.insertModelInfo(model);
  }

  /**
   * 修改模型
   *
   * @param model 模型
   * @return 结果
   */
  @Override
  public int updateModelInfo(Model model) {
    return modelMapper.updateModelInfo(model);
  }

  /**
   * 批量删除模型
   *
   * @param modelCode 需要删除的模型ID
   * @return 结果
   */
  @Override
  public int deleteModelInfoByCode(String modelCode) {
    return modelMapper.deleteModelInfoByCode(modelCode);
  }

  /**
   * 删除模型信息
   *
   * @param modelCode 模型ID
   * @return 结果
   */
  @Override
  public int deleteModelInfoById(String modelCode) {
    return modelMapper.deleteModelInfoById(modelCode);
  }

  /**
   * 根据模型id查询对应点位信息
   *
   * @param modelId 查询模型id
   */
  @Override
  public List<PointDataVO> listEnergyIndexByModelId(String modelId) {
    List<PointDataVO> voList = new ArrayList<>();
    // 根据id查询下级id与indexId
    List<ModelNodePointInfo> inforList = modelNodeMapper.listModelNodeIndexIdRelationInforByParentId(modelId);
    if (CollectionUtils.isEmpty(inforList)) {
      List<ModelNodePointInfo> indexInforList = modelNodeMapper.getModelNodeIndexIdRelationInforByNodeId(modelId);
      if (CollectionUtils.isEmpty(indexInforList)) {
        return voList;
      }
      inforList.addAll(indexInforList);
    }
    // 去除所有点位id信息
    List<String> indexIds = inforList.stream().map(ModelNodePointInfo::getIndexId).collect(Collectors.toList());
    List<MeterPoint> meterPointList = meterPointMapper.listMeterPointByIds(indexIds);
    // 根据indexid查询对应计量器具信息
    List<String> meterIds = meterPointList.stream().map(MeterPoint::getMeterId).collect(Collectors.toList());
    Map<String, List<Meter>> meterImplementMap = meterImplementMapper.listMeterImplementByIds(meterIds).stream()
            .filter(li -> StringUtils.isNotEmpty(li.getInstallactionLocation()))
            .collect(Collectors.groupingBy(Meter::getId));
    for (MeterPoint indexInfo : meterPointList) {

      PointDataVO pointData = new PointDataVO();
      String indexName = indexInfo.getName();
      List<Meter> meters = meterImplementMap.get(indexInfo.getMeterId());
      if (CollectionUtils.isNotEmpty(meters)) {
        Meter infor = meters.get(0);
        indexName = infor.getInstallactionLocation() + "_" + infor.getMeterName() + "_" + indexName;
      }
      pointData.setIndexName(indexName);
      pointData.setIndexId(indexInfo.getPointId());
      voList.add(pointData);
    }
    return voList;
  }
}
