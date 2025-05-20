package com.zhitan.model.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.basicdata.domain.vo.EnergyTypeMeterPointVO;
import com.zhitan.model.domain.EnergyIndexQuery;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 指标信息Mapper接口
 *
 * @author zhitan
 */
public interface MeterPointMapper extends BaseMapper<MeterPoint> {

    MeterPoint getMeterPointByCode(String code);

    List<MeterPoint> listMeterPointByMeterIds(@Param("nodeId") String nodeId, @Param("meterIds") List<String> meterIds);

    /**
     * 查询指标信息
     *
     * @param indexId 指标信息ID
     * @return 指标信息
     */
    MeterPoint getMeterPointById(String indexId);

    List<MeterPoint> listMeterPointByIds(@Param("indexIds") List<String> indexIds);

    /**
     * 查询指标信息列表
     *
     * @param meterPoint 指标信息
     * @return 指标信息集合
     */
    List<MeterPoint> listMeterPointList(MeterPoint meterPoint);

    /**
     * 新增指标信息
     *
     * @param meterPoint 指标信息
     * @return 结果
     */
    int insertMeterPoint(MeterPoint meterPoint);

    /**
     * 修改指标信息
     *
     * @param meterPoint 指标信息
     * @return 结果
     */
    int updateMeterPoint(MeterPoint meterPoint);

    /**
     * 批量删除指标信息
     *
     * @param nodeId
     * @param indexIds 需要删除的数据ID
     * @return 结果
     */
    int deleteNodeMeterPointByIds(@Param("nodeId") String nodeId, @Param("indexIds") String[] indexIds);

    int meterPointExist(String code);

    int meterPointExist(@Param("indexId") String indexId, @Param("code") String code);

    void insertMeterPointBatch(@Param("energyIndices") List<MeterPoint> energyIndices);

    List<MeterPoint> listMeterPointByMeterId(String meterId);

    void deleteMeterPointByMeterId(String meterId);

    List<MeterPoint> listCollectPointByMeterId(String meterId);

    List<MeterPoint> listMeterPointByCodes(List<String> indexCodes);

    List<MeterPoint> listMeterPointByNodeId(String nodeId);

    List<MeterPoint> listMeterPointByQuery(EnergyIndexQuery query);

    void deleteMeterPointByPoints(@Param("indexIds") List<String> indexIds);

    int insertNodePoint(@Param("nodeId") String nodeId, @Param("indexId") String indexId);

    Page<MeterPoint> pageMeterPoint(@Param("page") Page<?> page, @Param("query") EnergyIndexQuery energyIndexQuery);

    List<MeterPoint> listMeterPointByCodeAndNodeId(@Param("code") String code, @Param("nodeId") String nodeId);

    List<MeterPoint> listMeterPointByMeterIdPointCodeAndNodeId(@Param("meterId") String meterId, @Param("indexCode") String indexCode, @Param("nodeId") String nodeId);

    List<ModelNodePointInfo> listModelNodePointByPointIds(@Param("indexIds") String[] indexIds);

    List<EnergyTypeMeterPointVO> listEnergyTypeMeterPointByPointIds(@Param("indexIds") List<String> indexIds);
}
