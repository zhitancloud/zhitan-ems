package com.zhitan.costmanagement;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.costmanagement.domain.CostPriceTactics;
import com.zhitan.costmanagement.domain.CostPriceTacticsItem;
import com.zhitan.costmanagement.domain.vo.CostPriceTacticsVo;
import com.zhitan.costmanagement.mapper.CostPriceTacticsItemMapper;
import com.zhitan.costmanagement.mapper.CostPriceTacticsMapper;
import com.zhitan.costmanagement.service.impl.CostPriceTacticsServiceImpl;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * CostPriceTacticsServiceImpl 成本策略服务单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("CostPriceTacticsServiceImpl 成本策略测试")
class CostPriceTacticsServiceImplTest {

    @Mock
    private CostPriceTacticsMapper costPriceTacticsMapper;

    @Mock
    private CostPriceTacticsItemMapper costPriceTacticsItemMapper;

    @InjectMocks
    private CostPriceTacticsServiceImpl service;

    private CostPriceTactics tactics(String id, String number, String name) {
        CostPriceTactics t = new CostPriceTactics();
        t.setId(id);
        t.setTacticsNumber(number);
        t.setTacticsName(name);
        t.setType("0");
        t.setEnergyType(1);
        return t;
    }

    private CostPriceTacticsItem item(String id, String tacticsId, String price) {
        CostPriceTacticsItem i = new CostPriceTacticsItem();
        i.setId(id);
        i.setTacticsId(tacticsId);
        i.setPrice(new BigDecimal(price));
        i.setElectricityType("FLAT");
        return i;
    }

    private CostPriceTacticsVo vo(String number, String name, List<CostPriceTacticsItem> items) {
        CostPriceTacticsVo vo = new CostPriceTacticsVo();
        vo.setTacticsNumber(number);
        vo.setTacticsName(name);
        vo.setType("0");
        vo.setEnergyType(1);
        vo.setCreateBy("admin");
        vo.setItemList(items);
        return vo;
    }

    @Nested
    @DisplayName("1. 查询")
    class QueryTests {

        @Test
        @DisplayName("按 id 查询时附带策略明细")
        void testSelectById_withItems() {
            when(costPriceTacticsMapper.selectCostPriceTacticsById("T1"))
                    .thenReturn(tactics("T1", "SN001", "峰谷策略"));
            when(costPriceTacticsItemMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(item("I1", "T1", "0.8")));

            CostPriceTactics result = service.selectCostPriceTacticsById("T1");

            assertTrue(result instanceof CostPriceTacticsVo);
            CostPriceTacticsVo vo = (CostPriceTacticsVo) result;
            assertEquals("SN001", vo.getTacticsNumber());
            assertEquals(1, vo.getItemList().size());
            assertEquals(0, vo.getItemList().get(0).getPrice().compareTo(new BigDecimal("0.8")));
        }

        @Test
        @DisplayName("策略不存在时仍查询明细并返回空 Vo")
        void testSelectById_nullMain_returnsEmptyVoWithItems() {
            when(costPriceTacticsMapper.selectCostPriceTacticsById("NONE")).thenReturn(null);
            when(costPriceTacticsItemMapper.selectList(any())).thenReturn(Collections.emptyList());

            CostPriceTactics result = service.selectCostPriceTacticsById("NONE");

            assertTrue(result instanceof CostPriceTacticsVo);
            assertNull(result.getId());
            assertTrue(((CostPriceTacticsVo) result).getItemList().isEmpty());
        }

        @Test
        @DisplayName("分页列表为每条策略填充明细")
        void testSelectList_fillsItems() {
            CostPriceTactics row = tactics("T1", "SN001", "策略A");
            Page<CostPriceTactics> page = new Page<>(1, 10);
            page.setRecords(Collections.singletonList(row));
            when(costPriceTacticsMapper.selectPage(any(Page.class), any())).thenReturn(page);
            when(costPriceTacticsItemMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(item("I1", "T1", "1.2")));

            Page<CostPriceTacticsVo> result = service.selectCostPriceTacticsList(new CostPriceTactics(), 1L, 10L);

            assertEquals(1, result.getRecords().size());
            assertEquals("策略A", result.getRecords().get(0).getTacticsName());
            assertEquals(1, result.getRecords().get(0).getItemList().size());
        }

