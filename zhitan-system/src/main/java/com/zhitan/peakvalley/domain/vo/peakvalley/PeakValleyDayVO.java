package com.zhitan.peakvalley.domain.vo.peakvalley;

import com.zhitan.home.domain.vo.HomeEnergyConsumptionTrendVO;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @author zhitan
 */
@Getter
@Setter
public class PeakValleyDayVO {
    List<PeakValleyLineChatVO> costList;
    List<PeakValleyLineChatVO> powerConsumptionList;
    PeakValleyDayTotalVO totalVO;

    HomeEnergyConsumptionTrendVO costNewList;

    HomeEnergyConsumptionTrendVO powerNewList;
}
