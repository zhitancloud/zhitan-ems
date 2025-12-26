package com.zhitan.web.controller.alarm;

import com.zhitan.alarm.domain.entity.AlarmItem;
import com.zhitan.alarm.services.IAlarmItemService;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.domain.model.LoginUser;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.ServletUtils;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.framework.web.service.TokenService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 预报警设置Controller
 *
 * @author zhitan
 */
@RestController
@AllArgsConstructor
@Api(tags = "预报警设置相关功能")
@RequestMapping("/system/alarmitem")
public class AlarmItemController extends BaseController {

    private IAlarmItemService alarmItemService;
    private TokenService tokenService;


    /**
     * 导出预报警设置列表
     */
    @PreAuthorize("@ss.hasPermi('system:alarmitem:export')")
    @Log(title = "预报警设置", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(AlarmItem alarmItem) {
        List<AlarmItem> list = alarmItemService.selectAlarmItemList(alarmItem);
        ExcelUtil<AlarmItem> util = new ExcelUtil<AlarmItem>(AlarmItem.class);
        return util.exportExcel(list, "set");
    }

    /**
     * 获取预报警设置详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:alarmitem:query1')")
    @GetMapping(value = "/getSettingInfo/{id}")
    public AjaxResult getSettingInfo(@PathVariable("id") String id) {
        return AjaxResult.success(alarmItemService.selectAlarmItemtingById(id));
    }

    /**
     * 修改预报警设置启停状态
     */
    @PreAuthorize("@ss.hasPermi('system:alarmitem:edit')")
    @Log(title = "预报警设置", businessType = BusinessType.UPDATE)
    @PostMapping(value = "/startstop/{flag}")
    public AjaxResult edit(@PathVariable String flag, @RequestBody String[] ids) {
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        String username = loginUser.getUsername();
        return toAjax(alarmItemService.updateStartStop(ids, flag, username));
    }

    /**
     * 获取主表每行启停状态值
     */
    @PreAuthorize("@ss.hasPermi('system:alarmitem:query1')")
    @GetMapping(value = "/getStartStop/{pointId}")
    public AjaxResult getStartStop(@PathVariable("pointId") String pointId) {
        return AjaxResult.success(alarmItemService.getStartStop(pointId));
    }

    /**
     * 修改弹出框限值
     */
    @PreAuthorize("@ss.hasPermi('system:alarmitem:edit')")
    @Log(title = "修改弹出框限值", businessType = BusinessType.UPDATE)
    @PutMapping(value = "/editLimitVal")
    public AjaxResult editLimitVal(@RequestBody List<Map<String, Object>> listMap) {
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        String username = loginUser.getUsername();
        return toAjax(alarmItemService.updateLimitVal(listMap, username));
    }

    /**
     * 查询预id下设置限值的数量
     */
    @PreAuthorize("@ss.hasPermi('system:alarmitem:query1')")
    @GetMapping(value = "/getSettingCount/{id}")
    public AjaxResult getSettingCount(@PathVariable("id") String[] id) {
        return AjaxResult.success(alarmItemService.getSettingCount(id));
    }
}
