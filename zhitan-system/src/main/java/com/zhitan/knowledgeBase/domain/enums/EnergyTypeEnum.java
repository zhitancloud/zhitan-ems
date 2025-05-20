package com.zhitan.knowledgeBase.domain.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @Author DYL
 **/
@Getter
@AllArgsConstructor
public enum EnergyTypeEnum {

    ELECTRICITY(0,"electricity", "电"),
    WATER(1,"water", "水"),
    GAS(2,"gas", "天然气"),
    STEAM(3,"steam", "蒸汽");

    private final Integer code;
    private final String name;
    private final String desc;

    public static EnergyTypeEnum getEnumByCode(Integer code) {
        for (EnergyTypeEnum e : EnergyTypeEnum.values()) {
            if (e.code.equals(code)) {
                return e;
            }
        }
        return null;
    }

    public static String getNameByCode(Integer code) {
        for (EnergyTypeEnum e : EnergyTypeEnum.values()) {
            if (e.code.equals(code)) {
                return e.name;
            }
        }
        return null;
    }

    public static String getDescByCode(Integer code) {
        for (EnergyTypeEnum e : EnergyTypeEnum.values()) {
            if (e.code.equals(code)) {
                return e.desc;
            }
        }
        return null;
    }
}
