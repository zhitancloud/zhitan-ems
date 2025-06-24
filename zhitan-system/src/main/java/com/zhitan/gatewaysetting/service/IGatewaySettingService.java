package com.zhitan.gatewaysetting.service;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zhitan.gatewaysetting.domain.GatewaySetting;

import java.util.List;

/**
 * 网关配置信息Service接口
 *
 * @author ZhiTan
 */
public interface IGatewaySettingService extends IService<GatewaySetting> {
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
     * 批量删除网关配置信息
     *
     * @param ids 需要删除的网关配置信息主键集合
     * @return 结果
     */
    int deleteGatewaySettingByIds(String[] ids);

    /**
     * 删除网关配置信息信息
     *
     * @param id 网关配置信息主键
     * @return 结果
     */
    int deleteGatewaySettingById(String id);

    /**
     * 校验网关编码是否唯一
     *
     * @param gatewaySetting
     * @return
     */
    int checkOne(GatewaySetting gatewaySetting);

    /**
     * 分页查询
     *
     * @param gatewaySetting
     * @return
     */
    Page<GatewaySetting> selectGatewaySettingPage(GatewaySetting gatewaySetting, Long pageNum, Long pageSize);
}
