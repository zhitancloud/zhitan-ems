package com.zhitan.home;

import com.zhitan.basicdata.domain.SysEnergy;
import com.zhitan.basicdata.mapper.SysEnergyMapper;
import com.zhitan.common.core.domain.entity.SysDictData;
import com.zhitan.common.enums.TimeType;
import com.zhitan.consumptionanalysis.domain.vo.RankingEnergyData;
import com.zhitan.energyUsed.service.IEnergyUsedService;
import com.zhitan.home.domain.vo.HomeEnergyConsumptionTrendVO;
import com.zhitan.home.domain.vo.HomeEnergyStatisticsVO;
import com.zhitan.home.domain.vo.HomePeakValleyVO;
import com.zhitan.home.service.HomePageServiceImpl;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.mapper.ModelNodeMapper;
import com.zhitan.model.service.IMeterPointService;
import com.zhitan.model.service.IModelNodeService;
import com.zhitan.peakvalley.domain.EnergyUsedElectricity;
import com.zhitan.peakvalley.mapper.EnergyUsedElectricityMapper;
import com.zhitan.realtimedata.domain.EnergyUsed;
import com.zhitan.system.service.ISysDictDataService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * HomePageServiceImpl 首页看板服务单元测试（Mock）
 * <p>
 * 覆盖：能耗汇总同比环比、尖峰平谷占比、能耗趋势、科室能耗排名及边界场景
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("HomePageServiceImpl 首页看板服务测试")
class HomePageServiceImplTest {

    private static final String MODEL_CODE = "COMPREHENSIVE_CODE";

    @Mock
    private SysEnergyMapper sysEnergyMapper;
    @Mock
    private IModelNodeService modelNodeService;
    @Mock
    private IEnergyUsedService dataItemService;
    @Mock
    private IMeterPointService energyIndexService;
    @Mock
    private ISysDictDataService sysDictDataService;
    @Mock
    private ModelNodeMapper modelNodeMapper;
    @Mock
    private EnergyUsedElectricityMapper electricityDataItemMapper;

    @InjectMocks
    private HomePageServiceImpl homePageService;

    private Locale originalLocale;

    @BeforeEach
    void setUpLocale() {
        // DecimalFormat("#.00") 依赖默认 Locale；统一为 US 避免中文环境下逗号小数点导致解析失败
        originalLocale = Locale.getDefault();
        Locale.setDefault(Locale.US);
    }

    @AfterEach
    void restoreLocale() {
        Locale.setDefault(originalLocale);
    }

    private SysEnergy energy(String no, String name, String unit, String coefficient) {
        SysEnergy e = new SysEnergy();
        e.setEnersno(no);
        e.setEnername(name);
        e.setMuid(unit);
        e.setCoefficient(new BigDecimal(coefficient));
        return e;
    }

    private ModelNode node(String nodeId, String parentId, String modelCode) {
        ModelNode n = new ModelNode();
        n.setNodeId(nodeId);
        n.setParentId(parentId);
        n.setModelCode(modelCode);
        return n;
    }

    private ModelNodePointInfo pointInfo(String indexId) {
        ModelNodePointInfo info = new ModelNodePointInfo();
        info.setIndexId(indexId);
        return info;
    }

    private MeterPoint meterPoint(String pointId, String energyId) {
        MeterPoint p = new MeterPoint();
        p.setPointId(pointId);
        p.setEnergyId(energyId);
        return p;
    }

    private EnergyUsed energyUsed(String pointId, double value, Date dataTime) {
        EnergyUsed used = new EnergyUsed();
        used.setPointId(pointId);
        used.setValue(value);
        used.setDataTime(dataTime);
        return used;
    }

    private SysDictData dict(String label, String value) {
        SysDictData d = new SysDictData();
        d.setDictLabel(label);
        d.setDictValue(value);
        return d;
    }

