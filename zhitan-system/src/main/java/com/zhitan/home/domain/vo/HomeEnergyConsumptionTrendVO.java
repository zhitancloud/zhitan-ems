package com.zhitan.home.domain.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * description 首页-能源趋势
 *
 * @author zhitan
 */
@Data
public class HomeEnergyConsumptionTrendVO {
    private String[] xdata;
    private Double[][] ydata;
    private String[] legend;
}
