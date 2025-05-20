package com.zhitan.comprehensivestatistics.service.impl;

import com.zhitan.comprehensivestatistics.domain.DailyComprehensive;
import com.zhitan.comprehensivestatistics.mapper.DailyComprehensiveMapper;
import com.zhitan.comprehensivestatistics.service.IDailyComprehensiveService;
import lombok.AllArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
public class DailyComprehensiveServiceImpl implements IDailyComprehensiveService {

    private DailyComprehensiveMapper dailyMapper;

    public List<DailyComprehensive> getDailyComprehensiveList(String nodeId, List<DailyComprehensive> dataList,
                                                              Date beginTime, Date endTime, String timeType, String indexStorageId){

        if (StringUtils.isNotEmpty(nodeId)) {
            return dailyMapper.getDailyComprehensiveList(nodeId, dataList, beginTime, endTime, timeType, indexStorageId);
        }
        return Collections.emptyList();
    }
    @Override
    public List<DailyComprehensive> getListChart(String indexId, Date beginTime, Date endTime, String timeType, String indexStorageId){
        if (indexId != null && !indexId.isEmpty()) {
            return dailyMapper.getListChart(indexId,beginTime,endTime,timeType,indexStorageId);
        }
        return Collections.emptyList();
    }
}
