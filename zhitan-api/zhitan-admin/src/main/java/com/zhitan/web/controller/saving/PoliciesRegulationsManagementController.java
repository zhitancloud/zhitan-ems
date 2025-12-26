package com.zhitan.web.controller.saving;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.saving.domain.dto.PolicyDTO;
import com.zhitan.saving.domain.dto.PolicyPageDTO;
import com.zhitan.saving.domain.vo.PolicyDetailVO;
import com.zhitan.saving.domain.vo.PolicyPageVO;
import com.zhitan.saving.service.IPolicyService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * 政策法规Controller
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "政策法规管理")
@RequestMapping("/policiesRegulations")
public class PoliciesRegulationsManagementController extends BaseController {

    private IPolicyService policiesRegulationsService;

    /**
     * 政策法规-列表查询
     */
    @GetMapping("/page")
    @ApiOperation(value = "分页列表")
    public TableDataInfo page(PolicyPageDTO pageDTO) {
        Page<PolicyPageVO> responsePage = policiesRegulationsService.getPageList(pageDTO);
        return getDataTable(responsePage);
    }

    /**
     * 政策法规-查询详情
     */
    @GetMapping("/detail")
    @ApiOperation(value = "查询详情")
    public AjaxResult page(@RequestParam("id") Long id) {
        PolicyDetailVO responsePage = policiesRegulationsService.getDetail(id);
        return success(responsePage);
    }

    /**
     * 政策法规-新增
     */
    @PostMapping("/add")
    @ApiOperation(value = "新增")
    public AjaxResult add(@RequestBody @Validated PolicyDTO addDTO) {
        policiesRegulationsService.add(addDTO);
        return success();
    }

    /**
     * 政策法规-更新
     */
    @PostMapping("/edit")
    @ApiOperation(value = "更新")
    public AjaxResult edit(@RequestBody @Validated PolicyDTO editDTO) {
        policiesRegulationsService.edit(editDTO);
        return success();
    }

    /**
     * 政策法规-删除
     */
    @DeleteMapping("/delete/{id}")
    @ApiOperation(value = "删除")
    public AjaxResult delete(@PathVariable("id") Long id) {
        policiesRegulationsService.delete(id);
        return success();
    }
}
