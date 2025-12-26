package com.zhitan.energyIndicators.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.energyIndicators.domain.EnergyIndicators;

import java.util.List;

/**
 * 能源指标Mapper接口
 *
 * @author ZhiTan
 */
public interface EnergyIndicatorsMapper extends BaseMapper<EnergyIndicators> {
    /**
     * 查询能源指标
     *
     * @param nodeId 能源指标主键
     * @return 能源指标
     */
    EnergyIndicators selectEnergyIndicatorsByNodeId(String nodeId);

    /**
     * 查询能源指标列表
     *
     * @param energyIndicators 能源指标
     * @return 能源指标集合
     */
    List<EnergyIndicators> selectEnergyIndicatorsList(EnergyIndicators energyIndicators);

    /**
     * 新增能源指标
     *
     * @param energyIndicators 能源指标
     * @return 结果
     */
    int insertEnergyIndicators(EnergyIndicators energyIndicators);

    /**
     * 修改能源指标
     *
     * @param energyIndicators 能源指标
     * @return 结果
     */
    int updateEnergyIndicators(EnergyIndicators energyIndicators);

    /**
     * 删除能源指标
     *
     * @param energyIndicatorsId 能源指标主键
     * @return 结果
     */
    int deleteEnergyIndicatorsByEnergyIndicatorsId(String energyIndicatorsId);

    /**
     * 批量删除能源指标
     *
     * @param energyIndicatorsIdS 需要删除的数据主键集合
     * @return 结果
     */
    int deleteEnergyIndicatorsByEnergyIndicatorsIds(String[] energyIndicatorsIdS);
}
