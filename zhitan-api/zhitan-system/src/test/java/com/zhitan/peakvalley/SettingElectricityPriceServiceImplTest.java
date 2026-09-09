package com.zhitan.peakvalley;

import com.zhitan.peakvalley.domain.SettingElectricityPrice;
import com.zhitan.peakvalley.mapper.SettingElectricityPriceMapper;
import com.zhitan.peakvalley.service.impl.SettingElectricityPriceServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * SettingElectricityPriceServiceImpl 尖峰平谷电价明细配置单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("SettingElectricityPriceServiceImpl 电价明细配置测试")
class SettingElectricityPriceServiceImplTest {

    @Mock
    private SettingElectricityPriceMapper settingElectricityPriceMapper;

    private SettingElectricityPriceServiceImpl service;

    @BeforeEach
    void setUp() {
        service = spy(new SettingElectricityPriceServiceImpl(settingElectricityPriceMapper));
    }

    private Date at(String hhmmss) throws Exception {
        return new SimpleDateFormat("HH:mm:ss").parse(hhmmss);
    }

    private SettingElectricityPrice price(String parentId, String type, String start, String stop) throws Exception {
        SettingElectricityPrice p = new SettingElectricityPrice();
        p.setParentId(parentId);
        p.setType(type);
        p.setStartTime(at(start));
        p.setStopTime(at(stop));
        p.setEffecticityPrice(BigDecimal.ONE);
        return p;
    }

    @Nested
    @DisplayName("1. 基础 CRUD")
    class CrudTests {

        @Test
        @DisplayName("按 id 查询委托 Mapper")
        void testSelectById_delegates() {
            SettingElectricityPrice row = new SettingElectricityPrice();
            when(settingElectricityPriceMapper.selectElectricityPriceById("P1")).thenReturn(row);

            assertSame(row, service.selectElectricityPriceById("P1"));
            verify(settingElectricityPriceMapper).selectElectricityPriceById("P1");
        }

        @Test
        @DisplayName("parentId 为空时列表查询抛异常")
        void testSelectList_blankParentId_throws() {
            SettingElectricityPrice query = new SettingElectricityPrice();
            query.setParentId("");

            RuntimeException ex = assertThrows(RuntimeException.class,
                    () -> service.selectElectricityPriceList(query));
            assertEquals("父级id不能为空", ex.getMessage());
            verify(settingElectricityPriceMapper, never()).selectElectricityPriceList(any());
        }

        @Test
        @DisplayName("parentId 有效时委托 Mapper")
        void testSelectList_validParentId_delegates() {
            SettingElectricityPrice query = new SettingElectricityPrice();
            query.setParentId("DATE1");
            when(settingElectricityPriceMapper.selectElectricityPriceList(query))
                    .thenReturn(Collections.singletonList(new SettingElectricityPrice()));

            assertEquals(1, service.selectElectricityPriceList(query).size());
        }

        @Test
        @DisplayName("新增写入 createTime 并委托 Mapper")
        void testInsert_setsCreateTime() {
            SettingElectricityPrice row = new SettingElectricityPrice();
            when(settingElectricityPriceMapper.insertElectricityPrice(row)).thenReturn(1);

            assertEquals(1, service.insertElectricityPrice(row));
            assertNotNull(row.getCreateTime());
        }

        @Test
        @DisplayName("修改写入 updateTime 并委托 Mapper")
        void testUpdate_setsUpdateTime() {
            SettingElectricityPrice row = new SettingElectricityPrice();
            when(settingElectricityPriceMapper.updateElectricityPrice(row)).thenReturn(1);

            assertEquals(1, service.updateElectricityPrice(row));
            assertNotNull(row.getUpdateTime());
        }

        @Test
        @DisplayName("删除委托 Mapper")
        void testDelete_delegates() {
            when(settingElectricityPriceMapper.deleteElectricityPriceByIds(any())).thenReturn(2);
            when(settingElectricityPriceMapper.deleteElectricityPriceById("P1")).thenReturn(1);

            assertEquals(2, service.deleteElectricityPriceByIds(new String[]{"P1", "P2"}));
            assertEquals(1, service.deleteElectricityPriceById("P1"));
        }
    }

    @Nested
    @DisplayName("2. checkIntersection 时段交叉校验")
    class IntersectionTests {

