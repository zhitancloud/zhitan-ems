package com.zhitan.peakvalley;

import cn.hutool.core.date.DateUtil;
import com.zhitan.common.enums.ElectricityTypeEnum;
import com.zhitan.costmanagement.mapper.CostPriceRelevancyMapper;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.mapper.ModelNodeMapper;
import com.zhitan.peakvalley.domain.EnergyUsedElectricity;
import com.zhitan.peakvalley.domain.dto.ElectricityDataItemListDTO;
import com.zhitan.peakvalley.domain.dto.PeakValleyDTO;
import com.zhitan.peakvalley.domain.vo.peakvalley.PeakValleyDayVO;
import com.zhitan.peakvalley.domain.vo.peakvalley.PeakValleyHourDataVO;
import com.zhitan.peakvalley.domain.vo.peakvalley.PeakValleyHourVO;
import com.zhitan.peakvalley.mapper.EnergyUsedElectricityMapper;
import com.zhitan.peakvalley.service.impl.EnergyUsedElectricityServiceImpl;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * EnergyUsedElectricityServiceImpl 尖峰平谷时段统计单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("EnergyUsedElectricityServiceImpl 时段统计测试")
class EnergyUsedElectricityServiceImplTest {

    @Mock
    private ModelNodeMapper modelNodeMapper;

    @Mock
    private EnergyUsedElectricityMapper electricityDataItemMapper;

    @Mock
    private CostPriceRelevancyMapper costPriceRelevancyMapper;

    @InjectMocks
    private EnergyUsedElectricityServiceImpl service;

    private ModelNodePointInfo point(String indexId) {
        ModelNodePointInfo info = new ModelNodePointInfo();
        info.setIndexId(indexId);
        return info;
    }

    private EnergyUsedElectricity used(Date dataTime, ElectricityTypeEnum type, String power, String cost) {
        EnergyUsedElectricity item = new EnergyUsedElectricity();
        item.setDataTime(dataTime);
        item.setElectricityType(type.name());
        item.setElectricity(new BigDecimal(power));
        item.setCost(new BigDecimal(cost));
        return item;
    }

    private ElectricityDataItemListDTO statsDto(String timeType, Date queryTime) {
        ElectricityDataItemListDTO dto = new ElectricityDataItemListDTO();
        dto.setModelCode("M1");
        dto.setNodeId("N1");
        dto.setTimeType(timeType);
        dto.setQueryTime(queryTime);
        return dto;
    }

    private PeakValleyDTO peakDto(String timeType, Date queryTime) {
        PeakValleyDTO dto = new PeakValleyDTO();
        dto.setModelCode("M1");
        dto.setNodeId("N1");
        dto.setTimeType(timeType);
        dto.setQueryTime(queryTime);
        return dto;
    }

    @Nested
    @DisplayName("1. getDataStatistics 月统计")
    class GetDataStatisticsTests {

        @Test
        @DisplayName("无点位时按天补零返回整月条目")
        void testGetDataStatistics_noPoints_returnsZeroFilledMonth() {
            Date queryTime = DateUtil.parse("2024-02-15", "yyyy-MM-dd");
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId("M1", "N1"))
                    .thenReturn(Collections.emptyList());

            List<PeakValleyHourDataVO> result = service.getDataStatistics(statsDto("MONTH", queryTime));

            assertEquals(29, result.size());
            assertEquals(0, result.get(0).getSharpPower().compareTo(BigDecimal.ZERO));
            verify(electricityDataItemMapper, never()).getDataStatistics(anySet(), any(), any(), anyString());
        }

