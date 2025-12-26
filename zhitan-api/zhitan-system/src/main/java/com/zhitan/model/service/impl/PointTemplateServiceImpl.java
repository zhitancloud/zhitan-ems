package com.zhitan.model.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.constant.Constants;
import com.zhitan.common.core.redis.RedisCache;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.model.domain.PointTemplate;
import com.zhitan.model.mapper.PointTemplateMapper;
import com.zhitan.model.service.IPointTemplateService;
import lombok.AllArgsConstructor;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/**
 * 采集参数模板Service业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class PointTemplateServiceImpl implements IPointTemplateService {
    private RedisCache cache;
    private PointTemplateMapper pointTemplateMapper;


    /**
     * 查询采集参数模板
     *
     * @param id 采集参数模板ID
     * @return 采集参数模板
     */
    @Override
    public PointTemplate selectPointTemplateById(String id) {
        return pointTemplateMapper.selectPointTemplateById(id);
    }

    /**
     * 查询采集参数模板列表
     *
     * @param pointTemplate 采集参数模板
     * @return 采集参数模板
     */
    @Override
    public List<PointTemplate> selectPointTemplateList(PointTemplate pointTemplate) {
        return pointTemplateMapper.selectPointTemplateList(pointTemplate);
    }

    /**
     * 新增采集参数模板
     *
     * @param pointTemplate 采集参数模板
     * @return 结果
     */
    @Override
    public int insertPointTemplate(PointTemplate pointTemplate) {
        return pointTemplateMapper.insertPointTemplate(pointTemplate);
    }

    /**
     * 修改采集参数模板
     *
     * @param pointTemplate 采集参数模板
     * @return 结果
     */
    @Override
    public int updatePointTemplate(PointTemplate pointTemplate) {
        return pointTemplateMapper.updatePointTemplate(pointTemplate);
    }

    /**
     * 批量删除采集参数模板
     *
     * @param ids 需要删除的采集参数模板ID
     * @return 结果
     */
    @Override
    public int deletePointTemplateByIds(String[] ids) {
        return pointTemplateMapper.deletePointTemplateByIds(ids);
    }

    @Override
    public boolean hasExist(String code, String deviceType) {
        int count = pointTemplateMapper.hasExistWhenAdd(code, deviceType);
        return count > 0;
    }

    @Override
    public boolean hasExist(PointTemplate pointTemplate) {
        int count = pointTemplateMapper.hasExistWhenUpdate(pointTemplate.getId(), pointTemplate.getCode(), pointTemplate.getDeviceType());
        return count > 0;
    }

    @Override
    public boolean codeHasExist(String key, String deviceType) {
        int count = pointTemplateMapper.hasExistWhenAdd(key, deviceType);
        return count > 0;
    }
    @Override
    public boolean codeHasExist(PointTemplate pointTemplate) {
        int count = pointTemplateMapper.hasExistWhenUpdate(pointTemplate.getId(), pointTemplate.getGatewayKey(), pointTemplate.getDeviceType());
        return count > 0;
    }

    /**
     * 查询指标模板
     *
     * @return 结果
     */
    @Override
    public List<PointTemplate> listTemplate() {
        Object cacheObject = cache.getCacheObject(Constants.POINT_TEMPLATE_KEY);
        if (ObjectUtils.isNotEmpty(cacheObject)) {
            return JSONObject.parseArray(cacheObject.toString(), PointTemplate.class);
        }

        List<PointTemplate> pointTemplates = pointTemplateMapper.listTemplate();
        if (CollectionUtils.isEmpty(pointTemplates)) {
            return Collections.emptyList();
        }

        String jsonString = JSONObject.toJSONString(pointTemplates);
        cache.setCacheObject(Constants.POINT_TEMPLATE_KEY, jsonString, 6, TimeUnit.HOURS);
        return pointTemplates;
    }

    /**
     * 查询指标模板map
     *
     * @return 结果
     */
    @Override
    public Map<String, List<PointTemplate>> listTemplateMap() {
        Map<String, List<PointTemplate>> map = new HashMap<>();
        List<PointTemplate> pointTemplates = this.listTemplate();

        if (CollectionUtils.isNotEmpty(pointTemplates)) {
            return pointTemplates.stream().collect(Collectors.groupingBy(PointTemplate::getCode));
        }
        return map;
    }

    @Override
    public Page<PointTemplate> selectPointTemplatePage(PointTemplate pointTemplate, Long pageNum, Long pageSize) {
        LambdaQueryWrapper<PointTemplate> wrapper = new LambdaQueryWrapper<>();
        wrapper.like(StringUtils.isNotEmpty(pointTemplate.getCode()), PointTemplate::getCode, pointTemplate.getCode());
        wrapper.like(StringUtils.isNotEmpty(pointTemplate.getName()), PointTemplate::getName, pointTemplate.getName());
        wrapper.eq(StringUtils.isNotEmpty(pointTemplate.getDeviceType()), PointTemplate::getDeviceType, pointTemplate.getDeviceType());
        wrapper.orderByDesc(PointTemplate::getCreateTime);
        Page<PointTemplate> page = pointTemplateMapper.selectPage(new Page<PointTemplate>(pageNum, pageSize), wrapper);
        return page;
    }
}
