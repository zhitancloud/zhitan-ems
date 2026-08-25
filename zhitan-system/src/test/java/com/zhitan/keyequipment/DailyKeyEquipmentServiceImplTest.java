package com.zhitan.keyequipment;

import com.zhitan.basicdata.domain.Device;
import com.zhitan.keyequipment.domain.DailyKeyEquipment;
import com.zhitan.keyequipment.mapper.DailyKeyEquipmentMapper;
import com.zhitan.keyequipment.service.impl.DailyKeyEquipmentServiceImpl;
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
 * DailyKeyEquipmentServiceImpl 重点设备能耗分析（日）单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("DailyKeyEquipmentServiceImpl 重点设备（日）测试")
class DailyKeyEquipmentServiceImplTest {

    @Mock
    private DailyKeyEquipmentMapper dailyKeyEquipmentMapper;

    @InjectMocks
    private DailyKeyEquipmentServiceImpl service;

    private final Date beginTime = new Date();
    private final Date endTime = new Date();

    @Nested
    @DisplayName("1. getdailyKeyEquipmentList")
    class ListTests {

        @Test
        @DisplayName("indexIds 为空列表时返回空且不调用 Mapper")
        void testList_emptyIndexIds_returnsEmpty() {
            List<DailyKeyEquipment> result = service.getdailyKeyEquipmentList(
                    Collections.emptyList(), Collections.emptyList(), beginTime, endTime, "HOUR", "E1");

            assertTrue(result.isEmpty());
            verify(dailyKeyEquipmentMapper, never()).getdailyKeyEquipmentList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexIds 为 null 时返回空列表")
        void testList_nullIndexIds_returnsEmpty() {
            List<DailyKeyEquipment> result = service.getdailyKeyEquipmentList(
                    null, Collections.emptyList(), beginTime, endTime, "HOUR", "E1");

            assertTrue(result.isEmpty());
            verify(dailyKeyEquipmentMapper, never()).getdailyKeyEquipmentList(any(), any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexIds 有效时委托 Mapper 并返回结果")
        void testList_validIndexIds_delegates() {
            List<String> indexIds = Collections.singletonList("IDX1");
            DailyKeyEquipment row = new DailyKeyEquipment();
            row.setIndexId("IDX1");
            row.setIndexName("空压机用电");
            List<DailyKeyEquipment> dataList = Collections.singletonList(row);
            when(dailyKeyEquipmentMapper.getdailyKeyEquipmentList(
                    eq(indexIds), eq(dataList), eq(beginTime), eq(endTime), eq("HOUR"), eq("E1")))
                    .thenReturn(Collections.singletonList(row));

            List<DailyKeyEquipment> result = service.getdailyKeyEquipmentList(
                    indexIds, dataList, beginTime, endTime, "HOUR", "E1");

            assertEquals(1, result.size());
            assertEquals("空压机用电", result.get(0).getIndexName());
            verify(dailyKeyEquipmentMapper).getdailyKeyEquipmentList(
                    indexIds, dataList, beginTime, endTime, "HOUR", "E1");
        }
    }

    @Nested
    @DisplayName("2. getListChart")
    class ChartTests {

        @Test
        @DisplayName("indexId 为空时返回空列表")
        void testChart_blankIndexId_returnsEmpty() {
            assertTrue(service.getListChart("", beginTime, endTime, "HOUR", "E1").isEmpty());
            verify(dailyKeyEquipmentMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 为 null 时返回空列表")
        void testChart_nullIndexId_returnsEmpty() {
            assertTrue(service.getListChart(null, beginTime, endTime, "HOUR", "E1").isEmpty());
            verify(dailyKeyEquipmentMapper, never()).getListChart(any(), any(), any(), any(), any());
        }

        @Test
        @DisplayName("indexId 有效时委托 Mapper 返回图表数据")
        void testChart_validIndexId_delegates() {
            DailyKeyEquipment row = new DailyKeyEquipment();
            row.setIndexId("IDX1");
            row.setValue("12.5");
            when(dailyKeyEquipmentMapper.getListChart(eq("IDX1"), eq(beginTime), eq(endTime), eq("HOUR"), eq("E1")))
                    .thenReturn(Collections.singletonList(row));

            List<DailyKeyEquipment> result = service.getListChart("IDX1", beginTime, endTime, "HOUR", "E1");

            assertEquals(1, result.size());
            assertEquals("12.5", result.get(0).getValue());
        }
    }

    @Nested
    @DisplayName("3. 设备档案查询")
    class FacilityTests {

        @Test
        @DisplayName("查询全部设备档案委托 Mapper")
        void testGetFacilityArchives_delegates() {
            Device device = mock(Device.class);
            when(dailyKeyEquipmentMapper.getFacilityArchives()).thenReturn(Collections.singletonList(device));

            assertEquals(1, service.getFacilityArchives().size());
            verify(dailyKeyEquipmentMapper).getFacilityArchives();
        }

        @Test
        @DisplayName("查询重点设备列表委托 Mapper")
        void testGetPointFacility_delegates() {
            when(dailyKeyEquipmentMapper.getPointFacility())
                    .thenReturn(Arrays.asList(mock(Device.class), mock(Device.class)));

            assertEquals(2, service.getPointFacility().size());
            verify(dailyKeyEquipmentMapper).getPointFacility();
        }
    }
}
