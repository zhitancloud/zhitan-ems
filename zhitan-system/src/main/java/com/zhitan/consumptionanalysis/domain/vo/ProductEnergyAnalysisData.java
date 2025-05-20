package com.zhitan.consumptionanalysis.domain.vo;

import lombok.Data;

/**
 * description todu
 *
 * @author zhitan
 */
@Data
public class ProductEnergyAnalysisData {
    
    private String dateTime;
    private double productCount;
    private double energyCount;
    private double average;
}
