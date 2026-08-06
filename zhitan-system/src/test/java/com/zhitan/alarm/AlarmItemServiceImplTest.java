package com.zhitan.alarm;

import com.zhitan.alarm.domain.entity.AlarmItem;
import com.zhitan.alarm.mapper.AlarmItemMapper;
import com.zhitan.alarm.services.impl.AlarmItemServiceImpl;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * AlarmItemServiceImpl 预报警设置服务单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("AlarmItemServiceImpl 预报警设置测试")
class AlarmItemServiceImplTest {

    @Mock
    private AlarmItemMapper alarmItemMapper;

    @InjectMocks
    private AlarmItemServiceImpl alarmItemService;

    private Map<String, Object> limitRow(String pointId, String limitVal, String timeSlot, String limitType) {
        Map<String, Object> map = new HashMap<>();
        map.put("pointId", pointId);
        map.put("limitVal", limitVal);
        map.put("timeSlotVal", timeSlot);
        map.put("limitTypeVal", limitType);
        return map;
    }

    @Nested
    @DisplayName("1. 基础 CRUD 委托")
    class CrudTests {

        @Test
        @DisplayName("查询列表委托 Mapper")
        void testSelectList_delegates() {
            AlarmItem query = new AlarmItem();
            when(alarmItemMapper.selectAlarmItemList(query)).thenReturn(Collections.singletonList(new AlarmItem()));

            List<AlarmItem> result = alarmItemService.selectAlarmItemList(query);

            assertEquals(1, result.size());
            verify(alarmItemMapper).selectAlarmItemList(query);
        }

        @Test
        @DisplayName("更新时写入 updateTime 并委托 Mapper")
        void testUpdate_setsUpdateTime() {
            AlarmItem item = new AlarmItem();
            when(alarmItemMapper.updateAlarmItem(item)).thenReturn(1);

            assertEquals(1, alarmItemService.updateAlarmItem(item));
            assertNotNull(item.getUpdateTime());
            verify(alarmItemMapper).updateAlarmItem(item);
        }

        @Test
        @DisplayName("按 id 删除委托 Mapper")
        void testDeleteById_delegates() {
            when(alarmItemMapper.deleteAlarmItemById("A1")).thenReturn(1);
            assertEquals(1, alarmItemService.deleteAlarmItemById("A1"));
        }

        @Test
        @DisplayName("按 id 查询设置明细委托 Mapper")
        void testSelectSettingById_delegates() {
            when(alarmItemMapper.selectAlarmItemtingById("A1"))
                    .thenReturn(Collections.singletonList(new AlarmItem()));
            assertEquals(1, alarmItemService.selectAlarmItemtingById("A1").size());
        }

        @Test
        @DisplayName("启停更新与查询委托 Mapper")
        void testStartStop_delegates() {
            String[] ids = {"A1", "A2"};
            when(alarmItemMapper.updateStartStop(ids, "1", "admin")).thenReturn(2);
            when(alarmItemMapper.getStartStop("P1")).thenReturn("1");

            assertEquals(2, alarmItemService.updateStartStop(ids, "1", "admin"));
            assertEquals("1", alarmItemService.getStartStop("P1"));
        }

        @Test
        @DisplayName("查询全部预报警项委托 Mapper")
        void testGetAll_delegates() {
            when(alarmItemMapper.getAllAlarmItem()).thenReturn(Collections.emptyList());
            assertTrue(alarmItemService.getAllAlarmItem().isEmpty());
        }
    }

    @Nested
    @DisplayName("2. updateLimitVal 限值维护")
    class UpdateLimitValTests {

        @Test
        @DisplayName("全部限值为空且库中已有记录时删除全部限值")
        void testUpdateLimitVal_allEmpty_deletesExisting() {
            List<Map<String, Object>> data = new ArrayList<>();
            data.add(limitRow("P1", "", "peak", "upper"));
            data.add(limitRow("P1", "  ", "valley", "lower"));
            when(alarmItemMapper.selectCountById("P1")).thenReturn(2);
            when(alarmItemMapper.deleteAllLimitVal("P1")).thenReturn(2);

            int result = alarmItemService.updateLimitVal(data, "admin");

            assertEquals(2, result);
            assertTrue(data.isEmpty());
            verify(alarmItemMapper).deleteAllLimitVal("P1");
            verify(alarmItemMapper, never()).updateLimitValNoDel(any(), any(), any());
        }