        @Test
        @DisplayName("分页空结果返回空 records")
        void testSelectList_empty() {
            Page<CostPriceTactics> page = new Page<>(1, 10);
            page.setRecords(Collections.emptyList());
            when(costPriceTacticsMapper.selectPage(any(Page.class), any())).thenReturn(page);

            Page<CostPriceTacticsVo> result = service.selectCostPriceTacticsList(new CostPriceTactics(), 1L, 10L);

            assertTrue(result.getRecords().isEmpty());
            verify(costPriceTacticsItemMapper, never()).selectList(any());
        }

        @Test
        @DisplayName("查询全部策略委托 Mapper")
        void testSelectListAll_delegates() {
            when(costPriceTacticsMapper.selectCostPriceTacticsListAll())
                    .thenReturn(Collections.singletonList(new CostPriceTacticsVo()));

            assertEquals(1, service.selectCostPriceTacticsListAll().size());
        }
    }

    @Nested
    @DisplayName("2. 新增")
    class InsertTests {

        @Test
        @DisplayName("策略编码已存在时抛异常")
        void testInsert_duplicateNumber_throws() {
            CostPriceTacticsVo vo = vo("SN001", "重复", new ArrayList<>());
            when(costPriceTacticsMapper.selectOne(any())).thenReturn(tactics("T0", "SN001", "旧"));

            Exception ex = assertThrows(Exception.class, () -> service.insertCostPriceTactics(vo));
            assertEquals("该策略编码已存在！", ex.getMessage());
            verify(costPriceTacticsMapper, never()).insert(any());
        }

        @Test
        @DisplayName("新增成功时生成 id、createTime 并写入主表与明细")
        void testInsert_success_savesMainAndItems() throws Exception {
            List<CostPriceTacticsItem> items = new ArrayList<>();
            items.add(item(null, null, "0.5"));
            items.add(item(null, null, "0.9"));
            CostPriceTacticsVo vo = vo("SN002", "新策略", items);

            when(costPriceTacticsMapper.selectOne(any())).thenReturn(null);
            when(costPriceTacticsMapper.insert(any(CostPriceTactics.class))).thenReturn(1);
            when(costPriceTacticsItemMapper.insert(any(CostPriceTacticsItem.class))).thenReturn(1);

            assertEquals(1, service.insertCostPriceTactics(vo));
            assertNotNull(vo.getId());
            assertNotNull(vo.getCreateTime());

            ArgumentCaptor<CostPriceTacticsItem> itemCaptor = ArgumentCaptor.forClass(CostPriceTacticsItem.class);
            verify(costPriceTacticsItemMapper, times(2)).insert(itemCaptor.capture());
            for (CostPriceTacticsItem saved : itemCaptor.getAllValues()) {
                assertEquals(vo.getId(), saved.getTacticsId());
                assertNotNull(saved.getId());
                assertEquals("admin", saved.getCreateBy());
            }
        }

        @Test
        @DisplayName("明细列表为空时只插入主表")
        void testInsert_emptyItems_onlyMain() throws Exception {
            CostPriceTacticsVo vo = vo("SN003", "无明细", new ArrayList<>());
            when(costPriceTacticsMapper.selectOne(any())).thenReturn(null);
            when(costPriceTacticsMapper.insert(any(CostPriceTactics.class))).thenReturn(1);

            assertEquals(1, service.insertCostPriceTactics(vo));
            verify(costPriceTacticsItemMapper, never()).insert(any());
        }
    }

    @Nested
    @DisplayName("3. 修改")
    class UpdateTests {

