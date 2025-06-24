package com.zhitan.alarm.domain.vo;

import com.zhitan.consumptionanalysis.domain.vo.ChartData;
import com.zhitan.consumptionanalysis.domain.vo.EnergyProportion;
import lombok.Data;

import java.util.List;

@Data
public class AlarmAnalysisVO {

    /**
     * @description: 报警类型占比
     */
    private List<EnergyProportion> alarmProportion;
    
    /**
     * @description: 能源类型占比
     */
    private List<EnergyProportion> energyProportion;

    /**
     * @description: 报警次数条形图
     */
    private List<ChartData> chartDataList;
    
    
    private Integer indexCount;
    
    private Integer yearCount;
    
    private Integer monthCount;
}
