package com.zhitan.model.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.enums.PointType;
import com.zhitan.meter.domain.Meter;
import com.zhitan.meter.services.IMeterService;
import com.zhitan.model.domain.EnergyIndexQuery;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.PointTemplate;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.mapper.MeterPointMapper;
import com.zhitan.model.service.IMeterPointService;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.model.service.IPointTemplateService;
import lombok.AllArgsConstructor;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/**
 * 指标信息Service业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class MeterPointServiceImpl implements IMeterPointService {
    private MeterPointMapper meterPointMapper;
    private IPointTemplateService daqTemplateService;
    private IMeterService meterImplementService;
    private IModelNodeService modelNodeService;

    @Override
    public MeterPoint getMeterPointByCode(String code) {
        return meterPointMapper.getMeterPointByCode(code);
    }

    @Override
    public List<MeterPoint> listMeterPointByMeterIds(String nodeId, List<String> meterId) {
        return meterPointMapper.listMeterPointByMeterIds(nodeId, meterId);
    }

    /**
     * 查询指标信息
     *
     * @param indexId 指标信息ID
     * @return 指标信息
     */
    @Override
    public MeterPoint getMeterPointById(String indexId) {
        return meterPointMapper.getMeterPointById(indexId);
    }

    @Override
    public List<MeterPoint> listMeterPointByIds(List<String> indexId) {
        if (CollectionUtils.isEmpty(indexId)) {
            return Collections.emptyList();
        }
        return meterPointMapper.listMeterPointByIds(indexId);
    }

    @Override
    public List<MeterPoint> listMeterPointByQuery(MeterPoint meterPoint) {
        return meterPointMapper.listMeterPointList(meterPoint);
    }

    /**
     * 查询指标信息列表
     *
     * @return 指标信息
     */
    @Override
    public List<MeterPoint> listMeterPointByQuery(EnergyIndexQuery query) {
        return meterPointMapper.listMeterPointByQuery(query);
    }

    /**
     * 新增指标信息
     *
     * @param nodeId
     * @param meterPoint 指标信息
     * @return 结果
     */
    @Override
    public int insertMeterPoint(String nodeId, MeterPoint meterPoint) {
        meterPoint.setNodeId(nodeId);
        meterPointMapper.insertMeterPoint(meterPoint);
        return meterPointMapper.insertNodePoint(nodeId, meterPoint.getPointId());
    }

    /**
     * 修改指标信息
     *
     * @param meterPoint 指标信息
     * @return 结果
     */
    @Override
    public int updateMeterPoint(MeterPoint meterPoint) {
        return meterPointMapper.updateMeterPoint(meterPoint);
    }

    /**
     * 批量删除指标信息
     *
     * @param nodeId
     * @param indexIds 需要删除的指标信息ID
     * @return 结果
     */
    @Override
    public int deleteNodeMeterPointByIds(String nodeId, String[] indexIds) {
        return meterPointMapper.deleteNodeMeterPointByIds(nodeId, indexIds);
    }

    @Override
    public boolean meterPointExist(String code) {
        int count = meterPointMapper.meterPointExist(code);
        return count > 0;
    }

    @Override
    public boolean meterPointExist(String indexId, String code) {
        int count = meterPointMapper.meterPointExist(indexId, code);
        return count > 0;
    }

    @Override
    public AjaxResult addMeterPoint(String meterId) {
        Meter meter = meterImplementService.selectMeterImplementById(meterId);
        if (meter == null) {
            return AjaxResult.error("找不到对应的计量器具！");
        }

        PointTemplate query = new PointTemplate();
        query.setDeviceType(meter.getMeterType());
        List<PointTemplate> pointTemplates = daqTemplateService.selectPointTemplateList(query);
        if (pointTemplates.isEmpty()) {
            return AjaxResult.error("计量器具所属的类型没有找到对应的模板！");
        }

        List<MeterPoint> energyIndices = new ArrayList<>();
        pointTemplates.forEach(daqTemplate -> {
            MeterPoint meterPoint = new MeterPoint();
            meterPoint.setPointId(UUID.randomUUID().toString());
            meterPoint.setCode(meter.getCode() + "_" + daqTemplate.getCode());
            meterPoint.setName(daqTemplate.getName());
            meterPoint.setUnitId(daqTemplate.getUnit());
            meterPoint.setPointType(PointType.COLLECT);
            meterPoint.setMeterId(meterId);
            energyIndices.add(meterPoint);
        });

        meterPointMapper.deleteMeterPointByMeterId(meterId);
        meterPointMapper.insertMeterPointBatch(energyIndices);
        return AjaxResult.success();
    }

    @Override
    public List<MeterPoint> listMeterPointByMeterId(String meterId) {
        return meterPointMapper.listMeterPointByMeterId(meterId);
    }

    @Override
    public List<MeterPoint> listCollectPointByMeterId(String deviceId) {
        return meterPointMapper.listCollectPointByMeterId(deviceId);
    }

    @Override
    public List<MeterPoint> listMeterPointByCodes(List<String> indexCodes) {
        if (indexCodes.isEmpty()) {
            return new ArrayList<>();
        }

        return meterPointMapper.listMeterPointByCodes(indexCodes);
    }

    @Override
    public List<MeterPoint> listMeterPointByNodeId(String nodeId) {
        return meterPointMapper.listMeterPointByNodeId(nodeId);
    }

    @Override
    public void deleteMeterPointByPoints(List<String> removeLink) {
        meterPointMapper.deleteMeterPointByPoints(removeLink);
    }

    @Override
    public Page<MeterPoint> pageMeterPoint(EnergyIndexQuery query, Long pageNum, Long pageSize) {
        return meterPointMapper.pageMeterPoint(new Page<>(pageNum, pageSize), query);
    }

    @Override
    public List<MeterPoint> listMeterPointByCodeAndNodeId(String code, String nodeId) {
        List<MeterPoint> meterPointList = meterPointMapper.listMeterPointByCodeAndNodeId(code, nodeId);
        return meterPointList;
    }

    /**
     * 根据用能单元id和设备id，以及点位编码获取点位
     *
     * @param nodeId    节点id
     * @param meterId   设备id
     * @param indexCode 点位编码或者点位编码的一部分
     * @return
     */
    @Override
    public MeterPoint getMeterPointByMeterIdPointCodeAndNodeId(String nodeId, String meterId, String indexCode) {
        List<MeterPoint> meterPointList = listMeterPointByMeterIdPointCodeAndNodeId(nodeId, meterId, indexCode);
        return meterPointList.stream().findFirst().orElse(new MeterPoint());
    }

    /**
     * 根据用能单元id和设备id，以及点位编码获取点位
     *
     * @param nodeId    节点id
     * @param meterId   设备id
     * @param indexCode 点位编码或者点位编码的一部分
     * @return
     */
    public List<MeterPoint> listMeterPointByMeterIdPointCodeAndNodeId(String nodeId, String meterId, String indexCode) {
        List<MeterPoint> meterPointList = meterPointMapper.listMeterPointByMeterIdPointCodeAndNodeId(meterId, indexCode, nodeId);
        return meterPointList;
    }

    /**
     * 根据用能单元id和设备id，以及点位编码获取点位
     *
     * @param nodeId  节点id
     * @param meterId 设备id
     * @return
     */
    @Override
    public List<MeterPoint> listMeterPointByNodeIdAndMeterId(String nodeId, String meterId) {
        List<MeterPoint> meterPointList = meterPointMapper.listMeterPointByMeterIdPointCodeAndNodeId(meterId, null, nodeId);
        return meterPointList;
    }

    @Override
    public List<ModelNodePointInfo> listModelNodePointByPointIds(String[] indexIds) {
        return meterPointMapper.listModelNodePointByPointIds(indexIds);
    }
}
