package com.zhitan.comprehensivestatistics;

import com.zhitan.comprehensivestatistics.domain.DailyComprehensive;
import com.zhitan.comprehensivestatistics.mapper.DailyComprehensiveMapper;
import com.zhitan.comprehensivestatistics.service.impl.DailyComprehensiveServiceImpl;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Collections;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * DailyComprehensiveServiceImpl 综合指标分析（日）单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("DailyComprehensiveServiceImpl 综合指标（日）测试")
class DailyComprehensiveServiceImplTest {

    @Mock
    private DailyComprehensiveMapper dailyMapper;

    @InjectMocks
    private DailyComprehensiveServiceImpl dailyComprehensiveService;

    private final Date beginTime = new Date();
    private final Date endTime = new Date();

    @Nested
    @DisplayName("1. getDailyComprehensiveList")
    class ListTests {

        @Test
        @DisplayName("nodeId 为空时返回空列表且不调用 Mapper")
        void testList_blankNodeId_returnsEmpty() {
            List<DailyComprehensive> result = dailyComprehensiveService.getDailyComprehensiveList(
                    "", Collections.emptyList(), beginTime, endTime, "DAY", "E1");

            assertTrue(result.isEmpty());
            verify(dailyMapper, never()).getDailyComprehensiveList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("nodeId 为 null 时返回空列表")
        void testList_nullNodeId_returnsEmpty() {
            List<DailyComprehensive> result = dailyComprehensiveService.getDailyComprehensiveList(
                    null, Collections.emptyList(), beginTime, endTime, "DAY", "E1");

            assertTrue(result.isEmpty());
            verify(dailyMapper, never()).getDailyComprehensiveList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("nodeId 有效时委托 Mapper 并返回结果")
        void testList_validNodeId_delegatesToMapper() {
            DailyComprehensive row = new DailyComprehensive();
            row.setIndexId("IDX1");
            row.setIndexName("电");
            List<DailyComprehensive> dataList = Collections.singletonList(row);
            when(dailyMapper.getDailyComprehensiveList(eq("N1"), eq(dataList), eq(beginTime), eq(endTime), eq("DAY"), eq("E1")))
                    .thenReturn(Collections.singletonList(row));

            List<DailyComprehensive> result = dailyComprehensiveService.getDailyComprehensiveList(
                    "N1", dataList, beginTime, endTime, "DAY", "E1");

            assertEquals(1, result.size());
            assertEquals("IDX1", result.get(0).getIndexId());
            verify(dailyMapper).getDailyComprehensiveList("N1", dataList, beginTime, endTime, "DAY", "E1");
        }
    }

    @Nested
    @DisplayName("2. getListChart")
    class ChartTests {

        @Test
        @DisplayName("indexId 为空字符串时返回空列表")
        void testChart_emptyIndexId_returnsEmpty() {
            List<DailyComprehensive> result = dailyComprehensiveService.getListChart(
                    "", beginTime, endTime, "HOUR", "E1");

            assertTrue(result.isEmpty());
            verify(dailyMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 为 null 时返回空列表")
        void testChart_nullIndexId_returnsEmpty() {
            List<DailyComprehensive> result = dailyComprehensiveService.getListChart(
                    null, beginTime, endTime, "HOUR", "E1");

            assertTrue(result.isEmpty());
            verify(dailyMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 有效时委托 Mapper 返回图表数据")
        void testChart_validIndexId_delegatesToMapper() {
            DailyComprehensive row = new DailyComprehensive();
            row.setIndexId("IDX1");
            row.setValue("12.5");
            when(dailyMapper.getListChart(eq("IDX1"), eq(beginTime), eq(endTime), eq("HOUR"), eq("E1")))
                    .thenReturn(Collections.singletonList(row));

            List<DailyComprehensive> result = dailyComprehensiveService.getListChart(
                    "IDX1", beginTime, endTime, "HOUR", "E1");

            assertEquals(1, result.size());
            assertEquals("12.5", result.get(0).getValue());
            verify(dailyMapper).getListChart("IDX1", beginTime, endTime, "HOUR", "E1");
        }
    }
}
