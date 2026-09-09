package com.zhitan.peakvalley;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.common.exception.ServiceException;
import com.zhitan.peakvalley.domain.SettingElectricityPriceDate;
import com.zhitan.peakvalley.mapper.SettingElectricityPriceDateMapper;
import com.zhitan.peakvalley.mapper.SettingElectricityPriceMapper;
import com.zhitan.peakvalley.service.impl.SettingElectricityPriceDateServiceImpl;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * SettingElectricityPriceDateServiceImpl 尖峰平谷电价生效时间段单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("SettingElectricityPriceDateServiceImpl 电价生效期测试")
class SettingElectricityPriceDateServiceImplTest {

    @Mock
    private SettingElectricityPriceDateMapper settingElectricityPriceDateMapper;

    @Mock
    private SettingElectricityPriceMapper settingElectricityPriceMapper;

    @InjectMocks
    private SettingElectricityPriceDateServiceImpl service;

    private Date day(String ymd) throws Exception {
        return new SimpleDateFormat("yyyy-MM-dd").parse(ymd);
    }

    private SettingElectricityPriceDate range(String begin, String end) throws Exception {
        SettingElectricityPriceDate date = new SettingElectricityPriceDate();
        date.setBeginDate(day(begin));
        date.setEndDate(day(end));
        date.setRemark("夏季电价");
        return date;
    }

    @Nested
    @DisplayName("1. 基础 CRUD")
    class CrudTests {

        @Test
        @DisplayName("按 id 查询委托 Mapper")
        void testSelectById_delegates() {
            SettingElectricityPriceDate row = new SettingElectricityPriceDate();
            when(settingElectricityPriceDateMapper.selectElectricityPriceDateById("D1")).thenReturn(row);

            assertSame(row, service.selectElectricityPriceDateById("D1"));
        }

        @Test
        @DisplayName("列表查询委托 Mapper")
        void testSelectList_delegates() {
            SettingElectricityPriceDate query = new SettingElectricityPriceDate();
            when(settingElectricityPriceDateMapper.selectElectricityPriceDateList(query))
                    .thenReturn(Collections.singletonList(new SettingElectricityPriceDate()));

            List<SettingElectricityPriceDate> result = service.selectElectricityPriceDateList(query);
            assertEquals(1, result.size());
        }

        @Test
        @DisplayName("删除委托 Mapper")
        void testDelete_delegates() {
            when(settingElectricityPriceDateMapper.deleteElectricityPriceDateByIds(any())).thenReturn(2);
            when(settingElectricityPriceDateMapper.deleteElectricityPriceDateById("D1")).thenReturn(1);

            assertEquals(2, service.deleteElectricityPriceDateByIds(new String[]{"D1", "D2"}));
            assertEquals(1, service.deleteElectricityPriceDateById("D1"));
        }
    }

    @Nested
    @DisplayName("2. 新增/修改日期交集校验")
    class OverlapTests {

        @Test
        @DisplayName("新增无交集时写入 id、createTime 并保存")
        void testInsert_noOverlap_saves() throws Exception {
            SettingElectricityPriceDate date = range("2024-06-01", "2024-08-31");
            when(settingElectricityPriceDateMapper.exists(any())).thenReturn(false);
            when(settingElectricityPriceDateMapper.insertElectricityPriceDate(date)).thenReturn(1);

            assertEquals(1, service.insertElectricityPriceDate(date));
            assertNotNull(date.getId());
            assertNotNull(date.getCreateTime());
            verify(settingElectricityPriceDateMapper).insertElectricityPriceDate(date);
        }

        @Test
        @DisplayName("新增存在交集抛 ServiceException")
        void testInsert_overlap_throws() throws Exception {
            SettingElectricityPriceDate date = range("2024-06-01", "2024-08-31");
            when(settingElectricityPriceDateMapper.exists(any())).thenReturn(true);

            ServiceException ex = assertThrows(ServiceException.class,
                    () -> service.insertElectricityPriceDate(date));
            assertEquals("时间段存在交集，无法保存", ex.getMessage());
            verify(settingElectricityPriceDateMapper, never()).insertElectricityPriceDate(any());
        }

        @Test
        @DisplayName("修改无交集时写入 updateTime 并保存")
        void testUpdate_noOverlap_saves() throws Exception {
            SettingElectricityPriceDate date = range("2024-09-01", "2024-10-31");
            date.setId("D1");
            when(settingElectricityPriceDateMapper.exists(any())).thenReturn(false);
            when(settingElectricityPriceDateMapper.updateElectricityPriceDate(date)).thenReturn(1);

            assertEquals(1, service.updateElectricityPriceDate(date));
            assertNotNull(date.getUpdateTime());
        }

        @Test
        @DisplayName("修改存在交集抛 ServiceException")
        void testUpdate_overlap_throws() throws Exception {
            SettingElectricityPriceDate date = range("2024-09-01", "2024-10-31");
            date.setId("D1");
            when(settingElectricityPriceDateMapper.exists(any())).thenReturn(true);

            ServiceException ex = assertThrows(ServiceException.class,
                    () -> service.updateElectricityPriceDate(date));
            assertEquals("时间段存在交集，无法保存", ex.getMessage());
            verify(settingElectricityPriceDateMapper, never()).updateElectricityPriceDate(any());
        }
    }

    @Nested
    @DisplayName("3. 分页查询")
    class PageTests {

        @Test
        @DisplayName("分页查询委托 Mapper selectPage")
        void testSelectPage_delegates() {
            SettingElectricityPriceDate query = new SettingElectricityPriceDate();
            query.setRemark("夏");
            Page<SettingElectricityPriceDate> page = new Page<>(1, 10);
            page.setRecords(Collections.singletonList(new SettingElectricityPriceDate()));
            when(settingElectricityPriceDateMapper.selectPage(any(Page.class), any())).thenReturn(page);

            Page<SettingElectricityPriceDate> result = service.selectElectricityPriceDatePage(query, 1L, 10L);

            assertEquals(1, result.getRecords().size());
            verify(settingElectricityPriceDateMapper).selectPage(any(Page.class), any());
        }

        @Test
        @DisplayName("备注为空时仍可分页查询")
        void testSelectPage_blankRemark() {
            SettingElectricityPriceDate query = new SettingElectricityPriceDate();
            Page<SettingElectricityPriceDate> page = new Page<>(1, 5);
            when(settingElectricityPriceDateMapper.selectPage(any(Page.class), any())).thenReturn(page);

            Page<SettingElectricityPriceDate> result = service.selectElectricityPriceDatePage(query, 1L, 5L);
            assertNotNull(result);
        }
    }
}
