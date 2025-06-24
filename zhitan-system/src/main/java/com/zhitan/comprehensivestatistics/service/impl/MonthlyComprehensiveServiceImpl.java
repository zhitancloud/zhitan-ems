package com.zhitan.comprehensivestatistics.service.impl;

import com.zhitan.comprehensivestatistics.domain.MonthlyComprehensive;
import com.zhitan.comprehensivestatistics.mapper.MonthlyComprehensiveMapper;
import com.zhitan.comprehensivestatistics.service.ImonthlyComprehensive;
import lombok.AllArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 * 业务层处理
 * 
 * @author zhitan
 */
@Service
@AllArgsConstructor
public class MonthlyComprehensiveServiceImpl implements ImonthlyComprehensive {
    private MonthlyComprehensiveMapper monthMapper;

    public List<MonthlyComprehensive> getMonthlyComprehensiveList(String nodeId, List<MonthlyComprehensive> dataList,
                                                                  Date beginTime, Date endTime, String timeType, String indexStorageId){
        if (StringUtils.isNotEmpty(nodeId)) {
            return monthMapper.getMonthlyComprehensiveList(nodeId, dataList, beginTime, endTime, timeType, indexStorageId);
        }
        return Collections.emptyList();
    }

    @Override
    public List<MonthlyComprehensive> getListChart(String indexId, Date beginTime, Date endTime, String timeType, String indexStorageId){
        if (indexId != null && !indexId.isEmpty()) {
            return monthMapper.getListChart(indexId,beginTime,endTime,timeType,indexStorageId);
        }
        return Collections.emptyList();
    }
}
