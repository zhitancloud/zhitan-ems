package com.zhitan.model.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

/**
 * 电表的数据结构
 */
@Data
public class ElectricPower {
    @JsonProperty("SN")
    private String sn;

    @JsonProperty("Pt")
    private double pt;

    @JsonProperty("Ua")
    private double ua;

    @JsonProperty("Ub")
    private double ub;

    @JsonProperty("Uc")
    private double uc;

    @JsonProperty("Uab")
    private double uab;

    @JsonProperty("Ubc")
    private double ubc;

    @JsonProperty("Uca")
    private double uca;
    @JsonProperty("Ia")
    private double ia;

    @JsonProperty("Ib")
    private double ib;

    @JsonProperty("Ic")
    private double ic;

    @JsonProperty("Pw")
    private double pw;

    @JsonProperty("Pwa")
    private double pwa;

    @JsonProperty("Pwb")
    private double pwb;

    @JsonProperty("Pwc")
    private double pwc;

    @JsonProperty("Pq")
    private double pq;

    @JsonProperty("Pqa")
    private double pqa;

    @JsonProperty("Pqb")
    private double pqb;

    @JsonProperty("Pqc")
    private double pqc;

    @JsonProperty("Q")
    private double q;

    @JsonProperty("Qa")
    private double qa;

    @JsonProperty("Qb")
    private double qb;

    @JsonProperty("Qc")
    private double qc;

    @JsonProperty("Time")
    private String time;

    @JsonProperty("Type")
    private int type;
}
