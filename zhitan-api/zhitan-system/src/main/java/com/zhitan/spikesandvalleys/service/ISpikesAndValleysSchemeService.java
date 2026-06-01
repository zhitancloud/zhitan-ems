package com.zhitan.spikesandvalleys.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zhitan.spikesandvalleys.domain.SpikesAndValleysScheme;
import com.zhitan.spikesandvalleys.domain.vo.SpikesAndValleysSchemeVo;

/**
 * 尖峰平谷时间段明细Service接口
 *
 * @author ZhiTan
 */
public interface ISpikesAndValleysSchemeService extends IService<SpikesAndValleysScheme> {
    /**
     * 查询尖峰平谷时间段明细
     *
     * @param id 尖峰平谷时间段明细主键
     * @return 尖峰平谷时间段明细
     */
    SpikesAndValleysSchemeVo selectSpikesAndValleysSchemeById(String id);

    /**
     * 查询尖峰平谷时间段明细列表
     *
     * @param spikesAndValleysScheme 尖峰平谷时间段明细
     * @return 尖峰平谷时间段明细集合
     */
    Page<SpikesAndValleysSchemeVo> selectSpikesAndValleysSchemeList(SpikesAndValleysScheme spikesAndValleysScheme, Long pageNum, Long pageSize);

    /**
     * 新增尖峰平谷时间段明细
     *
     * @param spikesAndValleysScheme 尖峰平谷时间段明细
     * @return 结果
     */
    int insertSpikesAndValleysScheme(SpikesAndValleysSchemeVo spikesAndValleysScheme);

    /**
     * 修改尖峰平谷时间段明细
     *
     * @param spikesAndValleysScheme 尖峰平谷时间段明细
     * @return 结果
     */
    int updateSpikesAndValleysScheme(SpikesAndValleysSchemeVo spikesAndValleysScheme);

    /**
     * 批量删除尖峰平谷时间段明细
     *
     * @param ids 需要删除的尖峰平谷时间段明细主键集合
     * @return 结果
     */
    int deleteSpikesAndValleysSchemeByIds(String[] ids);

}
