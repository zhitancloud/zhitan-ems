package com.zhitan.productoutput.services;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zhitan.productoutput.domain.ProductOutput;

import java.util.List;

/**
 * 产品产量Service接口
 *
 * @author ZhiTan
 */
public interface IProductOutputService extends IService<ProductOutput> {
    /**
     * 查询产品产量
     *
     * @param nodeId 产品产量主键
     * @return 产品产量
     */
    ProductOutput selectProductOutputById(String nodeId);

    /**
     * 查询产品产量列表
     *
     * @param productOutput 产品产量
     * @return 产品产量集合
     */
    List<ProductOutput> selectProductOutputList(ProductOutput productOutput);

    /**
     * 新增产品产量
     *
     * @param productOutput 产品产量
     * @return 结果
     */
    int insertProductOutput(ProductOutput productOutput);

    /**
     * 修改产品产量
     *
     * @param productOutput 产品产量
     * @return 结果
     */
    int updateProductOutput(ProductOutput productOutput);

    /**
     * 批量删除产品产量
     *
     * @param nodeIds 需要删除的产品产量主键集合
     * @return 结果
     */
    int deleteProductOutputByIds(String[] nodeIds);

    /**
     * 删除产品产量信息
     *
     * @param nodeId 产品产量主键
     * @return 结果
     */
    int deleteProductOutputById(String nodeId);

    Page<ProductOutput> selectProductOutputPage(ProductOutput productOutput, Long pageNum, Long pageSize);
}
