package com.zhitan.peakvalley.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhitan.common.utils.DateUtils;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.common.utils.time.Time24HourUtil;
import com.zhitan.peakvalley.domain.SettingElectricityPrice;
import com.zhitan.peakvalley.mapper.SettingElectricityPriceMapper;
import com.zhitan.peakvalley.service.ISettingElectricityPriceService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/**
 * 【尖峰平谷电价明细】Service业务层处理
 *
 * @author ZhiTan
 */
@Slf4j
@Service
@AllArgsConstructor
public class SettingElectricityPriceServiceImpl extends ServiceImpl<SettingElectricityPriceMapper, SettingElectricityPrice> implements ISettingElectricityPriceService {
    private SettingElectricityPriceMapper settingElectricityPriceMapper;

    /**
     * 查询【尖峰平谷电价明细】
     *
     * @param id 【尖峰平谷电价明细】主键
     * @return 【尖峰平谷电价明细】
     */
    @Override
    public SettingElectricityPrice selectElectricityPriceById(String id) {
        return settingElectricityPriceMapper.selectElectricityPriceById(id);
    }

    /**
     * 查询【尖峰平谷电价明细】列表
     *
     * @param settingElectricityPrice 【尖峰平谷电价明细】
     * @return 【尖峰平谷电价明细】
     */
    @Override
    public List<SettingElectricityPrice> selectElectricityPriceList(SettingElectricityPrice settingElectricityPrice) {
        if(StringUtils.isEmpty(settingElectricityPrice.getParentId())){
            throw new RuntimeException("父级id不能为空");
        }
        return settingElectricityPriceMapper.selectElectricityPriceList(settingElectricityPrice);
    }

    /**
     * 新增【尖峰平谷电价明细】
     *
     * @param settingElectricityPrice 【尖峰平谷电价明细】
     * @return 结果
     */
    @Override
    public int insertElectricityPrice(SettingElectricityPrice settingElectricityPrice) {
        settingElectricityPrice.setCreateTime(DateUtils.getNowDate());
        return settingElectricityPriceMapper.insertElectricityPrice(settingElectricityPrice);
    }

    /**
     * 修改【尖峰平谷电价明细】
     *
     * @param settingElectricityPrice 【尖峰平谷电价明细】
     * @return 结果
     */
    @Override
    public int updateElectricityPrice(SettingElectricityPrice settingElectricityPrice) {
        settingElectricityPrice.setUpdateTime(DateUtils.getNowDate());
        return settingElectricityPriceMapper.updateElectricityPrice(settingElectricityPrice);
    }

    /**
     * 批量删除【尖峰平谷电价明细】
     *
     * @param ids 需要删除的【尖峰平谷电价明细】主键
     * @return 结果
     */
    @Override
    public int deleteElectricityPriceByIds(String[] ids) {
        return settingElectricityPriceMapper.deleteElectricityPriceByIds(ids);
    }

    /**
     * 删除【尖峰平谷电价明细】信息
     *
     * @param id 【尖峰平谷电价明细】主键
     * @return 结果
     */
    @Override
    public int deleteElectricityPriceById(String id) {
        return settingElectricityPriceMapper.deleteElectricityPriceById(id);
    }

    @Override
    public void saveList(List<SettingElectricityPrice> settingElectricityPriceList) {
        if(CollectionUtil.isEmpty(settingElectricityPriceList)){
            throw new RuntimeException("价格明细不能为空！");
        }
        
        //校验时间是否重叠
        boolean isOverlap = checkIntersection(settingElectricityPriceList);
        if(isOverlap){
            throw new RuntimeException("时间段存在重叠，请检查！");
        }

        HashMap<String,String> collect = new HashMap<>();
        settingElectricityPriceList.forEach(SettingElectricityPrice -> {
            collect.put(DateUtils.getHhMmSs(SettingElectricityPrice.getStartTime()) + "-" + DateUtils.getHhMmSs(SettingElectricityPrice.getStopTime()), SettingElectricityPrice.getType());
        });
        boolean is24Hour = Time24HourUtil.checkTimeSpan(collect);
        if(!is24Hour){
            throw new RuntimeException("时间没有覆盖24小时");
        }

        String parentId = settingElectricityPriceList.get(0).getParentId();
        LambdaQueryWrapper<SettingElectricityPrice> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(SettingElectricityPrice::getParentId,parentId);
        if(settingElectricityPriceMapper.selectCount(queryWrapper)>0) {
            settingElectricityPriceMapper.delete(queryWrapper);
        }
        Collection<SettingElectricityPrice> collection = new ArrayList<>(settingElectricityPriceList);
        saveBatch(collection);
    }

    public static boolean checkIntersection(List<SettingElectricityPrice> dtoList) {
        int length = dtoList.size();
        for (int i = 0; i < length; i++) {
            long startTimeI = dtoList.get(i).getStartTime().getTime();
            long endTimeI = dtoList.get(i).getStopTime().getTime();

            for (int j = i + 1; j < length; j++) {
                long startTimeJ = dtoList.get(j).getStartTime().getTime();
                long endTimeJ = dtoList.get(j).getStopTime().getTime();

                if (startTimeI < endTimeJ && startTimeJ < endTimeI) {
                    return true;  // 存在相交，返回true
                }
            }
        }
        return false;  // 不存在相交，返回false
    }
}
