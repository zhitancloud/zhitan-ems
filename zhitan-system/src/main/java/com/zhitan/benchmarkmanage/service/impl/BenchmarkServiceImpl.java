package com.zhitan.benchmarkmanage.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhitan.benchmarkmanage.domain.Benchmark;
import com.zhitan.benchmarkmanage.mapper.BenchmarkMapper;
import com.zhitan.benchmarkmanage.service.IBenchmarkService;
import com.zhitan.common.utils.DateUtils;
import com.zhitan.common.utils.StringUtils;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 标杆值管理Service业务层处理
 *
 * @author ZhiTan
 */
@Service
@AllArgsConstructor
public class BenchmarkServiceImpl extends ServiceImpl<BenchmarkMapper, Benchmark> implements IBenchmarkService {
    private BenchmarkMapper benchmarkMapper;

    /**
     * 查询标杆值管理
     *
     * @param id 标杆值管理主键
     * @return 标杆值管理
     */
    @Override
    public Benchmark selectEnergyBenchmarkManageById(String id) {
        return benchmarkMapper.selectEnergyBenchmarkManageById(id);
    }

    /**
     * 查询标杆值管理列表
     *
     * @param benchmark 标杆值管理
     * @return 标杆值管理
     */
    @Override
    public List<Benchmark> selectEnergyBenchmarkManageList(Benchmark benchmark) {
        return benchmarkMapper.selectEnergyBenchmarkManageList(benchmark);
    }

    /**
     * 新增标杆值管理
     *
     * @param benchmark 标杆值管理
     * @return 结果
     */
    @Override
    public int insertEnergyBenchmarkManage(Benchmark benchmark) {
        benchmark.setCreateTime(DateUtils.getNowDate());
        return benchmarkMapper.insertEnergyBenchmarkManage(benchmark);
    }

    /**
     * 修改标杆值管理
     *
     * @param benchmark 标杆值管理
     * @return 结果
     */
    @Override
    public int updateEnergyBenchmarkManage(Benchmark benchmark) {
        benchmark.setUpdateTime(DateUtils.getNowDate());
        return benchmarkMapper.updateEnergyBenchmarkManage(benchmark);
    }

    /**
     * 批量删除标杆值管理
     *
     * @param ids 需要删除的标杆值管理主键
     * @return 结果
     */
    @Override
    public int deleteEnergyBenchmarkManageByIds(String[] ids) {
        return benchmarkMapper.deleteEnergyBenchmarkManageByIds(ids);
    }

    /**
     * 删除标杆值管理信息
     *
     * @param id 标杆值管理主键
     * @return 结果
     */
    @Override
    public int deleteEnergyBenchmarkManageById(String id) {
        return benchmarkMapper.deleteEnergyBenchmarkManageById(id);
    }

    @Override
    public Page<Benchmark> selectBenchmarkManagePage(Benchmark benchmark, Long pageNum, Long pageSize) {
        LambdaQueryWrapper<Benchmark> queryWrapper=new LambdaQueryWrapper<Benchmark>();
        queryWrapper.like(StringUtils.isNotEmpty(benchmark.getCode()), Benchmark::getCode, benchmark.getCode());
        queryWrapper.eq(StringUtils.isNotEmpty(benchmark.getType()), Benchmark::getType, benchmark.getType());
        queryWrapper.eq(StringUtils.isNotEmpty(benchmark.getGrade()), Benchmark::getGrade, benchmark.getGrade());
        queryWrapper.orderByDesc(Benchmark::getCreateTime);

        return benchmarkMapper.selectPage(new Page<Benchmark>(pageNum, pageSize), queryWrapper);
    }

    @Override
    public List<Benchmark> getList(Benchmark queryParams) {
        return benchmarkMapper.getList(queryParams);
    }
}
