package com.zhitan.branchanalysis.service;


import com.zhitan.branchanalysis.domain.BranchAnalysisVO;
import com.zhitan.realtimedata.domain.dto.BranchAnalysisDTO;

/**
 * 支路用能分析服务
 */
public interface IBranchAnalysisService {
    /**
     * 支路用能分析
     *
     * @author zhitan
     */
    BranchAnalysisVO getBranchAnalysisService(BranchAnalysisDTO dataItem);
}
