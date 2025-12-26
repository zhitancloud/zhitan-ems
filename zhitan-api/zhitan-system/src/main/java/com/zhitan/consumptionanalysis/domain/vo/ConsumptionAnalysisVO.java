package com.zhitan.consumptionanalysis.domain.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * description 能耗对比分析
 *
 * @author zhitan
 */
@Data
public class ConsumptionAnalysisVO {
    
    private List<ConsumptionAnalysisData> dataList;
    
    private List<ChartData> chartDataList;
    
    private List<EnergyProportion> energyProportion;
    
    private ConsumptionAnalysisData tongbi;
    
    private ConsumptionAnalysisData huanbi;
    
    private Double planCount;
    
    private Double prodCount;
}
