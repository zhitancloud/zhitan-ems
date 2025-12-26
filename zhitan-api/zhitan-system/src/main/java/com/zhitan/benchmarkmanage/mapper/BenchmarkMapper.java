package com.zhitan.benchmarkmanage.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.benchmarkmanage.domain.Benchmark;

import java.util.List;

/**
 * 标杆值管理Mapper接口
 *
 * @author ZhiTan
 */
public interface BenchmarkMapper extends BaseMapper<Benchmark> {
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
     * 删除标杆值管理
     *
     * @param id 标杆值管理主键
     * @return 结果
     */
    int deleteEnergyBenchmarkManageById(String id);

    /**
     * 批量删除标杆值管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteEnergyBenchmarkManageByIds(String[] ids);

    List<Benchmark> getList(Benchmark queryParams);
}
