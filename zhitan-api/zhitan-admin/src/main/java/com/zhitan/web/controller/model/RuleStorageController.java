package com.zhitan.web.controller.model;

import com.alibaba.fastjson.JSONObject;
import com.greenpineyu.fel.FelEngine;
import com.greenpineyu.fel.FelEngineImpl;
import com.greenpineyu.fel.parser.FelNode;
import com.greenpineyu.fel.parser.VarAstNode;
import com.zhitan.common.annotation.RepeatSubmit;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.enums.CalcType;
import com.zhitan.common.enums.TimeType;
import com.zhitan.model.domain.RuleFormula;
import com.zhitan.model.domain.RuleStorage;
import com.zhitan.model.service.IRuleStorageService;
import com.zhitan.model.service.RuleFormulaService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.jetbrains.annotations.NotNull;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;

/**
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "指标存储管理")
@RequestMapping("/basicsetting/indexStorage")
public class RuleStorageController extends BaseController {

    private IRuleStorageService indexStorageService;

    private RuleFormulaService ruleFormulaService;


    @GetMapping("/{indexId}")
    public AjaxResult getIndexStorage(@PathVariable String indexId) {
        JSONObject result = new JSONObject();
        RuleFormula ruleFormula = ruleFormulaService.getIndexFormula(indexId);
        List<RuleStorage> ruleStorageList = indexStorageService.getIndexStorage(indexId);
        List<RuleStorage> defaultStorageList = getDefaultIndexStorage();
        Map<TimeType, RuleStorage> map = ruleStorageList.stream()
                .collect(Collectors.toMap(RuleStorage::getTimeType, storage -> storage));
        List<RuleStorage> storageList;
        if (!ruleStorageList.isEmpty()) {
            storageList = new ArrayList<>();
            defaultStorageList.forEach(storage -> {
                storageList.add(map.get(storage.getTimeType()));
            });
        } else {
            storageList = defaultStorageList;
        }

        result.put("indexFormula", ruleFormula);
        result.put("indexStorage", storageList);
        return AjaxResult.success(result);
    }

    @RepeatSubmit
    @PostMapping("/{indexId}")
    public AjaxResult saveIndexStorage(@RequestBody JSONObject param, @PathVariable String indexId) {
        try {
            RuleFormula ruleFormula = param.getObject("indexFormula", RuleFormula.class);
            List<RuleStorage> ruleStorage =
                    param.getJSONArray("indexStorage").toJavaList(RuleStorage.class);
            ruleFormula.setPointId(indexId);
            indexStorageService.saveFormulaAndStorage(ruleFormula, ruleStorage, indexId);
        } catch (Exception ex) {
            logger.error("", ex);
            return AjaxResult.error();
        }

        return AjaxResult.success();
    }


    @PostMapping("/parseFormula")
    public AjaxResult parseFormula(@RequestBody JSONObject formulaText) {
        String calcText = formulaText.getString("calcText");
        FelEngine e = new FelEngineImpl();
        Set<String> params = new HashSet<>();
        try {
            FelNode felNode = e.parse(calcText);
            buildParam(felNode, params);
        } catch (Exception ex) {
            logger.error("公式解析出错！");
        }
        return AjaxResult.success(params);
    }

    @GetMapping("/calcPeriod")
    public AjaxResult getIndexStorage() {
        List<RuleStorage> calcPeriods = getDefaultIndexStorage();
        return AjaxResult.success(calcPeriods);
    }

    @NotNull
    private List<RuleStorage> getDefaultIndexStorage() {
        List<RuleStorage> calcPeriods = new ArrayList<>();
        getPeriod(calcPeriods, TimeType.HOUR);
        getPeriod(calcPeriods, TimeType.DAY);
        getPeriod(calcPeriods, TimeType.MONTH);
        getPeriod(calcPeriods, TimeType.YEAR);
        return calcPeriods;
    }

    private void getPeriod(List<RuleStorage> calcPeriods, TimeType timeType) {
        RuleStorage hour = new RuleStorage();
        hour.setTimeType(timeType);
        hour.setCalcType(CalcType.CALC);
        calcPeriods.add(hour);
    }

    private void buildParam(FelNode felNode, Set<String> params) {
        if (felNode.getChildren() == null) {
            if (isConfigParam(felNode.getText())) {
                params.add(felNode.getText());
            }
        } else {
            for (FelNode node : felNode.getChildren()) {
                if (node.getChildren() == null) {
                    if (node instanceof VarAstNode && isConfigParam(node.getText())) {
                        params.add(node.getText());
                    }
                } else {
                    buildParam(node, params);
                }
            }
        }
    }

    private boolean isConfigParam(String param) {
        if (param.startsWith("'") && param.endsWith("'")) {
            return false;
        }

        if (param.startsWith("$")) {
            return true;
        }

        return true;
    }
}