        @Test
        @DisplayName("全部限值为空且库中无记录时直接返回成功")
        void testUpdateLimitVal_allEmpty_noExisting_returnsOne() {
            List<Map<String, Object>> data = new ArrayList<>();
            data.add(limitRow("P1", "", "peak", "upper"));
            when(alarmItemMapper.selectCountById("P1")).thenReturn(0);

            assertEquals(1, alarmItemService.updateLimitVal(data, "admin"));
            verify(alarmItemMapper, never()).deleteAllLimitVal(any());
        }

        @Test
        @DisplayName("有有效限值且库中已有记录时先删后插，并生成 alarmCode")
        void testUpdateLimitVal_withValues_replaceExisting() {
            List<Map<String, Object>> data = new ArrayList<>();
            data.add(limitRow("P1", "100", "peak", "upper"));
            when(alarmItemMapper.selectCountById("P1")).thenReturn(1);
            when(alarmItemMapper.deleteAllLimitVal("P1")).thenReturn(1);
            when(alarmItemMapper.updateLimitValNoDel(anyList(), eq("P1"), eq("admin"))).thenReturn(1);

            int result = alarmItemService.updateLimitVal(data, "admin");

            assertEquals(1, result);
            assertEquals("P1:peak:upper", data.get(0).get("alarmCode"));
            assertNotNull(data.get(0).get("id"));
            verify(alarmItemMapper).deleteAllLimitVal("P1");
            verify(alarmItemMapper).updateLimitValNoDel(data, "P1", "admin");
        }

        @Test
        @DisplayName("有有效限值且库中无记录时直接插入")
        void testUpdateLimitVal_withValues_insertOnly() {
            List<Map<String, Object>> data = new ArrayList<>();
            data.add(limitRow("P2", "50", "flat", "upper"));
            when(alarmItemMapper.selectCountById("P2")).thenReturn(0);
            when(alarmItemMapper.updateLimitValNoDel(anyList(), eq("P2"), eq("admin"))).thenReturn(1);

            assertEquals(1, alarmItemService.updateLimitVal(data, "admin"));
            verify(alarmItemMapper, never()).deleteAllLimitVal(any());
            verify(alarmItemMapper).updateLimitValNoDel(data, "P2", "admin");
        }

        @Test
        @DisplayName("混合空值与有效值时过滤空限值后再保存")
        void testUpdateLimitVal_filtersEmptyRows() {
            List<Map<String, Object>> data = new ArrayList<>();
            data.add(limitRow("P1", "", "peak", "upper"));
            data.add(limitRow("P1", "80", "valley", "lower"));
            when(alarmItemMapper.selectCountById("P1")).thenReturn(0);
            when(alarmItemMapper.updateLimitValNoDel(anyList(), eq("P1"), eq("admin"))).thenReturn(1);

            alarmItemService.updateLimitVal(data, "admin");

            ArgumentCaptor<List> captor = ArgumentCaptor.forClass(List.class);
            verify(alarmItemMapper).updateLimitValNoDel(captor.capture(), eq("P1"), eq("admin"));
            assertEquals(1, captor.getValue().size());
            Map row = (Map) captor.getValue().get(0);
            assertEquals("P1:valley:lower", row.get("alarmCode"));
        }
    }

    @Nested
    @DisplayName("3. getSettingCount")
    class SettingCountTests {

        @Test
        @DisplayName("按 id 数组返回各点位已配置限值数量，无配置记为 0")
        void testGetSettingCount_mapsCounts() {
            when(alarmItemMapper.getSettingCount("A")).thenReturn(3);
            when(alarmItemMapper.getSettingCount("B")).thenReturn(0);

            ArrayList result = alarmItemService.getSettingCount(new String[]{"A", "B"});

            assertEquals(2, result.size());
            assertEquals(3, result.get(0));
            assertEquals(0, result.get(1));
        }
    }
}
