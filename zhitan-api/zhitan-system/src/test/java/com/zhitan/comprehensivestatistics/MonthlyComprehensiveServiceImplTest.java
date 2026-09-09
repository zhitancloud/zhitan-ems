package com.zhitan.comprehensivestatistics;

import com.zhitan.comprehensivestatistics.domain.MonthlyComprehensive;
import com.zhitan.comprehensivestatistics.mapper.MonthlyComprehensiveMapper;
import com.zhitan.comprehensivestatistics.service.impl.MonthlyComprehensiveServiceImpl;
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
 * MonthlyComprehensiveServiceImpl 综合指标分析（月）单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("MonthlyComprehensiveServiceImpl 综合指标（月）测试")
class MonthlyComprehensiveServiceImplTest {

    @Mock
    private MonthlyComprehensiveMapper monthMapper;

    @InjectMocks
    private MonthlyComprehensiveServiceImpl monthlyComprehensiveService;

    private final Date beginTime = new Date();
    private final Date endTime = new Date();

    @Nested
    @DisplayName("1. getMonthlyComprehensiveList")
    class ListTests {

        @Test
        @DisplayName("nodeId 为空时返回空列表且不调用 Mapper")
        void testList_blankNodeId_returnsEmpty() {
            List<MonthlyComprehensive> result = monthlyComprehensiveService.getMonthlyComprehensiveList(
                    "", Collections.emptyList(), beginTime, endTime, "MONTH", "E1");

            assertTrue(result.isEmpty());
            verify(monthMapper, never()).getMonthlyComprehensiveList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("nodeId 为 null 时返回空列表")
        void testList_nullNodeId_returnsEmpty() {
            List<MonthlyComprehensive> result = monthlyComprehensiveService.getMonthlyComprehensiveList(
                    null, Collections.emptyList(), beginTime, endTime, "MONTH", "E1");

            assertTrue(result.isEmpty());
            verify(monthMapper, never()).getMonthlyComprehensiveList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("nodeId 有效时委托 Mapper 并返回结果")
        void testList_validNodeId_delegatesToMapper() {
            MonthlyComprehensive row = new MonthlyComprehensive();
            row.setIndexId("IDX2");
            row.setIndexName("水");
            List<MonthlyComprehensive> dataList = Collections.singletonList(row);
            when(monthMapper.getMonthlyComprehensiveList(eq("N2"), eq(dataList), eq(beginTime), eq(endTime), eq("MONTH"), eq("E2")))
                    .thenReturn(Collections.singletonList(row));

            List<MonthlyComprehensive> result = monthlyComprehensiveService.getMonthlyComprehensiveList(
                    "N2", dataList, beginTime, endTime, "MONTH", "E2");

            assertEquals(1, result.size());
            assertEquals("水", result.get(0).getIndexName());
            verify(monthMapper).getMonthlyComprehensiveList("N2", dataList, beginTime, endTime, "MONTH", "E2");
        }
    }

    @Nested
    @DisplayName("2. getListChart")
    class ChartTests {

        @Test
        @DisplayName("indexId 为空时返回空列表")
        void testChart_emptyIndexId_returnsEmpty() {
            List<MonthlyComprehensive> result = monthlyComprehensiveService.getListChart(
                    "", beginTime, endTime, "DAY", "E1");

            assertTrue(result.isEmpty());
            verify(monthMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 为 null 时返回空列表")
        void testChart_nullIndexId_returnsEmpty() {
            List<MonthlyComprehensive> result = monthlyComprehensiveService.getListChart(
                    null, beginTime, endTime, "DAY", "E1");

            assertTrue(result.isEmpty());
            verify(monthMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 有效时委托 Mapper 返回图表数据")
        void testChart_validIndexId_delegatesToMapper() {
            MonthlyComprehensive row = new MonthlyComprehensive();
            row.setIndexId("IDX2");
            row.setValue("88");
            when(monthMapper.getListChart(eq("IDX2"), eq(beginTime), eq(endTime), eq("DAY"), eq("E2")))
                    .thenReturn(Collections.singletonList(row));

            List<MonthlyComprehensive> result = monthlyComprehensiveService.getListChart(
                    "IDX2", beginTime, endTime, "DAY", "E2");

            assertEquals(1, result.size());
            assertEquals("88", result.get(0).getValue());
            verify(monthMapper).getListChart("IDX2", beginTime, endTime, "DAY", "E2");
        }
    }
}
