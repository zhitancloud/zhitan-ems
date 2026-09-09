package com.zhitan.alarm;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.alarm.domain.AlarmLimitType;
import com.zhitan.alarm.mapper.AlarmLimitTypeMapper;
import com.zhitan.alarm.services.impl.AlarmLimitTypeServiceImpl;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * AlarmLimitTypeServiceImpl 报警限值类型服务单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("AlarmLimitTypeServiceImpl 限值类型测试")
class AlarmLimitTypeServiceImplTest {

    @Mock
    private AlarmLimitTypeMapper alarmLimitTypeMapper;

    @InjectMocks
    private AlarmLimitTypeServiceImpl alarmLimitTypeService;

    private AlarmLimitType type(String id, String code, String name) {
        AlarmLimitType t = new AlarmLimitType();
        t.setId(id);
        t.setLimitCode(code);
        t.setLimitName(name);
        return t;
    }

    @Nested
    @DisplayName("1. 新增")
    class InsertTests {

        @Test
        @DisplayName("编码不重复时生成 id、创建时间并插入")
        void testInsert_success() {
            AlarmLimitType entity = type(null, "UPPER", "上限");
            when(alarmLimitTypeMapper.selectCount(any())).thenReturn(0L);
            when(alarmLimitTypeMapper.insertLimitType(entity)).thenReturn(1);

            assertEquals(1, alarmLimitTypeService.insertAlarmLimitType(entity));
            assertNotNull(entity.getId());
            assertNotNull(entity.getCreateTime());
            verify(alarmLimitTypeMapper).insertLimitType(entity);
        }

        @Test
        @DisplayName("编码重复时抛出 RuntimeException")
        void testInsert_duplicateCode_throws() {
            AlarmLimitType entity = type(null, "UPPER", "上限");
            when(alarmLimitTypeMapper.selectCount(any())).thenReturn(1L);

            RuntimeException ex = assertThrows(RuntimeException.class,
                    () -> alarmLimitTypeService.insertAlarmLimitType(entity));
            assertTrue(ex.getMessage().contains("不能重复"));
            verify(alarmLimitTypeMapper, never()).insertLimitType(any());
        }
    }

    @Nested
    @DisplayName("2. 修改与查询删除")
    class UpdateQueryDeleteTests {

        @Test
        @DisplayName("编码不冲突时更新并写入 updateTime")
        void testUpdate_success_sameCodeSameId() {
            AlarmLimitType entity = type("ID1", "UPPER", "上限");
            when(alarmLimitTypeMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(type("ID1", "UPPER", "旧名")));
            when(alarmLimitTypeMapper.updateLimitType(entity)).thenReturn(1);

            assertEquals(1, alarmLimitTypeService.updateAlarmLimitType(entity));
            assertNotNull(entity.getUpdateTime());
        }

        @Test
        @DisplayName("编码被其他记录占用时抛出异常")
        void testUpdate_duplicateCodeDifferentId_throws() {
            AlarmLimitType entity = type("ID2", "UPPER", "上限");
            when(alarmLimitTypeMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(type("ID1", "UPPER", "已存在")));

            RuntimeException ex = assertThrows(RuntimeException.class,
                    () -> alarmLimitTypeService.updateAlarmLimitType(entity));
            assertTrue(ex.getMessage().contains("不能重复"));
            verify(alarmLimitTypeMapper, never()).updateLimitType(any());
        }

        @Test
        @DisplayName("编码无冲突（库中无同编码）时可更新")
        void testUpdate_noConflict_success() {
            AlarmLimitType entity = type("ID1", "LOWER", "下限");
            when(alarmLimitTypeMapper.selectList(any())).thenReturn(Collections.emptyList());
            when(alarmLimitTypeMapper.updateLimitType(entity)).thenReturn(1);

            assertEquals(1, alarmLimitTypeService.updateAlarmLimitType(entity));
        }

        @Test
        @DisplayName("列表查询、按 id 查询、批量删除委托 Mapper")
        void testQueryAndDelete_delegates() {
            AlarmLimitType query = type(null, null, "上限");
            when(alarmLimitTypeMapper.selectLimitTypeList(query))
                    .thenReturn(Collections.singletonList(type("ID1", "UPPER", "上限")));
            when(alarmLimitTypeMapper.selectLimitTypeById("ID1")).thenReturn(type("ID1", "UPPER", "上限"));
            when(alarmLimitTypeMapper.deleteLimitTypeByIds(new String[]{"ID1"})).thenReturn(1);

            assertEquals(1, alarmLimitTypeService.selectAlarmLimitTypeList(query).size());
            assertEquals("UPPER", alarmLimitTypeService.selectAlarmLimitTypeById("ID1").getLimitCode());
            assertEquals(1, alarmLimitTypeService.deleteLimitTypeByIds(new String[]{"ID1"}));
        }

        @Test
        @DisplayName("分页查询按名称模糊条件调用 selectPage")
        void testSelectPage_delegates() {
            AlarmLimitType query = type(null, null, "上");
            Page<AlarmLimitType> page = new Page<>(1, 10);
            when(alarmLimitTypeMapper.selectPage(any(Page.class), any())).thenReturn(page);

            Page<AlarmLimitType> result = alarmLimitTypeService.selectAlarmLimitTypePage(query, 1L, 10L);

            assertSame(page, result);
            ArgumentCaptor<Page> pageCaptor = ArgumentCaptor.forClass(Page.class);
            verify(alarmLimitTypeMapper).selectPage(pageCaptor.capture(), any());
            assertEquals(1, pageCaptor.getValue().getCurrent());
            assertEquals(10, pageCaptor.getValue().getSize());
        }
    }
}
