package com.zhitan.saving.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.saving.domain.dto.PolicyPageDTO;
import com.zhitan.saving.domain.entity.Policy;
import com.zhitan.saving.domain.vo.PolicyPageVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 政策法规Mapper接口
 *
 * @author ZhiTan
 */
@Mapper
public interface PolicyMapper extends BaseMapper<Policy> {


    /**
     * 政策法规-列表分页查询
     */
    Page<PolicyPageVO> getPageList(Page<PolicyPageVO> pageInfo, @Param("dto") PolicyPageDTO pageDTO);

}
