package com.zhitan.comprehensivestatistics;

import cn.hutool.core.date.DateUtil;
import com.zhitan.comprehensivestatistics.domain.YearComperhensive;
import com.zhitan.comprehensivestatistics.mapper.YearComprehensiveMapper;
import com.zhitan.comprehensivestatistics.service.impl.YearComprehensiveServiceImpl;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * YearComprehensiveServiceImpl 综合指标分析（年）单元测试
 * <p>
 * 覆盖列表查询边界，以及图表按月补齐缺失时段的逻辑
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("YearComprehensiveServiceImpl 综合指标（年）测试")
class YearComprehensiveServiceImplTest {

    @Mock
    private YearComprehensiveMapper yearMapper;

    @InjectMocks
    private YearComprehensiveServiceImpl yearComprehensiveService;

    private final Date endTime = new Date();

    private YearComperhensive yearItem(String timeCode, String indexId, String indexName, String unitId, String value) {
        YearComperhensive item = new YearComperhensive();
        item.setTimeCode(timeCode);
        item.setIndexId(indexId);
        item.setIndexName(indexName);
        item.setUnitId(unitId);
        item.setTimeType("MONTH");
        item.setValue(value);
        return item;
    }

    @Nested
    @DisplayName("1. getYearComprehensiveList")
    class ListTests {

        @Test
        @DisplayName("nodeId 为空时返回空列表且不调用 Mapper")
        void testList_blankNodeId_returnsEmpty() {
            List<YearComperhensive> result = yearComprehensiveService.getYearComprehensiveList(
                    "", Collections.emptyList(), new Date(), endTime, "YEAR", "E1");

            assertTrue(result.isEmpty());
            verify(yearMapper, never()).getYearComprehensiveList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("nodeId 为 null 时返回空列表")
        void testList_nullNodeId_returnsEmpty() {
            List<YearComperhensive> result = yearComprehensiveService.getYearComprehensiveList(
                    null, Collections.emptyList(), new Date(), endTime, "YEAR", "E1");

            assertTrue(result.isEmpty());
            verify(yearMapper, never()).getYearComprehensiveList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("nodeId 有效时委托 Mapper 并返回结果")
        void testList_validNodeId_delegatesToMapper() {
            Date begin = DateUtil.parse("2026-01-01 00:00:00");
            YearComperhensive row = yearItem("M202601", "IDX3", "气", "m3", "10");
            List<YearComperhensive> dataList = Collections.singletonList(row);
            when(yearMapper.getYearComprehensiveList(eq("N3"), eq(dataList), eq(begin), eq(endTime), eq("YEAR"), eq("E3")))
                    .thenReturn(Collections.singletonList(row));

            List<YearComperhensive> result = yearComprehensiveService.getYearComprehensiveList(
                    "N3", dataList, begin, endTime, "YEAR", "E3");

            assertEquals(1, result.size());
            assertEquals("气", result.get(0).getIndexName());
            verify(yearMapper).getYearComprehensiveList("N3", dataList, begin, endTime, "YEAR", "E3");
        }
    }

    @Nested
    @DisplayName("2. getListChart")
    class ChartTests {

        @Test
        @DisplayName("indexId 为空时返回空列表")
        void testChart_blankIndexId_returnsEmpty() {
            List<YearComperhensive> result = yearComprehensiveService.getListChart(
                    "", DateUtil.beginOfYear(new Date()), endTime, "MONTH", "E1");

            assertTrue(result.isEmpty());
            verify(yearMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 为 null 时返回空列表")
        void testChart_nullIndexId_returnsEmpty() {
            List<YearComperhensive> result = yearComprehensiveService.getListChart(
                    null, DateUtil.beginOfYear(new Date()), endTime, "MONTH", "E1");

            assertTrue(result.isEmpty());
            verify(yearMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("Mapper 无数据时返回空列表")
        void testChart_mapperEmpty_returnsEmpty() {
            Date begin = DateUtil.parse("2026-06-01 00:00:00");
            when(yearMapper.getListChart(eq("IDX3"), any(), any(), eq("MONTH"), eq("E3")))
                    .thenReturn(Collections.emptyList());

            List<YearComperhensive> result = yearComprehensiveService.getListChart(
                    "IDX3", begin, endTime, "MONTH", "E3");

            assertTrue(result.isEmpty());
            // 空列表时只查询一次，不会进入补齐循环
            verify(yearMapper, times(1)).getListChart(eq("IDX3"), any(), any(), eq("MONTH"), eq("E3"));
        }

        @Test
        @DisplayName("有数据时按月补齐缺失时段，并保留已有月份数值")
        void testChart_fillsMissingMonths_keepsExistingValues() {
            // 从 6 月起补齐至当前月（测试运行于 2026-08，期望 6/7/8 共 3 个月）
            Date begin = DateUtil.parse("2026-06-01 00:00:00");
            YearComperhensive june = yearItem("M202606", "IDX3", "电", "kWh", "100");
            List<YearComperhensive> chartRows = Collections.singletonList(june);
            // 实现内会调用两次 getListChart
            when(yearMapper.getListChart(eq("IDX3"), any(), any(), eq("MONTH"), eq("E3")))
                    .thenReturn(chartRows);

            List<YearComperhensive> result = yearComprehensiveService.getListChart(
                    "IDX3", begin, endTime, "MONTH", "E3");

            assertTrue(result.size() >= 3, "至少应包含 6、7、8 三个月");
            assertEquals("M202606", result.get(0).getTimeCode());
            assertEquals("100", result.get(0).getValue());

            YearComperhensive july = result.stream()
                    .filter(r -> "M202607".equals(r.getTimeCode()))
                    .findFirst()
                    .orElse(null);
            assertNotNull(july);
            assertNull(july.getValue());
            assertEquals("电", july.getIndexName());
            assertEquals("kWh", july.getUnitId());
            assertEquals("IDX3", july.getIndexId());
            assertEquals("MONTH", july.getTimeType());

            verify(yearMapper, times(2)).getListChart(eq("IDX3"), any(), any(), eq("MONTH"), eq("E3"));
        }

        @Test
        @DisplayName("多个已有月份时均按 timeCode 正确映射")
        void testChart_multipleExistingMonths_mapsByTimeCode() {
            Date begin = DateUtil.parse("2026-06-01 00:00:00");
            YearComperhensive june = yearItem("M202606", "IDX3", "电", "kWh", "10");
            YearComperhensive august = yearItem("M202608", "IDX3", "电", "kWh", "30");
            List<YearComperhensive> chartRows = Arrays.asList(june, august);
            when(yearMapper.getListChart(eq("IDX3"), any(), any(), eq("MONTH"), eq("E3")))
                    .thenReturn(chartRows);

            List<YearComperhensive> result = yearComprehensiveService.getListChart(
                    "IDX3", begin, endTime, "MONTH", "E3");

            YearComperhensive juneResult = result.stream()
                    .filter(r -> "M202606".equals(r.getTimeCode())).findFirst().orElse(null);
            YearComperhensive julyResult = result.stream()
                    .filter(r -> "M202607".equals(r.getTimeCode())).findFirst().orElse(null);
            YearComperhensive augResult = result.stream()
                    .filter(r -> "M202608".equals(r.getTimeCode())).findFirst().orElse(null);

            assertNotNull(juneResult);
            assertEquals("10", juneResult.getValue());
            assertNotNull(julyResult);
            assertNull(julyResult.getValue());
            assertNotNull(augResult);
            assertEquals("30", augResult.getValue());
        }
    }
}
