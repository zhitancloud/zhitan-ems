package com.zhitan.model.service;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.model.domain.PointTemplate;

import java.util.List;
import java.util.Map;

/**
 * 采集参数模板Service接口
 *
 * @author zhitan
 */
public interface IPointTemplateService {
    /**
     * 查询采集参数模板
     *
     * @param id 采集参数模板ID
     * @return 采集参数模板
     */
    PointTemplate selectPointTemplateById(String id);

    /**
     * 查询采集参数模板列表
     *
     * @param pointTemplate 采集参数模板
     * @return 采集参数模板集合
     */
    List<PointTemplate> selectPointTemplateList(PointTemplate pointTemplate);

    /**
     * 新增采集参数模板
     *
     * @param pointTemplate 采集参数模板
     * @return 结果
     */
    int insertPointTemplate(PointTemplate pointTemplate);

    /**
     * 修改采集参数模板
     *
     * @param pointTemplate 采集参数模板
     * @return 结果
     */
    int updatePointTemplate(PointTemplate pointTemplate);

    /**
     * 批量删除采集参数模板
     *
     * @param ids 需要删除的采集参数模板ID
     * @return 结果
     */
    int deletePointTemplateByIds(String[] ids);

    /**
     * 查询相同设备类型下是否有重复的编码
     *
     * @param code       参数编码
     * @param deviceType 设备类型
     * @return 是否存在
     */
    boolean hasExist(String code, String deviceType);

    boolean hasExist(PointTemplate pointTemplate);

    /**
     * 查询相同设备类型下是否有重复的编码
     *
     * @param code       参数编码
     * @param deviceType 设备类型
     * @return 是否存在
     */
    boolean codeHasExist(String code, String deviceType);
    boolean codeHasExist(PointTemplate pointTemplate);
    /**
     * 查询指标模板
     *
     * @return 结果
     */
    List<PointTemplate> listTemplate();

    /**
     * 查询指标模板map
     *
     * @return 结果
     */
    Map<String, List<PointTemplate>> listTemplateMap();

    Page<PointTemplate> selectPointTemplatePage(PointTemplate pointTemplate, Long pageNum, Long pageSize);
}