        @Test
        @DisplayName("有数据时按尖峰平谷累加电量与费用")
        void testGetDataStatistics_aggregatesTypes() {
            Date queryTime = DateUtil.parse("2024-01-10", "yyyy-MM-dd");
            Date day = DateUtil.beginOfMonth(queryTime);
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId("M1", "N1"))
                    .thenReturn(Collections.singletonList(point("IDX1")));
            when(electricityDataItemMapper.getDataStatistics(anySet(), any(), any(), eq("DAY")))
                    .thenReturn(Arrays.asList(
                            used(day, ElectricityTypeEnum.SHARP, "10", "20"),
                            used(day, ElectricityTypeEnum.PEAK, "5", "8"),
                            used(day, ElectricityTypeEnum.FLAT, "3", "4"),
                            used(day, ElectricityTypeEnum.VALLEY, "2", "1"),
                            used(day, ElectricityTypeEnum.SHARP, "1", "2")
                    ));

            List<PeakValleyHourDataVO> result = service.getDataStatistics(statsDto("MONTH", queryTime));

            PeakValleyHourDataVO first = result.get(0);
            assertEquals(0, first.getSharpPower().compareTo(new BigDecimal("11")));
            assertEquals(0, first.getSharpFee().compareTo(new BigDecimal("22")));
            assertEquals(0, first.getPeakPower().compareTo(new BigDecimal("5")));
            assertEquals(0, first.getFlatPower().compareTo(new BigDecimal("3")));
            assertEquals(0, first.getValleyPower().compareTo(new BigDecimal("2")));
            assertEquals(0, first.getTotalPower().compareTo(new BigDecimal("21")));

