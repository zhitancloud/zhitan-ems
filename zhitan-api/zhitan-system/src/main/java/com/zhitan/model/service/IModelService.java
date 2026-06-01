package com.zhitan.model.service;


import com.zhitan.model.domain.Model;
import com.zhitan.model.domain.vo.PointDataVO;

import java.util.List;

/**
 * 模型Service接口
 * 
 * @author zhitan
 */
public interface IModelService
{
    /**
     * 查询模型
     * 
     * @param modelCode 模型ID
     * @return 模型
     */
    Model selectModelInfoById(String modelCode);

    /**
     * 查询模型列表
     * 
     * @param model 模型
     * @return 模型集合
     */
    List<Model> selectModelInfoList(Model model);

    /**
     * 新增模型
     * 
     * @param model 模型
     * @return 结果
     */
    int insertModelInfo(Model model);

    /**
     * 修改模型
     * 
     * @param model 模型
     * @return 结果
     */
    int updateModelInfo(Model model);

    /**
     * 批量删除模型
     * 
     * @param modelCode 需要删除的模型ID
     * @return 结果
     */
    int deleteModelInfoByCode(String modelCode);

    /**
     * 删除模型信息
     * 
     * @param modelCode 模型ID
     * @return 结果
     */
    int deleteModelInfoById(String modelCode);

    /**
     * 根据模型id查询对应点位信息
     *
     * @param modelId 查询模型id
     * @return
     */
    List<PointDataVO> listEnergyIndexByModelId(String modelId);
}