        @Test
        @DisplayName("修改时写入 updateTime，先删旧明细再插新明细")
        void testUpdate_replacesItems() {
            CostPriceTacticsVo vo = vo("SN001", "更新策略",
                    Collections.singletonList(item(null, null, "1.5")));
            vo.setId("T1");

            when(costPriceTacticsMapper.updateCostPriceTactics(any())).thenReturn(1);
            when(costPriceTacticsItemMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(item("OLD1", "T1", "0.1")));
            when(costPriceTacticsItemMapper.deleteCostPriceTacticsItemByIds(any())).thenReturn(1);
            when(costPriceTacticsItemMapper.insert(any(CostPriceTacticsItem.class))).thenReturn(1);

            assertEquals(1, service.updateCostPriceTactics(vo));
            assertNotNull(vo.getUpdateTime());

            ArgumentCaptor<String[]> idsCaptor = ArgumentCaptor.forClass(String[].class);
            verify(costPriceTacticsItemMapper).deleteCostPriceTacticsItemByIds(idsCaptor.capture());
            assertArrayEquals(new String[]{"OLD1"}, idsCaptor.getValue());

            ArgumentCaptor<CostPriceTacticsItem> itemCaptor = ArgumentCaptor.forClass(CostPriceTacticsItem.class);
            verify(costPriceTacticsItemMapper).insert(itemCaptor.capture());
            assertEquals("T1", itemCaptor.getValue().getTacticsId());
        }

        @Test
        @DisplayName("无旧明细时仍按空数组调用删除后再插入")
        void testUpdate_noOldItems() {
            CostPriceTacticsVo vo = vo("SN001", "更新",
                    Collections.singletonList(item(null, null, "2.0")));
            vo.setId("T1");
            when(costPriceTacticsMapper.updateCostPriceTactics(any())).thenReturn(1);
            when(costPriceTacticsItemMapper.selectList(any())).thenReturn(Collections.emptyList());
            when(costPriceTacticsItemMapper.deleteCostPriceTacticsItemByIds(any())).thenReturn(0);
            when(costPriceTacticsItemMapper.insert(any(CostPriceTacticsItem.class))).thenReturn(1);

            assertEquals(1, service.updateCostPriceTactics(vo));
            verify(costPriceTacticsItemMapper).deleteCostPriceTacticsItemByIds(argThat(arr -> arr.length == 0));
        }
    }

    @Nested
    @DisplayName("4. 删除")
    class DeleteTests {

        @Test
        @DisplayName("按 id 删除时先删明细再删主表")
        void testDeleteById() {
            when(costPriceTacticsItemMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(item("I1", "T1", "1")));
            when(costPriceTacticsItemMapper.deleteCostPriceTacticsItemByIds(any())).thenReturn(1);
            when(costPriceTacticsMapper.deleteCostPriceTacticsById("T1")).thenReturn(1);

            assertEquals(1, service.deleteCostPriceTacticsById("T1"));
            verify(costPriceTacticsItemMapper).deleteCostPriceTacticsItemByIds(new String[]{"I1"});
            verify(costPriceTacticsMapper).deleteCostPriceTacticsById("T1");
        }

        @Test
        @DisplayName("批量删除时逐个清理明细后删主表")
        void testDeleteByIds() {
            when(costPriceTacticsItemMapper.selectList(any()))
                    .thenReturn(Collections.singletonList(item("I1", "T1", "1")))
                    .thenReturn(Collections.emptyList());
            when(costPriceTacticsItemMapper.deleteCostPriceTacticsItemByIds(any())).thenReturn(1).thenReturn(0);
            when(costPriceTacticsMapper.deleteCostPriceTacticsByIds(any())).thenReturn(2);

            assertEquals(2, service.deleteCostPriceTacticsByIds(new String[]{"T1", "T2"}));
            verify(costPriceTacticsItemMapper, times(2)).deleteCostPriceTacticsItemByIds(any());
            verify(costPriceTacticsMapper).deleteCostPriceTacticsByIds(new String[]{"T1", "T2"});
        }
    }
}