            ArgumentCaptor<Set> indexCaptor = ArgumentCaptor.forClass(Set.class);
            verify(electricityDataItemMapper).getDataStatistics(indexCaptor.capture(), any(), any(), eq("DAY"));
            assertTrue(indexCaptor.getValue().contains("IDX1"));
        }

        @Test
        @DisplayName("未知用电类型计入谷时段")
        void testGetDataStatistics_unknownType_goesToValley() {
            Date queryTime = DateUtil.parse("2024-01-01", "yyyy-MM-dd");
            Date day = DateUtil.beginOfMonth(queryTime);
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId("M1", "N1"))
                    .thenReturn(Collections.singletonList(point("IDX1")));
            EnergyUsedElectricity unknown = used(day, ElectricityTypeEnum.VALLEY, "0", "0");
            unknown.setElectricityType("DEEP");
            unknown.setElectricity(new BigDecimal("7"));
            unknown.setCost(new BigDecimal("3"));
            when(electricityDataItemMapper.getDataStatistics(anySet(), any(), any(), eq("DAY")))
                    .thenReturn(Collections.singletonList(unknown));

            PeakValleyHourDataVO first = service.getDataStatistics(statsDto("MONTH", queryTime)).get(0);
            assertEquals(0, first.getValleyPower().compareTo(new BigDecimal("7")));
            assertEquals(0, first.getValleyFee().compareTo(new BigDecimal("3")));
        }
    }

    @Nested
    @DisplayName("2. segmentAnalysisHour 分时分析")
    class HourAnalysisTests {

        @Test
        @DisplayName("无点位时返回 24 小时零数据与零占比饼图")
        void testSegmentAnalysisHour_noPoints() {
            Date queryTime = DateUtil.parse("2024-03-15", "yyyy-MM-dd");
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId("M1", "N1"))
                    .thenReturn(Collections.emptyList());

            PeakValleyHourVO result = service.segmentAnalysisHour(peakDto("DAY", queryTime));

            assertEquals(24, result.getDataList().size());
            assertEquals(24, result.getLineChat().size());
            assertEquals("0", result.getPieChat().getPeak());
            assertEquals("0", result.getPieChat().getTip());
            assertEquals("0", result.getPieChat().getFlat());
            assertEquals("0", result.getPieChat().getTrough());
        }

        @Test
        @DisplayName("有小时数据时汇总饼图占比")
        void testSegmentAnalysisHour_withData_pieProportion() {
            Date queryTime = DateUtil.parse("2024-03-15", "yyyy-MM-dd");
            Date hour = DateUtil.beginOfDay(queryTime);
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId("M1", "N1"))
                    .thenReturn(Collections.singletonList(point("IDX1")));
            when(electricityDataItemMapper.getDataStatistics(anySet(), any(), any(), eq("HOUR")))
                    .thenReturn(Arrays.asList(
                            used(hour, ElectricityTypeEnum.SHARP, "25", "50"),
                            used(hour, ElectricityTypeEnum.PEAK, "25", "40"),
                            used(hour, ElectricityTypeEnum.FLAT, "25", "30"),
                            used(hour, ElectricityTypeEnum.VALLEY, "25", "20")
                    ));

            PeakValleyHourVO result = service.segmentAnalysisHour(peakDto("DAY", queryTime));

            assertEquals("25.00", result.getPieChat().getTip());
            assertEquals("25.00", result.getPieChat().getPeak());
            assertEquals("25.00", result.getPieChat().getFlat());
            assertEquals("25.00", result.getPieChat().getTrough());
            assertEquals(0, result.getDataList().get(0).getSharpPower().compareTo(new BigDecimal("25")));
        }

        @Test
        @DisplayName("导出接口返回与小时序列一致的列表")
        void testSegmentAnalysisHourExport() {
            Date queryTime = DateUtil.parse("2024-03-15", "yyyy-MM-dd");
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId("M1", "N1"))
                    .thenReturn(Collections.emptyList());

            List<PeakValleyHourDataVO> result = service.segmentAnalysisHourExport(peakDto("DAY", queryTime));
            assertEquals(24, result.size());
        }
    }

    @Nested
    @DisplayName("3. segmentAnalysisDay 日汇总")
    class DayAnalysisTests {

        @Test
        @DisplayName("无点位时返回整月零汇总")
        void testSegmentAnalysisDay_noPoints_zeroTotal() {
            Date queryTime = DateUtil.parse("2024-02-01", "yyyy-MM-dd");
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId("M1", "N1"))
                    .thenReturn(Collections.emptyList());

            PeakValleyDayVO result = service.segmentAnalysisDay(peakDto("MONTH", queryTime));

            assertEquals(29, result.getCostList().size());
            assertEquals(29, result.getPowerConsumptionList().size());
            assertEquals(0.0, result.getTotalVO().getTotalPowerConsumption());
            assertEquals(0.0, result.getTotalVO().getTotalCost());
            assertEquals(0.0, result.getTotalVO().getTipPowerProportion());
        }

        @Test
        @DisplayName("有小时数据时按日归并并计算占比")
        void testSegmentAnalysisDay_aggregatesAndProportion() {
            Date queryTime = DateUtil.parse("2024-01-01", "yyyy-MM-dd");
            Date hour1 = DateUtil.beginOfMonth(queryTime);
            Date hour2 = DateUtil.offsetHour(hour1, 1);
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId("M1", "N1"))
                    .thenReturn(Collections.singletonList(point("IDX1")));
            when(electricityDataItemMapper.getDataStatistics(anySet(), any(), any(), eq("HOUR")))
                    .thenReturn(Arrays.asList(
                            used(hour1, ElectricityTypeEnum.SHARP, "40", "80"),
                            used(hour2, ElectricityTypeEnum.PEAK, "60", "120")
                    ));

            PeakValleyDayVO result = service.segmentAnalysisDay(peakDto("MONTH", queryTime));

            assertEquals(100.0, result.getTotalVO().getTotalPowerConsumption());
            assertEquals(200.0, result.getTotalVO().getTotalCost());
            assertEquals(40.0, result.getTotalVO().getTipPowerConsumption());
            assertEquals(60.0, result.getTotalVO().getPeakPowerConsumption());
            assertEquals(40.0, result.getTotalVO().getTipPowerProportion());
            assertEquals(60.0, result.getTotalVO().getPeakPowerProportion());
            assertEquals("2024-01-01", result.getPowerConsumptionList().get(0).getXdata());
        }

        @Test
        @DisplayName("自定义日分析当前返回 null")
        void testSegmentAnalysisDayCustomize_returnsNull() {
            assertNull(service.segmentAnalysisDayCustomize(peakDto("MONTH", new Date())));
        }
    }
}
