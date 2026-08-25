package com.zhitan.keyequipment;

import com.zhitan.keyequipment.domain.MonthlyKeyEquipment;
import com.zhitan.keyequipment.mapper.MonthlyKeyEquipmentMapper;
import com.zhitan.keyequipment.service.impl.MonthlyKeyEquipmentServiceImpl;
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
 * MonthlyKeyEquipmentServiceImpl 重点设备能耗统计（月）单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("MonthlyKeyEquipmentServiceImpl 重点设备（月）测试")
class MonthlyKeyEquipmentServiceImplTest {

    @Mock
    private MonthlyKeyEquipmentMapper monthlyKeyEquipmentMapper;

    @InjectMocks
    private MonthlyKeyEquipmentServiceImpl service;

    private final Date beginTime = new Date();
    private final Date endTime = new Date();

    @Nested
    @DisplayName("1. getMonthlyKeyEquipmentList")
    class ListTests {

        @Test
        @DisplayName("indexIds 为空时返回空列表")
        void testList_emptyIndexIds_returnsEmpty() {
            List<MonthlyKeyEquipment> result = service.getMonthlyKeyEquipmentList(
                    Collections.emptyList(), Collections.emptyList(), beginTime, endTime, "DAY", "E1");

            assertTrue(result.isEmpty());
            verify(monthlyKeyEquipmentMapper, never())
                    .getMonthlyKeyEquipmentList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexIds 为 null 时返回空列表")
        void testList_nullIndexIds_returnsEmpty() {
            assertTrue(service.getMonthlyKeyEquipmentList(
                    null, Collections.emptyList(), beginTime, endTime, "DAY", "E1").isEmpty());
            verify(monthlyKeyEquipmentMapper, never())
                    .getMonthlyKeyEquipmentList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexIds 有效时委托 Mapper")
        void testList_validIndexIds_delegates() {
            List<String> indexIds = Collections.singletonList("IDX2");
            MonthlyKeyEquipment row = new MonthlyKeyEquipment();
            row.setIndexId("IDX2");
            row.setIndexName("冷冻机用电");
            List<MonthlyKeyEquipment> dataList = Collections.singletonList(row);
            when(monthlyKeyEquipmentMapper.getMonthlyKeyEquipmentList(
                    eq(indexIds), eq(dataList), eq(beginTime), eq(endTime), eq("DAY"), eq("E2")))
                    .thenReturn(Collections.singletonList(row));

            List<MonthlyKeyEquipment> result = service.getMonthlyKeyEquipmentList(
                    indexIds, dataList, beginTime, endTime, "DAY", "E2");

            assertEquals(1, result.size());
            assertEquals("冷冻机用电", result.get(0).getIndexName());
        }
    }

    @Nested
    @DisplayName("2. getListChart")
    class ChartTests {

        @Test
        @DisplayName("indexId 为空时返回空列表")
        void testChart_blankIndexId_returnsEmpty() {
            assertTrue(service.getListChart("", beginTime, endTime, "DAY", "E1").isEmpty());
            verify(monthlyKeyEquipmentMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 为 null 时返回空列表")
        void testChart_nullIndexId_returnsEmpty() {
            assertTrue(service.getListChart(null, beginTime, endTime, "DAY", "E1").isEmpty());
        }

        @Test
        @DisplayName("indexId 有效时委托 Mapper 返回图表数据")
        void testChart_validIndexId_delegates() {
            MonthlyKeyEquipment row = new MonthlyKeyEquipment();
            row.setIndexId("IDX2");
            row.setValue("88");
            when(monthlyKeyEquipmentMapper.getListChart(eq("IDX2"), eq(beginTime), eq(endTime), eq("DAY"), eq("E2")))
                    .thenReturn(Collections.singletonList(row));

            List<MonthlyKeyEquipment> result = service.getListChart("IDX2", beginTime, endTime, "DAY", "E2");

            assertEquals(1, result.size());
            assertEquals("88", result.get(0).getValue());
            verify(monthlyKeyEquipmentMapper).getListChart("IDX2", beginTime, endTime, "DAY", "E2");
        }
    }
}
