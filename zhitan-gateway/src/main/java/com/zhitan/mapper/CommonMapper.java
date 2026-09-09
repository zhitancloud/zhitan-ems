package com.zhitan.mapper;

import com.zhitan.model.IndexTemplate;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * common mapper
 */
public interface CommonMapper {

    /**
     * 获取点位模板
     */
    List<IndexTemplate> getIndexTemplate();
}
