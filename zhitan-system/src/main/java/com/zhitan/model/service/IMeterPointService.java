package com.zhitan.model.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.model.domain.EnergyIndexQuery;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.vo.MeterPointAddDTO;
import com.zhitan.model.domain.vo.MeterPointEditDTO;
import com.zhitan.model.domain.vo.ModelNodePointInfo;

import java.util.List;

/**
 * 指标信息Service接口
 *
 * @author zhitan
 */
public interface IMeterPointService {

    MeterPoint getMeterPointByCode(String code);

    /**
     * 根据计量器具id集合查询点位信息
     *
     * @param meterId 计量器具id集合
     * @return
     */
    List<MeterPoint> listMeterPointByMeterIds(String nodeId, List<String> meterId);

    /**
     * 查询指标信息
     *
     * @param indexId 指标信息ID
     * @return 指标信息
     */
    MeterPoint getMeterPointById(String indexId);

    /**
     * 查询指标信息
     *
     * @param indexId 指标信息ID
     * @return 指标信息
     */
    List<MeterPoint> listMeterPointByIds(List<String> indexId);

    /**
     * 查询指标信息列表
     *
     * @param meterPoint 指标信息
     * @return 指标信息集合
     */
    List<MeterPoint> listMeterPointByQuery(MeterPoint meterPoint);

    /**
     * 查询指标信息列表
     *
     * @param query 指标信息
     * @return 指标信息集合
     */
    List<MeterPoint> listMeterPointByQuery(EnergyIndexQuery query);

    /**
     * 新增指标信息
     *
     * @param nodeId
     * @param meterPointAddDTO 指标信息
     * @return 结果
     */
    int insertMeterPoint(String nodeId, MeterPointAddDTO meterPointAddDTO);

    /**
     * 修改指标信息
     *
     * @param meterPointEditDTO 指标信息
     * @return 结果
     */
    int updateMeterPoint(MeterPointEditDTO meterPointEditDTO);

    /**
     * 批量删除指标信息
     *
     * @param nodeId
     * @param indexIds 需要删除的指标信息ID
     * @return 结果
     */
    int deleteNodeMeterPointByIds(String nodeId, String[] indexIds);

    boolean meterPointExist(String code);

    boolean meterPointExist(String indexId, String code);

    AjaxResult addMeterPoint(String meterId);

    List<MeterPoint> listMeterPointByMeterId(String meterId);

    List<MeterPoint> listCollectPointByMeterId(String deviceId);

    List<MeterPoint> listMeterPointByCodes(List<String> indexCodes);

    List<MeterPoint> listMeterPointByNodeId(String nodeId);

    void deleteMeterPointByPoints(List<String> removeLink);

    Page<MeterPoint> pageMeterPoint(EnergyIndexQuery query, Long pageNum, Long pageSize);

    List<MeterPoint> listMeterPointByCodeAndNodeId(String code, String nodeId);

    /**
     * 根据用能单元id和设备id，以及点位编码获取点位
     *
     * @param nodeId    节点id
     * @param meterId   设备id
     * @param indexCode 点位编码或者点位编码的一部分
     * @return
     */
    MeterPoint getMeterPointByMeterIdPointCodeAndNodeId(String nodeId, String meterId, String indexCode);

    /**
     * 根据用能单元id和设备id，以及点位编码获取点位
     *
     * @param nodeId  节点id
     * @param meterId 设备id
     * @return
     */
    List<MeterPoint> listMeterPointByNodeIdAndMeterId(String nodeId, String meterId);

    /**
     * 根据点位id获取模型节点点位信息
     *
     * @param indexIds
     * @return
     */
    List<ModelNodePointInfo> listModelNodePointByPointIds(String[] indexIds);
}