    private EnergyUsedElectricity electricity(String type, String amount) {
        EnergyUsedElectricity item = new EnergyUsedElectricity();
        item.setElectricityType(type);
        item.setElectricity(new BigDecimal(amount));
        return item;
    }

    // ==================== 一、能耗汇总 energyConsumptionSummation ====================

    @Nested
    @DisplayName("1. energyConsumptionSummation 能耗汇总")
    class EnergyConsumptionSummationTests {

        @Test
        @DisplayName("模型节点不存在时返回能源列表且计数为 0，吨标煤按系数计算")
        void testSummation_whenModelNodeMissing_returnsZeroCounts() {
            when(sysEnergyMapper.selectSysEnergyList(any(SysEnergy.class)))
                    .thenReturn(Collections.singletonList(energy("electric", "电", "kWh", "0.1229")));
            when(modelNodeService.getModelNodeByModelCodeByIndexCode(MODEL_CODE)).thenReturn(null);

            List<HomeEnergyStatisticsVO> result =
                    homePageService.energyConsumptionSummation(TimeType.DAY.name(), MODEL_CODE);

            assertEquals(1, result.size());
            HomeEnergyStatisticsVO vo = result.get(0);
            assertEquals("electric", vo.getEnergyNo());
            assertEquals("电", vo.getEnergyName());
            assertEquals(0D, vo.getCount());
            assertEquals(0D, vo.getTongbi());
            assertEquals(0D, vo.getHuanbi());
            assertEquals(0D, vo.getTonCount());
            verify(dataItemService, never()).listEnergyUsedTimeRangeInfoByPointIds(any(), any(), any(), any());
        }

        @Test
        @DisplayName("有点位数据时汇总用量，并计算同比环比与吨标煤")
        void testSummation_withData_computesTongbiHuanbiAndTonCount() {
            when(sysEnergyMapper.selectSysEnergyList(any(SysEnergy.class)))
                    .thenReturn(Collections.singletonList(energy("electric", "电", "kWh", "1")));

            ModelNode modelNode = node("N1", null, MODEL_CODE);
            when(modelNodeService.getModelNodeByModelCodeByIndexCode(MODEL_CODE)).thenReturn(modelNode);
            when(modelNodeService.getModelNodeIndexIdRelationInforByNodeId("N1"))
                    .thenReturn(Collections.singletonList(pointInfo("P1")));
            when(energyIndexService.listMeterPointByIds(anyList()))
                    .thenReturn(Collections.singletonList(meterPoint("P1", "electric")));

            // 三次调用：当期 / 同比(年-12月) / 环比 → 100 / 50 / 80
            AtomicInteger call = new AtomicInteger();
            when(dataItemService.listEnergyUsedTimeRangeInfoByPointIds(any(), any(), anyString(), anyList()))
                    .thenAnswer(inv -> {
                        double value;
                        switch (call.getAndIncrement()) {
                            case 0:
                                value = 100D;
                                break;
                            case 1:
                                value = 50D;
                                break;
                            default:
                                value = 80D;
                                break;
                        }
                        return Collections.singletonList(energyUsed("P1", value, new Date()));
                    });

            List<HomeEnergyStatisticsVO> result =
                    homePageService.energyConsumptionSummation(TimeType.DAY.name(), MODEL_CODE);

            assertEquals(1, result.size());
            HomeEnergyStatisticsVO vo = result.get(0);
            assertEquals(100D, vo.getCount());
            assertEquals(100D, vo.getTonCount());
            // (100-50)/50*100 = 100
            assertEquals(100D, vo.getTongbi());
            // (100-80)/80*100 = 25
            assertEquals(25D, vo.getHuanbi());
            verify(dataItemService, times(3))
                    .listEnergyUsedTimeRangeInfoByPointIds(any(), any(), eq(TimeType.HOUR.name()), anyList());
        }

