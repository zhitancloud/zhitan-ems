package com.zhitan.model.mapper;


import com.zhitan.model.domain.Model;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 模型Mapper接口
 * 
 * @author zhitan
 */
@Mapper
public interface ModelMapper
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
     * 删除模型
     * 
     * @param modelCode 模型ID
     * @return 结果
     */
    int deleteModelInfoById(String modelCode);

    /**
     * 批量删除模型
     * 
     * @param modelCodes 需要删除的数据ID
     * @return 结果
     */
    int deleteModelInfoByCode(String modelCodes);
}
