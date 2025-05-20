package com.zhitan.knowledgeBase.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.knowledgeBase.domain.entity.KnowledgeBaseFile;
import org.apache.ibatis.annotations.Mapper;

/**
 * 知识库附件表(KnowledgeBaseFile)表数据库访问层
 */
@Mapper
public interface KnowledgeBaseFileMapper extends BaseMapper<KnowledgeBaseFile> {

}

