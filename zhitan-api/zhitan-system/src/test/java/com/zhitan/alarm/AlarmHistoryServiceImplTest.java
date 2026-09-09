package com.zhitan.alarm;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.alarm.domain.JkHistoryAlarm;
import com.zhitan.alarm.domain.entity.AlarmHistory;
import com.zhitan.alarm.mapper.AlarmHistoryMapper;
import com.zhitan.alarm.services.impl.AlarmHistoryServiceImpl;
import com.zhitan.common.enums.TimeType;
import com.zhitan.model.domain.MeterPoint;
import com.zhitan.model.domain.ModelNode;
import com.zhitan.model.domain.NodePoint;
import com.zhitan.model.domain.vo.ModelNodePointInfo;
import com.zhitan.model.mapper.MeterPointMapper;
import com.zhitan.model.mapper.ModelNodeMapper;
import com.zhitan.model.mapper.NodePointMapper;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * AlarmHistoryServiceImpl 历史报警服务单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("AlarmHistoryServiceImpl 历史报警测试")
class AlarmHistoryServiceImplTest {

    @Mock
    private AlarmHistoryMapper alarmHistoryMapper;
    @Mock
    private ModelNodeMapper modelNodeMapper;
    @Mock
    private NodePointMapper nodePointMapper;
    @Mock
    private MeterPointMapper meterPointMapper;

    @InjectMocks
    private AlarmHistoryServiceImpl alarmHistoryService;

    private MockHttpServletRequest request;

    @BeforeEach
    void setUpRequest() {
        request = new MockHttpServletRequest();
        request.setParameter("pageNum", "1");
        request.setParameter("pageSize", "10");
        RequestContextHolder.setRequestAttributes(new ServletRequestAttributes(request));
    }

    @AfterEach
    void clearRequest() {
        RequestContextHolder.resetRequestAttributes();
    }

    @Nested
    @DisplayName("1. 未实现重载与简单委托")
    class SimpleTests {

        @Test
        @DisplayName("三个 getHistoryAlarm 重载当前实现返回 null")
        void testGetHistoryAlarm_overloadsReturnNull() {
            Date now = new Date();
            assertNull(alarmHistoryService.getHistoryAlarm(now, now));
            assertNull(alarmHistoryService.getHistoryAlarm(now, now, TimeType.DAY));
            assertNull(alarmHistoryService.getHistoryAlarm(now, now, "OVER"));
        }

        @Test
        @DisplayName("列表与导出查询委托 Mapper")
        void testSelectListAndExcel_delegates() {
            JkHistoryAlarm query = new JkHistoryAlarm();
            when(alarmHistoryMapper.selectJkHistoryAlarmList(query))
                    .thenReturn(Collections.singletonList(new JkHistoryAlarm()));
            when(alarmHistoryMapper.selectJkHistoryAlarmListExcel(query))
                    .thenReturn(Collections.emptyList());

            assertEquals(1, alarmHistoryService.selectJkHistoryAlarmList(query).size());
            assertTrue(alarmHistoryService.selectJkHistoryAlarmListExcel(query).isEmpty());
        }

        @Test
        @DisplayName("按 alarmCode 更新历史报警委托 Mapper")
        void testUpdateHistoryAlarm_delegates() {
            AlarmHistory history = new AlarmHistory();
            alarmHistoryService.updateHistoryAlarm("CODE1", history);
            verify(alarmHistoryMapper).updateHistoryAlarm("CODE1", history);
        }
    }

    @Nested
    @DisplayName("2. selectHistoryAlarmPageList 分页")
    class PageListTests {

        @Test
        @DisplayName("本级节点无点位时直接返回空分页，不查历史表")
        void testPage_localNode_noPoints_returnsEmptyPage() {
            JkHistoryAlarm query = new JkHistoryAlarm();
            query.setEierarchyFlag("B");
            query.setNodeId("N1");
            when(nodePointMapper.selectList(any())).thenReturn(Collections.emptyList());

            Page<JkHistoryAlarm> page = alarmHistoryService.selectHistoryAlarmPageList(query);

            assertNotNull(page);
            assertTrue(page.getRecords() == null || page.getRecords().isEmpty() || page.getTotal() == 0);
            verify(alarmHistoryMapper, never()).getHistoryAlarmList(any(), any(), anyList(), any());
        }

        @Test
        @DisplayName("本级节点按指标名称与类型过滤后查询历史报警")
        void testPage_localNode_filtersAndQueries() {
            JkHistoryAlarm query = new JkHistoryAlarm();
            query.setEierarchyFlag("B");
            query.setNodeId("N1");
            query.setIndexName("电流");
            query.setIndexType("COLLECT");
            query.setBeginTime("2026-08-06 00:00:00");
            query.setEndTime("2026-08-06 23:59:59");

            NodePoint np = new NodePoint();
            np.setPointId("P1");
            NodePoint np2 = new NodePoint();
            np2.setPointId("P2");
            when(nodePointMapper.selectList(any())).thenReturn(Arrays.asList(np, np2));

            MeterPoint match = new MeterPoint();
            match.setPointId("P1");
            match.setName("A相电流");
            match.setPointTypeCode("COLLECT");
            MeterPoint other = new MeterPoint();
            other.setPointId("P2");
            other.setName("电压");
            other.setPointTypeCode("STATISTIC");
            when(meterPointMapper.listMeterPointByIds(anyList())).thenReturn(Arrays.asList(match, other));

            Page<JkHistoryAlarm> expected = new Page<>(1, 10);
            expected.setRecords(Collections.singletonList(new JkHistoryAlarm()));
            when(alarmHistoryMapper.getHistoryAlarmList(any(), any(), anyList(), any())).thenReturn(expected);

            Page<JkHistoryAlarm> result = alarmHistoryService.selectHistoryAlarmPageList(query);

            assertSame(expected, result);
            ArgumentCaptor<List> idsCaptor = ArgumentCaptor.forClass(List.class);
            verify(alarmHistoryMapper).getHistoryAlarmList(any(), any(), idsCaptor.capture(), any());
            assertEquals(Collections.singletonList("P1"), idsCaptor.getValue());
        }

