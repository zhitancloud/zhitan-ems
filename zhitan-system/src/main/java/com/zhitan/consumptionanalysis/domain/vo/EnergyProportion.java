package com.zhitan.consumptionanalysis.domain.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * description 个介质能耗占比
 *
 * @author zhitan
 */
@Data
public class EnergyProportion {
    public String energyNo;
    public String energyName;
    public Double count;
    public Double percentage;
}
