package com.zhitan.peakvalley.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhitan.common.exception.ServiceException;
import com.zhitan.common.utils.DateUtils;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.common.utils.uuid.UUID;
import com.zhitan.peakvalley.domain.SettingElectricityPriceDate;
import com.zhitan.peakvalley.mapper.SettingElectricityPriceDateMapper;
import com.zhitan.peakvalley.mapper.SettingElectricityPriceMapper;
import com.zhitan.peakvalley.service.ISettingElectricityPriceDateService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 尖峰平谷电价时间段Service业务层处理
 *
 * @author ZhiTan
 */
@Slf4j
@Service
@AllArgsConstructor
public class SettingElectricityPriceDateServiceImpl extends ServiceImpl<SettingElectricityPriceDateMapper, SettingElectricityPriceDate> implements ISettingElectricityPriceDateService {
    private SettingElectricityPriceDateMapper settingElectricityPriceDateMapper;
    private SettingElectricityPriceMapper settingElectricityPriceMapper;


    /**
     * 查询尖峰平谷电价时间段
     *
     * @param id 尖峰平谷电价时间段主键
     * @return 尖峰平谷电价时间段
     */
    @Override
    public SettingElectricityPriceDate selectElectricityPriceDateById(String id) {
        return settingElectricityPriceDateMapper.selectElectricityPriceDateById(id);
    }

    /**
     * 查询尖峰平谷电价时间段列表
     *
     * @param settingElectricityPriceDate 尖峰平谷电价时间段
     * @return 尖峰平谷电价时间段
     */
    @Override
    public List<SettingElectricityPriceDate> selectElectricityPriceDateList(SettingElectricityPriceDate settingElectricityPriceDate) {
        return settingElectricityPriceDateMapper.selectElectricityPriceDateList(settingElectricityPriceDate);
    }

    /**
     * 新增尖峰平谷电价时间段
     *
     * @param settingElectricityPriceDate 尖峰平谷电价时间段
     * @return 结果
     */
    @Override
    public int insertElectricityPriceDate(SettingElectricityPriceDate settingElectricityPriceDate) {
        boolean exists = settingElectricityPriceDateMapper.exists(Wrappers.<SettingElectricityPriceDate>lambdaQuery()
                .lt(SettingElectricityPriceDate::getBeginDate, settingElectricityPriceDate.getEndDate())
                .gt(SettingElectricityPriceDate::getEndDate, settingElectricityPriceDate.getBeginDate())
        );

        if (exists) {
            throw new ServiceException("时间段存在交集，无法保存");
        }
        settingElectricityPriceDate.setCreateTime(DateUtils.getNowDate());
        settingElectricityPriceDate.setId(UUID.fastUUID().toString());
        return settingElectricityPriceDateMapper.insertElectricityPriceDate(settingElectricityPriceDate);
    }

    /**
     * 修改尖峰平谷电价时间段
     *
     * @param settingElectricityPriceDate 尖峰平谷电价时间段
     * @return 结果
     */
    @Override
    public int updateElectricityPriceDate(SettingElectricityPriceDate settingElectricityPriceDate) {
        boolean exists = settingElectricityPriceDateMapper.exists(Wrappers.<SettingElectricityPriceDate>lambdaQuery()
                .ne(SettingElectricityPriceDate::getId, settingElectricityPriceDate.getId())
                .lt(SettingElectricityPriceDate::getBeginDate, settingElectricityPriceDate.getEndDate())
                .gt(SettingElectricityPriceDate::getEndDate, settingElectricityPriceDate.getBeginDate())
        );
        if (exists) {
            throw new ServiceException("时间段存在交集，无法保存");
        }
        settingElectricityPriceDate.setUpdateTime(DateUtils.getNowDate());
        return settingElectricityPriceDateMapper.updateElectricityPriceDate(settingElectricityPriceDate);
    }

    /**
     * 批量删除尖峰平谷电价时间段
     *
     * @param ids 需要删除的尖峰平谷电价时间段主键
     * @return 结果
     */
    @Override
    public int deleteElectricityPriceDateByIds(String[] ids) {
        return settingElectricityPriceDateMapper.deleteElectricityPriceDateByIds(ids);
    }

    /**
     * 删除尖峰平谷电价时间段信息
     *
     * @param id 尖峰平谷电价时间段主键
     * @return 结果
     */
    @Override
    public int deleteElectricityPriceDateById(String id) {
        return settingElectricityPriceDateMapper.deleteElectricityPriceDateById(id);
    }

    @Override
    public Page<SettingElectricityPriceDate> selectElectricityPriceDatePage(SettingElectricityPriceDate settingElectricityPriceDate, Long pageNum, Long pageSize) {

        LambdaQueryWrapper<SettingElectricityPriceDate> wrapper = new LambdaQueryWrapper<>();
        wrapper.like(StringUtils.isNotEmpty(settingElectricityPriceDate.getRemark()), SettingElectricityPriceDate::getRemark, settingElectricityPriceDate.getRemark());
        wrapper.orderByDesc(SettingElectricityPriceDate::getCreateTime);
        Page<SettingElectricityPriceDate> page = settingElectricityPriceDateMapper.selectPage(new Page<SettingElectricityPriceDate>(pageNum, pageSize), wrapper);
        return page;
    }

}
