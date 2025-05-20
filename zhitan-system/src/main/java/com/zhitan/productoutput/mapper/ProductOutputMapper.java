package com.zhitan.productoutput.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhitan.productoutput.domain.ProductOutput;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 产品产量Mapper接口
 *
 * @author ZhiTan
 */
@Mapper
public interface ProductOutputMapper extends BaseMapper<ProductOutput> {
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
     * 删除产品产量
     *
     * @param nodeId 产品产量主键
     * @return 结果
     */
    int deleteProductOutputById(String nodeId);

    /**
     * 批量删除产品产量
     *
     * @param nodeIds 需要删除的数据主键集合
     * @return 结果
     */
    int deleteProductOutputByIds(String[] nodeIds);
}