        @Test
        @DisplayName("MONTH 时序使用 DAY 粒度查询能耗数据")
        void testSummation_month_usesDayGrain() {
            when(sysEnergyMapper.selectSysEnergyList(any(SysEnergy.class)))
                    .thenReturn(Collections.singletonList(energy("water", "水", "t", "0.0857")));
            ModelNode modelNode = node("N1", null, MODEL_CODE);
            when(modelNodeService.getModelNodeByModelCodeByIndexCode(MODEL_CODE)).thenReturn(modelNode);
            when(modelNodeService.getModelNodeIndexIdRelationInforByNodeId("N1"))
                    .thenReturn(Collections.singletonList(pointInfo("P2")));
            when(energyIndexService.listMeterPointByIds(anyList()))
                    .thenReturn(Collections.singletonList(meterPoint("P2", "water")));
            when(dataItemService.listEnergyUsedTimeRangeInfoByPointIds(any(), any(), anyString(), anyList()))
                    .thenReturn(Collections.emptyList());

            homePageService.energyConsumptionSummation(TimeType.MONTH.name(), MODEL_CODE);

            verify(dataItemService, atLeastOnce())
                    .listEnergyUsedTimeRangeInfoByPointIds(any(), any(), eq(TimeType.DAY.name()), anyList());
        }

        @Test
        @DisplayName("YEAR 时序使用 MONTH 粒度；同比分母为 0 时同比为 0")
        void testSummation_year_zeroTongbiBase() {
            when(sysEnergyMapper.selectSysEnergyList(any(SysEnergy.class)))
                    .thenReturn(Collections.singletonList(energy("gas", "气", "m3", "1.33")));
            ModelNode modelNode = node("N1", null, MODEL_CODE);
            when(modelNodeService.getModelNodeByModelCodeByIndexCode(MODEL_CODE)).thenReturn(modelNode);
            when(modelNodeService.getModelNodeIndexIdRelationInforByNodeId("N1"))
                    .thenReturn(Collections.singletonList(pointInfo("P3")));
            when(energyIndexService.listMeterPointByIds(anyList()))
                    .thenReturn(Collections.singletonList(meterPoint("P3", "gas")));

            AtomicInteger call = new AtomicInteger();
            when(dataItemService.listEnergyUsedTimeRangeInfoByPointIds(any(), any(), anyString(), anyList()))
                    .thenAnswer(inv -> {
                        int n = call.getAndIncrement();
                        // 当期有值，同比/环比无值 → tongbi/huanbi = 0
                        double value = n == 0 ? 10D : 0D;
                        return Collections.singletonList(energyUsed("P3", value, new Date()));
                    });

            List<HomeEnergyStatisticsVO> result =
                    homePageService.energyConsumptionSummation(TimeType.YEAR.name(), MODEL_CODE);

            assertEquals(10D, result.get(0).getCount());
            assertEquals(0D, result.get(0).getTongbi());
            assertEquals(0D, result.get(0).getHuanbi());
            verify(dataItemService, atLeastOnce())
                    .listEnergyUsedTimeRangeInfoByPointIds(any(), any(), eq(TimeType.MONTH.name()), anyList());
        }

        @Test
        @DisplayName("点位无对应能源类型时该能源计数为 0")
        void testSummation_whenPointEnergyNotMatched_countZero() {
            when(sysEnergyMapper.selectSysEnergyList(any(SysEnergy.class)))
                    .thenReturn(Collections.singletonList(energy("electric", "电", "kWh", "1")));
            ModelNode modelNode = node("N1", null, MODEL_CODE);
            when(modelNodeService.getModelNodeByModelCodeByIndexCode(MODEL_CODE)).thenReturn(modelNode);
            when(modelNodeService.getModelNodeIndexIdRelationInforByNodeId("N1"))
                    .thenReturn(Collections.singletonList(pointInfo("P1")));
            // 点位归属其他能源，与 electric 不匹配
            when(energyIndexService.listMeterPointByIds(anyList()))
                    .thenReturn(Collections.singletonList(meterPoint("P1", "water")));
            when(dataItemService.listEnergyUsedTimeRangeInfoByPointIds(any(), any(), anyString(), anyList()))
                    .thenReturn(Collections.singletonList(energyUsed("P1", 99D, new Date())));

            List<HomeEnergyStatisticsVO> result =
                    homePageService.energyConsumptionSummation(TimeType.DAY.name(), MODEL_CODE);

            assertEquals(0D, result.get(0).getCount());
        }
    }

