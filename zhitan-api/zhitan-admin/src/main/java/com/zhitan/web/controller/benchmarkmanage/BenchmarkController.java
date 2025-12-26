package com.zhitan.web.controller.benchmarkmanage;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.benchmarkmanage.domain.Benchmark;
import com.zhitan.benchmarkmanage.service.IBenchmarkService;
import com.zhitan.common.annotation.Log;
import com.zhitan.common.core.controller.BaseController;
import com.zhitan.common.core.domain.AjaxResult;
import com.zhitan.common.core.domain.model.LoginUser;
import com.zhitan.common.core.page.TableDataInfo;
import com.zhitan.common.enums.BusinessType;
import com.zhitan.common.utils.ServletUtils;
import com.zhitan.common.utils.StringUtils;
import com.zhitan.common.utils.poi.ExcelUtil;
import com.zhitan.framework.web.service.TokenService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;

/**
 * 标杆值管理Controller
 *
 * @author zhitan
 */
@Slf4j
@RestController
@AllArgsConstructor
@Api(tags = "标杆值管理")
@RequestMapping("/benchmarkManage")
public class BenchmarkController extends BaseController
{
    private IBenchmarkService energyBenchmarkManageService;
    private TokenService tokenService;

    /**
     * 查询标杆值管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:benchmarkManage:list')")
    @GetMapping("/list")
    public TableDataInfo list(Benchmark benchmark, @RequestParam Long pageNum, @RequestParam Long pageSize)
    {
        Page<Benchmark> list = energyBenchmarkManageService.selectBenchmarkManagePage(benchmark,pageNum,pageSize);
        return getDataTable(list);
    }


    /**
     * 导出标杆值管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:benchmarkManage:export')")
    @Log(title = "标杆值管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Benchmark benchmark)
    {
        List<Benchmark> list = energyBenchmarkManageService.selectEnergyBenchmarkManageList(benchmark);
        ExcelUtil<Benchmark> util = new ExcelUtil<Benchmark>(Benchmark.class);
        util.exportExcel(response, list, "标杆值管理数据");
    }

    /**
     * 获取标杆值管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:benchmarkManage:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(energyBenchmarkManageService.selectEnergyBenchmarkManageById(id));
    }

    /**
     * 新增标杆值管理
     */
    @PreAuthorize("@ss.hasPermi('system:benchmarkManage:add')")
    @Log(title = "标杆值管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Benchmark benchmark)
    {
        if (StringUtils.isBlank(benchmark.getCode())) {
            return error("请输入标杆编号！");
        }

        //校验唯一
        Benchmark queryParams=new Benchmark();
        queryParams.setCode(benchmark.getCode());
        List<Benchmark> codeReptList = energyBenchmarkManageService.getList(queryParams);
        if (null!=codeReptList && !codeReptList.isEmpty()) {
            return error("标杆编号重复！");
        }
        queryParams=new Benchmark();
        queryParams.setType(benchmark.getType());
        queryParams.setGrade(benchmark.getGrade());
        List<Benchmark> dataReptList = energyBenchmarkManageService.getList(queryParams);
        if (null!=dataReptList && !dataReptList.isEmpty()) {
            return error("标杆信息已维护！");
        }
        benchmark.setId(UUID.randomUUID().toString());
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        benchmark.setCreateBy(loginUser.getUsername());
        return toAjax(energyBenchmarkManageService.insertEnergyBenchmarkManage(benchmark));
    }

    /**
     * 修改标杆值管理
     */
    @PreAuthorize("@ss.hasPermi('system:benchmarkManage:edit')")
    @Log(title = "标杆值管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Benchmark benchmark)
    {
        if (StringUtils.isBlank(benchmark.getCode())) {
            return error("请输入标杆编号！");
        }
        Benchmark queryParams=new Benchmark();
        queryParams.setCode(benchmark.getCode());
        List<Benchmark> codeReptList = energyBenchmarkManageService.getList(queryParams);
        if (null!=codeReptList && !codeReptList.isEmpty()) {
            return error("标杆编号重复！");
        }
        queryParams=new Benchmark();
        queryParams.setType(benchmark.getType());
        queryParams.setGrade(benchmark.getGrade());
        List<Benchmark> dataReptList = energyBenchmarkManageService.getList(queryParams);
        if (null!=dataReptList && !dataReptList.isEmpty()) {
            return error("标杆信息已维护！");
        }
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        benchmark.setUpdateBy(loginUser.getUsername());
        return toAjax(energyBenchmarkManageService.updateEnergyBenchmarkManage(benchmark));
    }

    /**
     * 删除标杆值管理
     */
    @PreAuthorize("@ss.hasPermi('system:benchmarkManage:remove')")
    @Log(title = "标杆值管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(energyBenchmarkManageService.deleteEnergyBenchmarkManageByIds(ids));
    }
}
