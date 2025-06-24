package com.zhitan.saving.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.saving.domain.entity.EnergySavingProgram;
import org.apache.ibatis.annotations.Mapper;

/**
 * 节能项目管理
 * Mapper接口
 *
 * @author ZhiTan
 */
@Mapper
public interface EnergySavingProgramMapper extends BaseMapper<EnergySavingProgram> {
    /**
     * 查询
     * 节能项目管理
     *
     * @param id 节能项目管理
     *           主键
     * @return 节能项目管理
     */
    EnergySavingProgram selectEnergySavingProgramById(Long id);

}
