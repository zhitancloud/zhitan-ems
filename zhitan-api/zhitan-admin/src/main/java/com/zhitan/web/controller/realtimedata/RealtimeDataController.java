package com.zhitan.web.controller.realtimedata;

import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.service.IMeterPointService;
import com.zhitan.realtimedata.domain.TagValue;
import com.zhitan.realtimedata.domain.TagValueResult;
import com.zhitan.realtimedata.service.RealtimeDatabaseService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "实时数据")
@RequestMapping("/rtdb")
public class RealtimeDataController extends BaseController {

  private RealtimeDatabaseService realtimeDatabaseService;
  private IMeterPointService energyIndexService;

  @GetMapping("/retrieve/{tagCodes}")
  @ResponseBody
  public AjaxResult getLiveData(@PathVariable("tagCodes") String[] tagCodes) {
    List<String> codes = new ArrayList<>(Arrays.asList(tagCodes));
    List<TagValue> tagValues = realtimeDatabaseService.retrieve(codes);
    List<MeterPoint> energyIndices = energyIndexService.listMeterPointByCodes(codes);
    Map<String, MeterPoint> mapValue = energyIndices.stream()
        .collect(Collectors.toMap(MeterPoint::getCode, m -> m));
    List<TagValueResult> results = new ArrayList<>();
    if (!tagValues.isEmpty()) {
      tagValues.forEach(value -> {
        TagValueResult result = new TagValueResult();
        if (mapValue.containsKey(value.getTagCode())) {
          MeterPoint meterPoint = mapValue.get(value.getTagCode());
          result.setTagName(meterPoint.getName());
          result.setUnitId(meterPoint.getUnitId());
          result.setMeteName(meterPoint.getMeterName());
        }

        result.setTagCode(value.getTagCode());
        result.setValue(value.getValue());
        result.setDataTime(value.getDataTime());
        result.setQuality(value.getQuality());
        results.add(result);
      });
    }
    return AjaxResult.success(results);
  }
}
