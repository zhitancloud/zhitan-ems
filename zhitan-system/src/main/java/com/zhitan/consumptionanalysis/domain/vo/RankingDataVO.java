package com.zhitan.consumptionanalysis.domain.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * description todu
 *
 * @author zhitan
 */
@Data
public class RankingDataVO {
    public String nodeId;
    public String nodeName;
    public List<RankingEnergyData> data;
}
