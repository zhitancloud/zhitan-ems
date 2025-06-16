package com.zhitan.model.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.basicdata.domain.Product;
import com.zhitan.basicdata.domain.SysEnergy;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.meter.domain.Meter;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.domain.TreeObject;
import com.zhitan.model.domain.vo.MeterPointVO;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.mapper.MeterPointMapper;
import com.zhitan.model.mapper.ModelNodeMapper;
import com.zhitan.model.service.IModelNodeService;
import lombok.AllArgsConstructor;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static org.apache.commons.lang3.StringUtils.equalsAnyIgnoreCase;
import static org.apache.commons.lang3.StringUtils.isBlank;

/**
 * 模型节点Service业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class ModelNodeServiceImpl implements IModelNodeService {

    private ModelNodeMapper modelNodeMapper;

    private MeterPointMapper meterPointMapper;

    /**
     * 查询模型节点
     *
     * @param nodeId 模型节点ID
     * @return 模型节点
     */
    @Override
    public ModelNode selectModelNodeById(String nodeId) {
        return modelNodeMapper.selectModelNodeById(nodeId);
    }

    /**
     * 查询模型节点列表
     *
     * @param modelNode 模型节点
     * @return 模型节点
     */
    @Override
    public List<ModelNode> selectModelNodeList(ModelNode modelNode) {
        return modelNodeMapper.selectModelNodeList(modelNode);
    }

    /**
     * 新增模型节点
     *
     * @param modelNode 模型节点
     * @return 结果
     */
    @Override
    public int insertModelNode(ModelNode modelNode) {
        int maxOrder = modelNodeMapper.getMaxOrder(modelNode.getParentId());
        modelNode.setOrderNum(maxOrder + 1);
        return modelNodeMapper.insertModelNode(modelNode);
    }

    /**
     * 修改模型节点
     *
     * @param modelNode 模型节点
     * @return 结果
     */
    @Override
    public int updateModelNode(ModelNode modelNode) {
        return modelNodeMapper.updateModelNode(modelNode);
    }

    /**
     * 批量删除模型节点
     *
     * @param nodeIds 需要删除的模型节点ID
     * @return 结果
     */
    @Override
    public int deleteModelNodeByIds(String[] nodeIds) {
        return modelNodeMapper.deleteModelNodeByIds(nodeIds);
    }

    /**
     * 删除模型节点信息
     *
     * @param nodeId 模型节点ID
     * @return 结果
     */
    @Override
    public int deleteModelNodeById(String nodeId) {
        return modelNodeMapper.deleteModelNodeById(nodeId);
    }

    @Override
    public List<ModelNode> getModelNodeByModelCode(String modelCode) {
        return modelNodeMapper.getModelNodeByModelCode(modelCode);
    }

    @Override
    public List<TreeObject> buildModelNodeTree(List<ModelNode> modelNodes) {
        List<ModelNode> modelNodeTree = modelNodes.stream()
                .filter(f -> isBlank(f.getParentId()))
                .collect(Collectors.toList());
        for (ModelNode modelNode : modelNodeTree) {
            List<ModelNode> children = modelNodes.stream()
                    .filter(f -> equalsAnyIgnoreCase(f.getParentId(), modelNode.getNodeId()))
                    .collect(Collectors.toList());
            buildTree(modelNode, children, modelNodes);
        }

        return modelNodeTree.stream().map(TreeObject::new).collect(Collectors.toList());
    }

    @Override
    public void updateOrder(String nodeId, String parentId, String[] children) {
        modelNodeMapper.updateModelNodeParent(nodeId, parentId);
        Map<String, Integer> orders = new HashMap<>();
        for (int i = 0; i < children.length; i++) {
            orders.put(children[i], i);
        }
        modelNodeMapper.updateModelNodeOrder(orders);
    }

    @Override
    public boolean modelNodeHasExist(String code, String modelCode) {
        int count = modelNodeMapper.modelNodeHasExist(code, modelCode);
        return count > 0;
    }

    @Override
    public boolean modelNodeHasExist(ModelNode modelNode) {
        int count = modelNodeMapper
                .modelNodeHasExistWhenUpdate(modelNode.getNodeId(), modelNode.getCode(),
                        modelNode.getModelCode());
        return count > 0;
    }

    @Override
    public boolean hasEnergyIndex(String nodeId) {
        MeterPoint meterPoint = new MeterPoint();
        meterPoint.setNodeId(nodeId);
        List<MeterPoint> energyIndices = meterPointMapper.listMeterPointList(meterPoint);
        return energyIndices.size() > 0;
    }

    @Override
    public void setDevice(String nodeId, String[] deviceIds) {
        modelNodeMapper.setDevice(nodeId, deviceIds);
    }

    @Override
    public List<Meter> getSettingDevice(String nodeId) {
        return modelNodeMapper.getSettingDevice(nodeId);
    }

    @Override
    public List<MeterPointVO> getSettingIndex(String nodeId) {
        return modelNodeMapper.getSettingIndex(nodeId);
    }

    @Override
    public List<MeterPoint> getSettingIndexByWhere(String nodeId, String indexName) {
        return modelNodeMapper.getSettingIndexByWhere(nodeId, indexName);
    }

    @Override
    public void delDevice(String nodeId, String[] deviceIds) {
        if (deviceIds.length == 0) {
            return;
        }

        modelNodeMapper.delDevice(nodeId, deviceIds);
    }

    @Override
    public List<SysEnergy> getSettingEnergy(String nodeId) {
        return modelNodeMapper.getSettingEnergy(nodeId);
    }

    @Override
    public void setEnergy(String nodeId, Integer[] energyIds) {
        modelNodeMapper.setEnergy(nodeId, energyIds);
    }

    @Override
    public void delEnergy(String nodeId, Integer[] energyIds) {
        if (energyIds.length == 0) {
            return;
        }

        modelNodeMapper.delEnergy(nodeId, energyIds);
    }

    @Override
    public List<Product> getSettingProduct(String nodeId) {
        return modelNodeMapper.getSettingProduct(nodeId);
    }

    @Override
    public void setProduct(String nodeId, Integer[] productIds) {
        modelNodeMapper.setProduct(nodeId, productIds);
    }

    @Override
    public void delProduct(String nodeId, Integer[] productIds) {
        if (productIds.length == 0) {
            return;
        }

        modelNodeMapper.delProduct(nodeId, productIds);
    }

    @Override
    public void setIndex(String nodeId, String indexType, String[] indexIds) {
        modelNodeMapper.delIndexNodeIdAndIndexType(nodeId, indexType);
        modelNodeMapper.setIndexAndNodeId(nodeId, indexIds);
    }

    @Override
    public void delIndex(String nodeId, String[] indexIds) {
        if (indexIds.length == 0) {
            return;
        }

        modelNodeMapper.delIndex(nodeId, indexIds);
    }

    @Override
    public Page<MeterPoint> getSettingIndex(String pointType, String nodeId, String code,
                                            String name, Long pageNum, Long pageSize) {
        return modelNodeMapper.getSettingIndexByType(pointType, nodeId,
                code, name,
                new Page<>(pageNum, pageSize));
    }

    @Override
    public List<ModelNode> getModelNodeByModelCodeWithAuth(String modelCode, Long userId) {
        return modelNodeMapper.getModelNodeByModelCodeWithAuth(modelCode, String.valueOf(userId));
    }

    /**
     * 根据nodeCode获取对应点位信息
     *
     * @param nodeCode
     * @return
     */
    @Override
    public List<String> listIndexIdsByModelCode(String nodeCode) {
        // 根据code获取modelNode信息
        List<ModelNode> modelNodeList = getModelNodeByModelCode(nodeCode);
        if (CollectionUtils.isEmpty(modelNodeList)) {
            return Collections.emptyList();
        }
        List<String> nodeIds = modelNodeList.stream().map(ModelNode::getNodeId).collect(Collectors.toList());

        return modelNodeMapper.listIndesxByCodeList(nodeIds);
    }

    /**
     * 根据nodeCode查询模型节点与点位id之间的关系信息
     *
     * @param code
     * @return
     */
    @Override
    public List<ModelNodePointInfo> getModelNodeIndexIdRelationInforByCode(String code) {
        return modelNodeMapper.getModelNodeIndexIdRelationInforByCode(code);
    }

    /**
     * 根据nodeId查询对应详细信息
     *
     * @param nodeId
     * @return
     */
    @Override
    public List<ModelNodePointInfo> getModelNodeIndexIdRelationInforByNodeId(String nodeId) {
        return modelNodeMapper.getModelNodeIndexIdRelationInforByNodeId(nodeId);
    }

    /**
     * 根据父id查询详细信息
     *
     * @param parentId
     * @return
     */
    @Override
    public List<ModelNodePointInfo> listModelNodeIndexIdRelationInforByParentId(String parentId) {
        return modelNodeMapper.listModelNodeIndexIdRelationInforByParentId(parentId);
    }

    /**
     * 根据code查询父级信息
     *
     * @param indexCode
     * @return
     */
    @Override
    public ModelNode getModelNodeByModelCodeByIndexCode(String indexCode) {
        return modelNodeMapper.getModelNodeByModelCodeByIndexCode(indexCode);
    }

    private void buildTree(ModelNode parent, List<ModelNode> children, List<ModelNode> modelNodes) {
        parent.setChildren(children);

        for (ModelNode modelNode : children) {
            List<ModelNode> tmp = modelNodes.stream()
                    .filter(f -> equalsAnyIgnoreCase(f.getParentId(), modelNode.getNodeId()))
                    .collect(Collectors.toList());
            if (!tmp.isEmpty()) {
                buildTree(modelNode, tmp, modelNodes);
            }
        }
    }

    @Override
    public Page<MeterPoint> getIndexByMeterImplement(String nodeId,
                                                     String code,
                                                     String name,
                                                     Long pageNum,
                                                     Long pageSize) {

        final List<Meter> settingDevice = modelNodeMapper.getSettingDevice(nodeId);
        if (CollectionUtils.isEmpty(settingDevice)) {
            return new Page<MeterPoint>();
        }
        final List<String> meterIndexIds = settingDevice.stream().map(Meter::getId).collect(Collectors.toList());
        LambdaQueryWrapper<MeterPoint> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.in(MeterPoint::getMeterId, meterIndexIds);
        queryWrapper.like(StringUtils.isNotEmpty(code), MeterPoint::getCode, code);
        queryWrapper.like(StringUtils.isNotEmpty(name), MeterPoint::getName, name);
        Page<MeterPoint> meterPointPage = meterPointMapper.selectPage(new Page<>(pageNum, pageSize), queryWrapper);

        return meterPointPage;
    }

    @Override
    public List<Meter> getSettingDeviceIndex(String nodeId, String energyType) {
        return modelNodeMapper.getSettingDeviceIndex(nodeId, energyType);
    }
}
