package com.zhitan.spikesandvalleys.domain.vo;

import com.zhitan.spikesandvalleys.domain.SpikesAndValleysItem;
import com.zhitan.spikesandvalleys.domain.SpikesAndValleysScheme;
import lombok.Data;

import java.util.List;

/**
 * 尖峰平谷时间段明细对象 spikes_and_valleys_scheme
 *
 * @author ZhiTan
 */
@Data
public class SpikesAndValleysSchemeVo extends SpikesAndValleysScheme {
    List<SpikesAndValleysItem> itemList;
}
