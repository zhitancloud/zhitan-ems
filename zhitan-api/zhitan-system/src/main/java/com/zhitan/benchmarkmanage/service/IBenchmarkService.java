package com.zhitan.benchmarkmanage.service;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zhitan.benchmarkmanage.domain.Benchmark;

import java.util.List;

/**
 * 标杆值管理Service接口
 *
 * @author ZhiTan
 */
public interface IBenchmarkService extends IService<Benchmark> {
    /**
     * 查询标杆值管理
     *
     * @param id 标杆值管理主键
     * @return 标杆值管理
     */
    Benchmark selectEnergyBenchmarkManageById(String id);

    /**
     * 查询标杆值管理列表
     *
     * @param benchmark 标杆值管理
     * @return 标杆值管理集合
     */
    List<Benchmark> selectEnergyBenchmarkManageList(Benchmark benchmark);

    /**
     * 新增标杆值管理
     *
     * @param benchmark 标杆值管理
     * @return 结果
     */
    int insertEnergyBenchmarkManage(Benchmark benchmark);

    /**
     * 修改标杆值管理
     *
     * @param benchmark 标杆值管理
     * @return 结果
     */
    int updateEnergyBenchmarkManage(Benchmark benchmark);

    /**
     * 批量删除标杆值管理
     *
     * @param ids 需要删除的标杆值管理主键集合
     * @return 结果
     */
    int deleteEnergyBenchmarkManageByIds(String[] ids);

    /**
     * 删除标杆值管理信息
     *
     * @param id 标杆值管理主键
     * @return 结果
     */
    int deleteEnergyBenchmarkManageById(String id);

    /**
     * 分页查询数据
     * @param benchmark
     * @param pageNum
     * @param pageSize
     * @return
     */
    Page<Benchmark> selectBenchmarkManagePage(Benchmark benchmark, Long pageNum, Long pageSize);

    List<Benchmark> getList(Benchmark queryParams);
}
