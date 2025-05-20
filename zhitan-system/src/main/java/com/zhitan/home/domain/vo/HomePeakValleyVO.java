package com.zhitan.home.domain.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * description
 *
 * @author zhitan
 */
@Data
public class HomePeakValleyVO {
    //尖、峰、平、谷 时段
    public String timeType;

    //尖、峰、平、谷 时段
    public String timeName;
    
    //使用量
    public Double count;
    
    //百分比
    public Double percentage;
}