    // ==================== 二、尖峰平谷 peakValley ====================

    @Nested
    @DisplayName("2. peakValley 尖峰平谷占比")
    class PeakValleyTests {

        @Test
        @DisplayName("首节点不存在时返回字典时段且用量与占比为 0")
        void testPeakValley_whenFirstNodeMissing_returnsZero() {
            when(sysDictDataService.selectDictDataByType("electricity_price"))
                    .thenReturn(Arrays.asList(dict("峰", "feng"), dict("谷", "gu")));
            when(modelNodeMapper.getFirstModeNodeInfo(MODEL_CODE)).thenReturn(null);

            List<HomePeakValleyVO> result = homePageService.peakValley(TimeType.DAY.name(), MODEL_CODE);

            assertEquals(2, result.size());
            assertEquals("峰", result.get(0).getTimeName());
            assertEquals("feng", result.get(0).getTimeType());
            assertEquals(0D, result.get(0).getCount());
            assertEquals(0D, result.get(0).getPercentage());
            verify(electricityDataItemMapper, never()).getDataStatistics(anySet(), any(), any(), anyString());
        }

        @Test
        @DisplayName("有尖峰平谷数据时计算用量合计与百分比")
        void testPeakValley_withData_computesPercentage() {
            when(sysDictDataService.selectDictDataByType("electricity_price"))
                    .thenReturn(Arrays.asList(dict("峰", "feng"), dict("平", "ping"), dict("谷", "gu")));
            ModelNode first = node("ROOT", null, MODEL_CODE);
            when(modelNodeMapper.getFirstModeNodeInfo(MODEL_CODE)).thenReturn(first);
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId(MODEL_CODE, "ROOT"))
                    .thenReturn(Collections.singletonList(pointInfo("IDX1")));
            when(electricityDataItemMapper.getDataStatistics(anySet(), any(), any(), eq(TimeType.HOUR.name())))
                    .thenReturn(Arrays.asList(
                            electricity("feng", "50"),
                            electricity("ping", "30"),
                            electricity("gu", "20")
                    ));

            List<HomePeakValleyVO> result = homePageService.peakValley(TimeType.DAY.name(), MODEL_CODE);

            assertEquals(3, result.size());
            HomePeakValleyVO feng = result.stream().filter(v -> "feng".equals(v.getTimeType())).findFirst().orElse(null);
            assertNotNull(feng);
            assertEquals(50D, feng.getCount());
            assertEquals(50D, feng.getPercentage());
        }

        @Test
        @DisplayName("节点下无点位时保持字典默认 0 值")
        void testPeakValley_whenNoIndexes_keepsZeros() {
            when(sysDictDataService.selectDictDataByType("electricity_price"))
                    .thenReturn(Collections.singletonList(dict("尖", "jian")));
            when(modelNodeMapper.getFirstModeNodeInfo(MODEL_CODE)).thenReturn(node("ROOT", null, MODEL_CODE));
            when(modelNodeMapper.selectIndexByModelCodeAndNodeId(MODEL_CODE, "ROOT"))
                    .thenReturn(Collections.emptyList());

            List<HomePeakValleyVO> result = homePageService.peakValley(TimeType.MONTH.name(), MODEL_CODE);

            assertEquals(1, result.size());
            assertEquals(0D, result.get(0).getCount());
            assertEquals(0D, result.get(0).getPercentage());
            verify(electricityDataItemMapper, never()).getDataStatistics(anySet(), any(), any(), anyString());
        }

