package com.zhitan.model.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.model.domain.PointTemplate;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 采集参数模板Mapper接口
 *
 * @author zhitan
 */
public interface PointTemplateMapper extends BaseMapper<PointTemplate> {
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
     * 删除采集参数模板
     *
     * @param id 采集参数模板ID
     * @return 结果
     */
    int deletePointTemplateById(String id);

    /**
     * 批量删除采集参数模板
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int deletePointTemplateByIds(String[] ids);

    int hasExistWhenAdd(@Param("code") String code, @Param("deviceType") String deviceType);

    int hasExistWhenUpdate(@Param("id") String id, @Param("code") String code, @Param("deviceType") String deviceType);

    int codeHasExistWhenAdd(@Param("kay") String key, @Param("deviceType") String deviceType);

    int codeHasExistWhenUpdate(@Param("id") String id, @Param("key") String code, @Param("deviceType") String deviceType);
    /**
     * 查询指标模板信息
     *
     * @return 结果
     */
    List<PointTemplate> listTemplate();
}
