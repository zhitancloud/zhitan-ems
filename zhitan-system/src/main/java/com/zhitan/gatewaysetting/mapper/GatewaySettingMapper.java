package com.zhitan.gatewaysetting.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.gatewaysetting.domain.GatewaySetting;

import java.util.List;

/**
 * 网关配置信息Mapper接口
 *
 * @author ZhiTan
 */
public interface GatewaySettingMapper extends BaseMapper<GatewaySetting> {
    /**
     * 查询网关配置信息
     *
     * @param id 网关配置信息主键
     * @return 网关配置信息
     */
    GatewaySetting selectGatewaySettingById(String id);

    /**
     * 查询网关配置信息列表
     *
     * @param gatewaySetting 网关配置信息
     * @return 网关配置信息集合
     */
    List<GatewaySetting> selectGatewaySettingList(GatewaySetting gatewaySetting);

    /**
     * 新增网关配置信息
     *
     * @param gatewaySetting 网关配置信息
     * @return 结果
     */
    int insertGatewaySetting(GatewaySetting gatewaySetting);

    /**
     * 修改网关配置信息
     *
     * @param gatewaySetting 网关配置信息
     * @return 结果
     */
    int updateGatewaySetting(GatewaySetting gatewaySetting);

    /**
     * 删除网关配置信息
     *
     * @param id 网关配置信息主键
     * @return 结果
     */
    int deleteGatewaySettingById(String id);

    /**
     * 批量删除网关配置信息
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteGatewaySettingByIds(String[] ids);

    /**
     * 校验网关编码是否唯一
     *
     * @param gatewaySetting 校验参数
     * @return 结果
     */
    int checkOne(GatewaySetting gatewaySetting);

    int addNum(GatewaySetting gatewaySetting);

    int subNum(GatewaySetting gatewaySetting);
}
