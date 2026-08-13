package com.zhitan.keyequipment;

import cn.hutool.core.date.DateUtil;
import com.zhitan.common.utils.TypeTime;
import com.zhitan.keyequipment.domain.YearKeyEquipment;
import com.zhitan.keyequipment.mapper.YearKeyEquipmentMapper;
import com.zhitan.keyequipment.service.impl.YearKeyEquipmentServiceImpl;
import com.zhitan.realtimedata.domain.dto.DataItemQueryDTO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
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
 * YearKeyEquipmentServiceImpl 重点设备能耗统计（年）单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("YearKeyEquipmentServiceImpl 重点设备（年）测试")
class YearKeyEquipmentServiceImplTest {

    @Mock
    private YearKeyEquipmentMapper yearKeyEquipmentMapper;

    @InjectMocks
    private YearKeyEquipmentServiceImpl service;

    private final Date beginTime = new Date();
    private final Date endTime = new Date();

    @Nested
    @DisplayName("1. getYearKeyEquipmentList")
    class ListTests {

        @Test
        @DisplayName("indexIds 为空时返回空列表")
        void testList_emptyIndexIds_returnsEmpty() {
            List<YearKeyEquipment> result = service.getYearKeyEquipmentList(
                    Collections.emptyList(), Collections.emptyList(), beginTime, endTime, "YEAR", "E1");

            assertTrue(result.isEmpty());
            verify(yearKeyEquipmentMapper, never())
                    .getYearKeyEquipmentList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexIds 为 null 时返回空列表")
        void testList_nullIndexIds_returnsEmpty() {
            assertTrue(service.getYearKeyEquipmentList(
                    null, Collections.<TypeTime>emptyList(), beginTime, endTime, "YEAR", "E1").isEmpty());
        }

        @Test
        @DisplayName("indexIds 有效时委托 Mapper")
        void testList_validIndexIds_delegates() {
            List<String> indexIds = Collections.singletonList("IDX3");
            List<TypeTime> dataList = Collections.emptyList();
            YearKeyEquipment row = new YearKeyEquipment();
            row.setIndexId("IDX3");
            row.setIndexName("锅炉用气");
            when(yearKeyEquipmentMapper.getYearKeyEquipmentList(
                    eq(indexIds), eq(dataList), eq(beginTime), eq(endTime), eq("YEAR"), eq("E3")))
                    .thenReturn(Collections.singletonList(row));

            List<YearKeyEquipment> result = service.getYearKeyEquipmentList(
                    indexIds, dataList, beginTime, endTime, "YEAR", "E3");

            assertEquals(1, result.size());
            assertEquals("锅炉用气", result.get(0).getIndexName());
        }
    }

    @Nested
    @DisplayName("2. getListChart")
    class ChartTests {

        @Test
        @DisplayName("indexId 为空时返回空列表且不调用 Mapper")
        void testChart_blankIndexId_returnsEmpty() {
            DataItemQueryDTO dto = new DataItemQueryDTO();
            dto.setIndexId("");
            dto.setTimeType("YEAR");
            dto.setDataTime("2024");

            assertTrue(service.getListChart(dto).isEmpty());
            verify(yearKeyEquipmentMapper, never()).getListChart(any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 为 null 时返回空列表")
        void testChart_nullIndexId_returnsEmpty() {
            DataItemQueryDTO dto = new DataItemQueryDTO();
            dto.setIndexId(null);
            dto.setTimeType("YEAR");
            dto.setDataTime("2024");

            assertTrue(service.getListChart(dto).isEmpty());
            verify(yearKeyEquipmentMapper, never()).getListChart(any(), any(), any(), any());
        }

        @Test
        @DisplayName("有效参数时按年起点与终点查询图表")
        void testChart_valid_usesBeginAndEndOfYear() {
            DataItemQueryDTO dto = new DataItemQueryDTO();
            dto.setIndexId("IDX3");
            dto.setTimeType("YEAR");
            dto.setDataTime("2024");

            YearKeyEquipment row = new YearKeyEquipment();
            row.setIndexId("IDX3");
            row.setValue("100");
            when(yearKeyEquipmentMapper.getListChart(eq("IDX3"), any(), any(), eq("YEAR")))
                    .thenReturn(Collections.singletonList(row));

            List<YearKeyEquipment> result = service.getListChart(dto);

            assertEquals(1, result.size());
            assertEquals("100", result.get(0).getValue());

            ArgumentCaptor<Date> beginCaptor = ArgumentCaptor.forClass(Date.class);
            ArgumentCaptor<Date> endCaptor = ArgumentCaptor.forClass(Date.class);
            verify(yearKeyEquipmentMapper).getListChart(eq("IDX3"), beginCaptor.capture(), endCaptor.capture(), eq("YEAR"));

            Date begin = beginCaptor.getValue();
            Date end = endCaptor.getValue();
            assertEquals(DateUtil.beginOfYear(DateUtil.parse("2024-01-01")), DateUtil.beginOfYear(begin));
            assertTrue(!begin.after(end));
            assertEquals(2024, DateUtil.year(begin));
            assertEquals(2024, DateUtil.year(end));
        }
    }
}