        @Test
        @DisplayName("无交叉返回 false")
        void testCheckIntersection_noOverlap() throws Exception {
            List<SettingElectricityPrice> list = Arrays.asList(
                    price("D1", "尖", "00:00:00", "06:00:00"),
                    price("D1", "峰", "06:00:00", "12:00:00")
            );
            assertFalse(SettingElectricityPriceServiceImpl.checkIntersection(list));
        }

        @Test
        @DisplayName("存在交叉返回 true")
        void testCheckIntersection_overlap() throws Exception {
            List<SettingElectricityPrice> list = Arrays.asList(
                    price("D1", "尖", "00:00:00", "08:00:00"),
                    price("D1", "峰", "06:00:00", "12:00:00")
            );
            assertTrue(SettingElectricityPriceServiceImpl.checkIntersection(list));
        }

        @Test
        @DisplayName("单条时段无交叉")
        void testCheckIntersection_single() throws Exception {
            assertFalse(SettingElectricityPriceServiceImpl.checkIntersection(
                    Collections.singletonList(price("D1", "平", "08:00:00", "18:00:00"))));
        }
    }

    @Nested
    @DisplayName("3. saveList 批量保存校验")
    class SaveListTests {

        @Test
        @DisplayName("空列表抛异常")
        void testSaveList_empty_throws() {
            RuntimeException ex = assertThrows(RuntimeException.class,
                    () -> service.saveList(Collections.emptyList()));
            assertEquals("价格明细不能为空！", ex.getMessage());
        }

        @Test
        @DisplayName("时段重叠抛异常")
        void testSaveList_overlap_throws() throws Exception {
            List<SettingElectricityPrice> list = Arrays.asList(
                    price("D1", "尖", "00:00:00", "08:00:00"),
                    price("D1", "峰", "06:00:00", "12:00:00")
            );

            RuntimeException ex = assertThrows(RuntimeException.class, () -> service.saveList(list));
            assertEquals("时间段存在重叠，请检查！", ex.getMessage());
        }

        @Test
        @DisplayName("未覆盖 24 小时抛异常")
        void testSaveList_notCover24Hours_throws() throws Exception {
            List<SettingElectricityPrice> list = Arrays.asList(
                    price("D1", "尖", "00:00:00", "06:00:00"),
                    price("D1", "峰", "06:00:00", "12:00:00")
            );

            RuntimeException ex = assertThrows(RuntimeException.class, () -> service.saveList(list));
            assertEquals("时间没有覆盖24小时", ex.getMessage());
        }

        @Test
        @DisplayName("覆盖 24 小时时先删旧明细再批量保存")
        void testSaveList_valid_replacesAndSaves() throws Exception {
            List<SettingElectricityPrice> list = new ArrayList<>();
            list.add(price("D1", "谷", "00:00:00", "06:00:00"));
            list.add(price("D1", "尖", "06:00:00", "12:00:00"));
            list.add(price("D1", "峰", "12:00:00", "16:00:00"));
            list.add(price("D1", "平", "16:00:00", "20:30:00"));
            list.add(price("D1", "峰", "20:30:00", "00:00:00"));

            when(settingElectricityPriceMapper.selectCount(any())).thenReturn(3L);
            when(settingElectricityPriceMapper.delete(any())).thenReturn(3);
            doReturn(true).when(service).saveBatch(anyCollection());

            assertDoesNotThrow(() -> service.saveList(list));
            verify(settingElectricityPriceMapper).delete(any());
            verify(service).saveBatch(anyCollection());
        }

        @Test
        @DisplayName("无旧明细时跳过删除直接保存")
        void testSaveList_noExisting_skipsDelete() throws Exception {
            List<SettingElectricityPrice> list = new ArrayList<>();
            list.add(price("D1", "谷", "00:00:00", "06:00:00"));
            list.add(price("D1", "尖", "06:00:00", "12:00:00"));
            list.add(price("D1", "峰", "12:00:00", "16:00:00"));
            list.add(price("D1", "平", "16:00:00", "20:30:00"));
            list.add(price("D1", "峰", "20:30:00", "00:00:00"));

            when(settingElectricityPriceMapper.selectCount(any())).thenReturn(0L);
            doReturn(true).when(service).saveBatch(anyCollection());

            assertDoesNotThrow(() -> service.saveList(list));
            verify(settingElectricityPriceMapper, never()).delete(any());
            verify(service).saveBatch(anyCollection());
        }
    }
}
