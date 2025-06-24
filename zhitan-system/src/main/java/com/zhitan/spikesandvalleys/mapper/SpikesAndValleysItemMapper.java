package com.zhitan.spikesandvalleys.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.spikesandvalleys.domain.SpikesAndValleysItem;
import org.apache.ibatis.annotations.Mapper;


/**
 * 【请填写功能名称】Mapper接口
 *
 * @author ZhiTan
 */
@Mapper
public interface SpikesAndValleysItemMapper extends BaseMapper<SpikesAndValleysItem> {
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    SpikesAndValleysItem selectSpikesAndValleysItemById(String id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param spikesAndValleysItem 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    List<SpikesAndValleysItem> selectSpikesAndValleysItemList(SpikesAndValleysItem spikesAndValleysItem);

    /**
     * 新增【请填写功能名称】
     *
     * @param spikesAndValleysItem 【请填写功能名称】
     * @return 结果
     */
    int insertSpikesAndValleysItem(SpikesAndValleysItem spikesAndValleysItem);

    /**
     * 修改【请填写功能名称】
     *
     * @param spikesAndValleysItem 【请填写功能名称】
     * @return 结果
     */
    int updateSpikesAndValleysItem(SpikesAndValleysItem spikesAndValleysItem);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    int deleteSpikesAndValleysItemById(String id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteSpikesAndValleysItemByIds(String[] ids);
}
