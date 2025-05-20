package com.zhitan.knowledgeBase.domain.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 知识库附件表(KnowledgeBaseFile)实体类
 */
@Data
@TableName("knowledge_base_file")
public class KnowledgeBaseFile implements Serializable {
    private static final long serialVersionUID = 998732434860554353L;
    /**
     * id
     */
    private Long id;
    /**
     * 知识库id
     */
    private Long knowledgeBaseId;
    /**
     * 文件地址
     */
    private String url;
}