        @Test
        @DisplayName("含下级 ALL：按地址展开节点指标并过滤后查询")
        void testPage_allHierarchy_usesAddressIndexes() {
            JkHistoryAlarm query = new JkHistoryAlarm();
            query.setEierarchyFlag("ALL");
            query.setNodeId("ROOT");
            query.setIndexName("功率");
            query.setIndexType("COLLECT");

            ModelNode node = new ModelNode();
            node.setNodeId("ROOT");
            node.setModelCode("YSCJMX");
            node.setAddress("SSJC_ZC,");
            when(modelNodeMapper.selectModelNodeById("ROOT")).thenReturn(node);

            ModelNodePointInfo hit = new ModelNodePointInfo();
            hit.setIndexId("I1");
            hit.setIndexName("有功功率");
            hit.setIndexType("COLLECT");
            ModelNodePointInfo miss = new ModelNodePointInfo();
            miss.setIndexId("I2");
            miss.setIndexName("温度");
            miss.setIndexType("COLLECT");
            when(modelNodeMapper.getAllModelNodeIndexByAddress("YSCJMX", "SSJC_ZC,"))
                    .thenReturn(Arrays.asList(hit, miss));

            Page<JkHistoryAlarm> expected = new Page<>(1, 10);
            when(alarmHistoryMapper.getHistoryAlarmList(any(), any(), anyList(), any())).thenReturn(expected);

            Page<JkHistoryAlarm> result = alarmHistoryService.selectHistoryAlarmPageList(query);

            assertSame(expected, result);
            ArgumentCaptor<List> idsCaptor = ArgumentCaptor.forClass(List.class);
            verify(alarmHistoryMapper).getHistoryAlarmList(any(), any(), idsCaptor.capture(), any());
            assertEquals(Collections.singletonList("I1"), idsCaptor.getValue());
        }

        @Test
        @DisplayName("未传时间时使用当天起止时间查询")
        void testPage_defaultTimeRange_today() {
            JkHistoryAlarm query = new JkHistoryAlarm();
            query.setEierarchyFlag("B");
            query.setNodeId("N1");

            NodePoint np = new NodePoint();
            np.setPointId("P1");
            when(nodePointMapper.selectList(any())).thenReturn(Collections.singletonList(np));
            MeterPoint point = new MeterPoint();
            point.setPointId("P1");
            point.setName("测点");
            when(meterPointMapper.listMeterPointByIds(anyList())).thenReturn(Collections.singletonList(point));
            when(alarmHistoryMapper.getHistoryAlarmList(any(), any(), anyList(), any()))
                    .thenReturn(new Page<>(1, 10));

            alarmHistoryService.selectHistoryAlarmPageList(query);

            ArgumentCaptor<Date> beginCaptor = ArgumentCaptor.forClass(Date.class);
            ArgumentCaptor<Date> endCaptor = ArgumentCaptor.forClass(Date.class);
            verify(alarmHistoryMapper).getHistoryAlarmList(beginCaptor.capture(), endCaptor.capture(), anyList(), any());
            assertTrue(beginCaptor.getValue().before(endCaptor.getValue())
                    || beginCaptor.getValue().equals(endCaptor.getValue())
                    || endCaptor.getValue().after(beginCaptor.getValue()));
            assertNotNull(beginCaptor.getValue());
            assertNotNull(endCaptor.getValue());
        }

        @Test
        @DisplayName("ALL 模式下过滤后无指标时返回空分页")
        void testPage_allHierarchy_noMatchedIndex_returnsEmpty() {
            JkHistoryAlarm query = new JkHistoryAlarm();
            query.setEierarchyFlag("ALL");
            query.setNodeId("ROOT");
            query.setIndexName("不存在的指标");

            ModelNode node = new ModelNode();
            node.setModelCode("YSCJMX");
            node.setAddress("A,");
            when(modelNodeMapper.selectModelNodeById("ROOT")).thenReturn(node);
            ModelNodePointInfo info = new ModelNodePointInfo();
            info.setIndexId("I1");
            info.setIndexName("电流");
            when(modelNodeMapper.getAllModelNodeIndexByAddress(any(), any()))
                    .thenReturn(Collections.singletonList(info));

            Page<JkHistoryAlarm> page = alarmHistoryService.selectHistoryAlarmPageList(query);

            assertNotNull(page);
            verify(alarmHistoryMapper, never()).getHistoryAlarmList(any(), any(), anyList(), any());
        }
    }
}