        @Test
        @DisplayName("字典为空时返回空列表")
        void testPeakValley_whenDictEmpty_returnsEmpty() {
            when(sysDictDataService.selectDictDataByType("electricity_price"))
                    .thenReturn(Collections.emptyList());
            when(modelNodeMapper.getFirstModeNodeInfo(MODEL_CODE)).thenReturn(null);

            List<HomePeakValleyVO> result = homePageService.peakValley(TimeType.YEAR.name(), MODEL_CODE);

            assertTrue(result.isEmpty());
        }
    }

    // ==================== 三、能耗趋势 energyConsumptionTrend ====================

    @Nested
    @DisplayName("3. energyConsumptionTrend 能耗趋势")
    class EnergyConsumptionTrendTests {

        @Test
        @DisplayName("模型节点不存在时返回空 VO")
        void testTrend_whenModelNodeMissing_returnsEmptyVo() {
            when(sysEnergyMapper.selectSysEnergyList(any(SysEnergy.class)))
                    .thenReturn(Collections.singletonList(energy("electric", "电", "kWh", "1")));
            when(modelNodeService.getModelNodeByModelCodeByIndexCode(MODEL_CODE)).thenReturn(null);

            HomeEnergyConsumptionTrendVO vo =
                    homePageService.energyConsumptionTrend(TimeType.DAY.name(), MODEL_CODE);

            assertNotNull(vo);
            assertNull(vo.getXdata());
            assertNull(vo.getYdata());
            assertNull(vo.getLegend());
        }

        @Test
        @DisplayName("DAY 趋势：图例、横轴小时点数、纵轴能源维度正确，并折算系数")
        void testTrend_day_buildsSeriesWithCoefficient() {
            when(sysEnergyMapper.selectSysEnergyList(any(SysEnergy.class)))
                    .thenReturn(Collections.singletonList(energy("electric", "电", "kWh", "2")));
            ModelNode modelNode = node("N1", null, MODEL_CODE);
            when(modelNodeService.getModelNodeByModelCodeByIndexCode(MODEL_CODE)).thenReturn(modelNode);
            when(modelNodeService.getModelNodeIndexIdRelationInforByNodeId("N1"))
                    .thenReturn(Collections.singletonList(pointInfo("P1")));
            when(energyIndexService.listMeterPointByIds(anyList()))
                    .thenReturn(Collections.singletonList(meterPoint("P1", "electric")));

            // 仅在当天 0 点放一条数据，其余小时为 0
            Date beginOfDay = cn.hutool.core.date.DateUtil.beginOfDay(new Date());
            when(dataItemService.listEnergyUsedTimeRangeInfoByPointIds(any(), any(), eq(TimeType.HOUR.name()), anyList()))
                    .thenReturn(Collections.singletonList(energyUsed("P1", 10D, beginOfDay)));

            HomeEnergyConsumptionTrendVO vo =
                    homePageService.energyConsumptionTrend(TimeType.DAY.name(), MODEL_CODE);

            assertArrayEquals(new String[]{"电"}, vo.getLegend());
            assertEquals(24, vo.getXdata().length);
            assertEquals(1, vo.getYdata().length);
            assertEquals(24, vo.getYdata()[0].length);
            // 10 * 系数 2 = 20
            assertEquals(20D, vo.getYdata()[0][0]);
            assertEquals(0D, vo.getYdata()[0][1]);
        }

        @Test
        @DisplayName("MONTH 趋势使用 DAY 粒度查询")
        void testTrend_month_usesDayGrain() {
            when(sysEnergyMapper.selectSysEnergyList(any(SysEnergy.class)))
                    .thenReturn(Collections.singletonList(energy("electric", "电", "kWh", "1")));
            when(modelNodeService.getModelNodeByModelCodeByIndexCode(MODEL_CODE))
                    .thenReturn(node("N1", null, MODEL_CODE));
            when(modelNodeService.getModelNodeIndexIdRelationInforByNodeId("N1"))
                    .thenReturn(Collections.singletonList(pointInfo("P1")));
            when(energyIndexService.listMeterPointByIds(anyList()))
                    .thenReturn(Collections.singletonList(meterPoint("P1", "electric")));
            when(dataItemService.listEnergyUsedTimeRangeInfoByPointIds(any(), any(), anyString(), anyList()))
                    .thenReturn(Collections.emptyList());

            HomeEnergyConsumptionTrendVO vo =
                    homePageService.energyConsumptionTrend(TimeType.MONTH.name(), MODEL_CODE);

            assertNotNull(vo.getXdata());
            assertTrue(vo.getXdata().length >= 28);
            verify(dataItemService).listEnergyUsedTimeRangeInfoByPointIds(any(), any(), eq(TimeType.DAY.name()), anyList());
        }
    }

    // ==================== 四、能耗排名 energyConsumptionRanking ====================

    @Nested
    @DisplayName("4. energyConsumptionRanking 科室能耗排名")
    class EnergyConsumptionRankingTests {

        @Test
        @DisplayName("非法 timeType 返回空列表且不查库")
        void testRanking_invalidTimeType_returnsEmpty() {
            List<RankingEnergyData> result =
                    homePageService.energyConsumptionRanking(MODEL_CODE, "WEEK");

            assertTrue(result.isEmpty());
            verify(modelNodeMapper, never()).selectList(any());
        }

        @Test
        @DisplayName("模型下无节点时返回空列表")
        void testRanking_noModelNodes_returnsEmpty() {
            when(modelNodeMapper.selectList(any())).thenReturn(Collections.emptyList());

            List<RankingEnergyData> result =
                    homePageService.energyConsumptionRanking(MODEL_CODE, TimeType.DAY.name());

            assertTrue(result.isEmpty());
            verify(dataItemService, never()).getHomePageConsumptionRanking(anyList(), anyString(), any(), any());
        }

        @Test
        @DisplayName("无根节点（均有 parentId）时返回空列表")
        void testRanking_noParentNode_returnsEmpty() {
            when(modelNodeMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(node("C1", "P1", MODEL_CODE)));

            List<RankingEnergyData> result =
                    homePageService.energyConsumptionRanking(MODEL_CODE, TimeType.MONTH.name());

            assertTrue(result.isEmpty());
        }

        @Test
        @DisplayName("无子节点时返回空列表")
        void testRanking_noChildren_returnsEmpty() {
            when(modelNodeMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(node("ROOT", null, MODEL_CODE)));

            List<RankingEnergyData> result =
                    homePageService.energyConsumptionRanking(MODEL_CODE, TimeType.YEAR.name());

            assertTrue(result.isEmpty());
            verify(dataItemService, never()).getHomePageConsumptionRanking(anyList(), anyString(), any(), any());
        }

        @Test
        @DisplayName("有子节点时委托查询并保留两位小数")
        void testRanking_withChildren_scalesConsumption() {
            ModelNode root = node("ROOT", null, MODEL_CODE);
            ModelNode child = node("CHILD1", "ROOT", MODEL_CODE);
            when(modelNodeMapper.selectList(any())).thenReturn(Arrays.asList(root, child));

            RankingEnergyData data = new RankingEnergyData();
            data.setNodeId("CHILD1");
            data.setNodeName("一车间");
            data.setEnergyConsumption(12.3456D);
            when(dataItemService.getHomePageConsumptionRanking(anyList(), eq(TimeType.HOUR.name()), any(), any()))
                    .thenReturn(new ArrayList<>(Collections.singletonList(data)));

            List<RankingEnergyData> result =
                    homePageService.energyConsumptionRanking(MODEL_CODE, TimeType.DAY.name());

            assertEquals(1, result.size());
            assertEquals(12.35D, result.get(0).getEnergyConsumption());
            verify(dataItemService).getHomePageConsumptionRanking(
                    argThat(ids -> ids.size() == 1 && ids.contains("CHILD1")),
                    eq(TimeType.HOUR.name()),
                    any(),
                    any()
            );
        }
    }
}
