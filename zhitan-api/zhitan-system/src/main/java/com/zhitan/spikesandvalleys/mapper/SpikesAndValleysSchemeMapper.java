package com.zhitan.spikesandvalleys.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.spikesandvalleys.domain.SpikesAndValleysScheme;
import org.apache.ibatis.annotations.Mapper;


/**
 * 尖峰平谷时间段明细Mapper接口
 *
 * @author ZhiTan
 */
@Mapper
public interface SpikesAndValleysSchemeMapper extends BaseMapper<SpikesAndValleysScheme> {
    /**
     * 查询尖峰平谷时间段明细
     *
     * @param id 尖峰平谷时间段明细主键
     * @return 尖峰平谷时间段明细
     */
    SpikesAndValleysScheme selectSpikesAndValleysSchemeById(String id);

    /**
     * 查询尖峰平谷时间段明细列表
     *
     * @param spikesAndValleysScheme 尖峰平谷时间段明细
     * @return 尖峰平谷时间段明细集合
     */
    List<SpikesAndValleysScheme> selectSpikesAndValleysSchemeList(SpikesAndValleysScheme spikesAndValleysScheme);

    /**
     * 新增尖峰平谷时间段明细
     *
     * @param spikesAndValleysScheme 尖峰平谷时间段明细
     * @return 结果
     */
    int insertSpikesAndValleysScheme(SpikesAndValleysScheme spikesAndValleysScheme);

    /**
     * 修改尖峰平谷时间段明细
     *
     * @param spikesAndValleysScheme 尖峰平谷时间段明细
     * @return 结果
     */
    int updateSpikesAndValleysScheme(SpikesAndValleysScheme spikesAndValleysScheme);

    /**
     * 删除尖峰平谷时间段明细
     *
     * @param id 尖峰平谷时间段明细主键
     * @return 结果
     */
    int deleteSpikesAndValleysSchemeById(String id);

    /**
     * 批量删除尖峰平谷时间段明细
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteSpikesAndValleysSchemeByIds(String[] ids);
}
