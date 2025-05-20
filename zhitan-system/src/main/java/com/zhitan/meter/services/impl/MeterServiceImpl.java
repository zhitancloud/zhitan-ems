package com.zhitan.meter.services.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.meter.domain.Meter;
import com.zhitan.meter.domain.MeterImplementExcel;
import com.zhitan.meter.mapper.MeterImplementMapper;
import com.zhitan.meter.services.IMeterService;
import com.zhitan.common.core.domain.entity.SysDictData;
import com.zhitan.common.core.domain.model.LoginUser;
import com.zhitan.common.enums.PointType;
import com.zhitan.common.exception.CustomException;
import com.zhitan.common.utils.DateUtils;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.gatewaysetting.domain.GatewaySetting;
import com.zhitan.gatewaysetting.mapper.GatewaySettingMapper;
import com.zhitan.model.domain.PointTemplate;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.mapper.PointTemplateMapper;
import com.zhitan.model.mapper.MeterPointMapper;
import com.zhitan.powerDistribution.domain.PowerDistribution;
import com.zhitan.powerDistribution.mapper.PowerDistributionMapper;
import com.zhitan.system.mapper.SysDictDataMapper;
import com.zhitan.system.service.impl.SysUserServiceImpl;
import lombok.AllArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

/**
 * 计量器具档案维护Service业务层处理
 *
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class MeterServiceImpl implements IMeterService
{
    private static final Logger log = LoggerFactory.getLogger(SysUserServiceImpl.class);
    private MeterImplementMapper meterImplementMapper;
    private PointTemplateMapper pointTemplateMapper;
    private MeterPointMapper meterPointMapper;
    private SysDictDataMapper dictDataMapper;
    private PowerDistributionMapper distributionMapper;
    private GatewaySettingMapper gatewaySettingMapper;

    /**
     * 查询计量器具档案维护
     *
     * @param id 计量器具档案维护ID
     * @return 计量器具档案维护
     */
    @Override
    public Meter selectMeterImplementById(String id)
    {
        return meterImplementMapper.selectMeterImplementById(id);
    }

    /**
     * 查询计量器具档案维护
     *
     * @param meter 计量器具档案维护 编号
     * @return 计量器具档案维护
     */
    @Override
    public Meter selectMeterImplementByCode(Meter meter) {
        return meterImplementMapper.selectMeterImplementByCode(meter);
    }

    /**
     * 查询计量器具档案维护列表
     *
     * @param meter 计量器具档案维护
     * @return 计量器具档案维护
     */
    @Override
    public List<Meter> selectMeterImplementList(Meter meter)
    {
        return meterImplementMapper.selectMeterImplementList(meter);
    }
    /**
     * 导出计量器具档案维护列表
     *
     * @param meter 计量器具档案维护
     * @return 计量器具档案维护
     */
    @Override
    public List<MeterImplementExcel> exectMeterImplementList(Meter meter)
    {
        return meterImplementMapper.exectMeterImplementList(meter);
    }

    /**
     * 新增计量器具档案维护
     *
     * @param meter 计量器具档案维护
     * @return 结果
     */
    @Override
    public int insertMeterImplement(Meter meter)
    {
        meter.setCreateTime(DateUtils.getNowDate());

        final int i = meterImplementMapper.insertMeterImplement(meter);

        PointTemplate query = new PointTemplate();
        query.setDeviceType(meter.getMeterType());
        List<PointTemplate> pointTemplates = pointTemplateMapper.selectPointTemplateList(query);
        if (pointTemplates.isEmpty()) {
            return i;
        }

        List<MeterPoint> energyIndices = new ArrayList<>();
        pointTemplates.forEach(daqTemplate -> {
            MeterPoint meterPoint = new MeterPoint();
            meterPoint.setPointId(UUID.randomUUID().toString());
            meterPoint.setCode(meter.getCode() + "_" + daqTemplate.getCode());
            meterPoint.setName(daqTemplate.getName());
            meterPoint.setUnitId(daqTemplate.getUnit());
            meterPoint.setPointType(PointType.COLLECT);
            meterPoint.setMeterId(meter.getId());
            energyIndices.add(meterPoint);
        });

        meterPointMapper.deleteMeterPointByMeterId(meter.getId());
        meterPointMapper.insertMeterPointBatch(energyIndices);

        //判断是否关联网关信息，增加信息
        if (StringUtils.isNotBlank(meter.getGatewayId())) {
            GatewaySetting gatewaySetting = new GatewaySetting();
            gatewaySetting.setId(meter.getGatewayId());
            gatewaySetting.setDeviceNum(1);
            gatewaySetting.setPtNum(energyIndices.size());
            //更新数据
            gatewaySettingMapper.addNum(gatewaySetting);
        }

        return i;
    }

    /**
     * 修改计量器具档案维护
     *
     * @param meter 计量器具档案维护
     * @return 结果
     */
    @Override
    public int updateMeterImplement(Meter meter)
    {
        meter.setUpdateTime(DateUtils.getNowDate());
        //判断之前是否已经绑定，如果已经绑定，将原网关关联的计量器具删除，并在新关联的网关内增加（计量器具数和测点数量）
        //之前未绑定，修改时绑定了：在关联的网关上增加
        Meter beforeUpdate = meterImplementMapper.selectMeterImplementById(meter.getId());

        if (StringUtils.isBlank(beforeUpdate.getGatewayId()) && StringUtils.isNotBlank(meter.getGatewayId())) {
            //原网关没关联，修改时关联的新网关：直接增加
            //更新数据
            gatewaySettingMapper.addNum(getGatewaySetting(meter));

        }else if (StringUtils.isNotBlank(beforeUpdate.getGatewayId())
                && StringUtils.isNotBlank(meter.getGatewayId())
                && !beforeUpdate.getGatewayId().equals(meter.getGatewayId())){
            //原网关关联，修改时换了网关：原网关数量扣减，新网关数量增加
            //更新原网关
            gatewaySettingMapper.subNum(getGatewaySetting(beforeUpdate));
            //更新新网关
            gatewaySettingMapper.addNum(getGatewaySetting(meter));

        }else if (StringUtils.isNotBlank(beforeUpdate.getGatewayId()) && StringUtils.isBlank(meter.getGatewayId())){
            //原来关联了网关，修改时删除掉了，扣减数量
            gatewaySettingMapper.subNum(getGatewaySetting(beforeUpdate));
        }

        return meterImplementMapper.updateMeterImplement(meter);
    }

    /**
     * 根据关联的网关主键获取测点数量
     * @param meter
     * @return
     */
    public GatewaySetting getGatewaySetting(Meter meter) {
        GatewaySetting gatewaySetting = new GatewaySetting();
        gatewaySetting.setId(meter.getGatewayId());
        gatewaySetting.setDeviceNum(1);
        QueryWrapper<MeterPoint> energyIndexQueryWrapper = new QueryWrapper<>();
        energyIndexQueryWrapper.eq("meter_id", meter.getId());
        int ptNum= meterPointMapper.selectList(energyIndexQueryWrapper).size();
        gatewaySetting.setPtNum(ptNum);
        gatewaySetting.setUpdateBy(meter.getUpdateBy());
        return gatewaySetting;
    }

    /**
     * 批量删除计量器具档案维护
     *
     * @param ids 需要删除的计量器具档案维护ID
     * @return 结果
     */
    @Override
    public int deleteMeterImplementByIds(String[] ids)
    {
        return meterImplementMapper.deleteMeterImplementByIds(ids);
    }

    /**
     * 删除计量器具档案维护信息
     *
     * @param id 计量器具档案维护ID
     * @return 结果
     */
    @Override
    public int deleteMeterImplementById(String id)
    {
        return meterImplementMapper.deleteMeterImplementById(id);
    }

    /**
     * Excel导入 计量器具档案维护信息
     *
     * @param meterList  要导入的计量器具档案集合
     * @param loginUser 登录用户对象
     * @return 结果
     */
    @Override
    public String excelImpSave(List<Meter> meterList, LoginUser loginUser)
    {

        if (StringUtils.isNull(meterList) || meterList.size() == 0)
        {
            throw new CustomException("导入计量器具档案不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        //1、字典数据翻译
        //计量器具状态
        List<SysDictData> meterStatusList = dictDataMapper.selectDictDataByType("meter_status");
        Map<String,String> meterStatusMap = this.initDictMap(meterStatusList);
        //计量器具类型
        List<SysDictData> meterTypeList = dictDataMapper.selectDictDataByType(
                "sys_device_type");
        Map<String,String> meterTypeMap = this.initDictMap(meterTypeList);

        for (Meter meter : meterList)
        {
            try
            {
                //  检定周期、提醒周期 定义的Integer类型，如果数据不匹配会默认为0
                meter.setCheckCycle(meter.getCheckCycle()==null?1: meter.getCheckCycle());
                meter.setReminderCycle(meter.getReminderCycle()==null?1: meter.getReminderCycle());
                // 2验证 编码是否存在
                Meter chekcMeter = meterImplementMapper.selectMeterImplementByCode(meter);
                if (StringUtils.isNull(chekcMeter))
                {
                    //设置主键
                    meter.setId(UUID.randomUUID().toString());
                    //翻译器具状态 无或者值不对则设置为空字符串
                    String meterStatus= StringUtils.nvl(meterStatusMap.get(meter.getMeterStatus()+""),"");
                    //判断状态是否正确
                    if(StringUtils.isEmpty(meterStatus))
                    {
                        failureNum++;
                        failureMsg.append("<br/>" + failureNum + "、编号 " + meter.getCode() + " 的状态错误");
                        continue;
                    }
                    meter.setMeterStatus(meterStatus);
                    //翻译器具种类  无或者值不对则设置为空字符串
                    String meterType= StringUtils.nvl(meterTypeMap.get(meter.getMeterType()+""),"");
                    if(StringUtils.isEmpty(meterType))
                    {
                        failureNum++;
                        failureMsg.append("<br/>" + failureNum + "、编号 " + meter.getCode() + " 的种类错误");
                        continue;
                    }
                    meter.setMeterType(meterType);
                    //设置建立人和建立时间
                    meter.setCreateBy(loginUser.getUsername());
                    meter.setCreateTime(new Date());
                    //存储一条数据
                    this.insertMeterImplement(meter);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、编号 " + meter.getCode() + " 导入成功");
                }
                else
                {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、编号 " + meter.getCode() + " 已存在");
                }
            }
            catch (Exception e)
            {
                failureNum++;
                String msg = "<br/>" + failureNum + "、编号 " + meter.getCode() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());
                log.error(msg, e);
            }
        }
        if (failureNum > 0) {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new CustomException(failureMsg.toString());
        } else {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
    }

    /**
     * 根据id集合查询计量器具信息
     *
     * @param meterIdList 计量器具id
     * @return
     */
    @Override
    public List<Meter> listMeterImplementByIds(List<String> meterIdList) {
        return meterImplementMapper.listMeterImplementByIds(meterIdList);
    }

    /**
     * 将字典类型 对应的 字典集合  存入map中使用
     *
     * @param sysDictDataList
     * @return
     */
    public Map initDictMap(List<SysDictData> sysDictDataList) {
        Map<String, String> map = new HashMap<String, String>();
        for (SysDictData sysDictData : sysDictDataList) {
            //存放 key=标签名字  value是 设置值
            map.put(sysDictData.getDictLabel(), sysDictData.getDictValue());
        }
        return map;
    }

    @Override
    public Page<Meter> selectMeterImplementPage(Meter meter, Long pageNum, Long pageSize) {
        Page<Meter> meterImplementPage =new Page<>();
        LambdaQueryWrapper<Meter> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotEmpty(meter.getCode()), Meter::getCode, meter.getCode());
        queryWrapper.like(StringUtils.isNotEmpty(meter.getMeterName()), Meter::getMeterName, meter.getMeterName());
        queryWrapper.eq(StringUtils.isNotEmpty(meter.getMeterType()), Meter::getMeterType, meter.getMeterType());
        queryWrapper.orderByDesc(Meter::getCreateTime);

//        配电室表：PowerDistribution
        if  (StringUtils.isNotBlank(meter.getInstallactionLocation())){
            LambdaQueryWrapper<PowerDistribution> installLocationWrapper = new LambdaQueryWrapper<>();
            installLocationWrapper.like(StringUtils.isNotEmpty(meter.getInstallactionLocation()),PowerDistribution::getName, meter.getInstallactionLocation());
            List<PowerDistribution> installList=distributionMapper.selectList(installLocationWrapper);

            if (!installList.isEmpty()){
                queryWrapper.in(Meter::getInstallactionLocation,installList.stream().map(PowerDistribution::getId).collect(Collectors.toList()));
            }else{
                return meterImplementPage;
            }
        }

        meterImplementPage=meterImplementMapper.selectPage(new Page<>(pageNum, pageSize), queryWrapper);

        if  (meterImplementPage.getTotal() > 0){
            meterImplementPage.getRecords().forEach(v->{
                PowerDistribution distribution=distributionMapper.selectById(v.getInstallactionLocation());
                if (null!=distribution && StringUtils.isNotEmpty(distribution.getName())) {
                    v.setInstallLocationName(distribution.getName());
                }

            });
        }

        return meterImplementPage;
    }

    @Override
    public List<Meter> listMeterImplByInstallLocation(String installLocation) {
        return meterImplementMapper.listMeterImplByInstallLocation(installLocation);
    }
}
