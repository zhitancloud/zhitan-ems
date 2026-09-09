package com.zhitan.costmanagement;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zhitan.costmanagement.domain.CostPriceRelevancy;
import com.zhitan.costmanagement.mapper.CostPriceRelevancyMapper;
import com.zhitan.costmanagement.service.impl.CostPriceRelevancyServiceImpl;
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

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

/**
 * CostPriceRelevancyServiceImpl 单价关联服务单元测试
 */
@ExtendWith(MockitoExtension.class)
@DisplayName("CostPriceRelevancyServiceImpl 单价关联测试")
class CostPriceRelevancyServiceImplTest {

    @Mock
    private CostPriceRelevancyMapper costPriceRelevancyMapper;

    @InjectMocks
    private CostPriceRelevancyServiceImpl service;

    private CostPriceRelevancy relevancy(String id, String nodeId, String tacticsId, Integer energyType) {
        CostPriceRelevancy r = new CostPriceRelevancy();
        r.setId(id);
        r.setNodeId(nodeId);
        r.setTacticsId(tacticsId);
        r.setEnergyType(energyType);
        r.setEffectiveBeginTime(new Date());
        r.setEffectiveEndTime(new Date());
        return r;
    }

    @Nested
    @DisplayName("1. 基础 CRUD")
    class CrudTests {

        @Test
        @DisplayName("按 id 查询委托 Mapper")
        void testSelectById_delegates() {
            CostPriceRelevancy row = relevancy("R1", "N1", "T1", 1);
            when(costPriceRelevancyMapper.selectCostPriceRelevancyById("R1")).thenReturn(row);

            assertSame(row, service.selectCostPriceRelevancyById("R1"));
        }

        @Test
        @DisplayName("新增写入 id、createTime 并委托 Mapper")
        void testInsert_setsIdAndCreateTime() {
            CostPriceRelevancy row = relevancy(null, "N1", "T1", 1);
            when(costPriceRelevancyMapper.insertCostPriceRelevancy(row)).thenReturn(1);

            assertEquals(1, service.insertCostPriceRelevancy(row));
            assertNotNull(row.getId());
            assertNotNull(row.getCreateTime());
            verify(costPriceRelevancyMapper).insertCostPriceRelevancy(row);
        }

        @Test
        @DisplayName("修改写入 updateTime 并委托 Mapper")
        void testUpdate_setsUpdateTime() {
            CostPriceRelevancy row = relevancy("R1", "N1", "T1", 1);
            when(costPriceRelevancyMapper.updateCostPriceRelevancy(row)).thenReturn(1);

            assertEquals(1, service.updateCostPriceRelevancy(row));
            assertNotNull(row.getUpdateTime());
        }

        @Test
        @DisplayName("按 id 删除委托 Mapper")
        void testDeleteById_delegates() {
            when(costPriceRelevancyMapper.deleteCostPriceRelevancyById("R1")).thenReturn(1);
            assertEquals(1, service.deleteCostPriceRelevancyById("R1"));
        }

        @Test
        @DisplayName("批量删除委托 Mapper")
        void testDeleteByIds_delegates() {
            String[] ids = {"R1", "R2"};
            when(costPriceRelevancyMapper.deleteCostPriceRelevancyByIds(ids)).thenReturn(2);
            assertEquals(2, service.deleteCostPriceRelevancyByIds(ids));
        }
    }

    @Nested
    @DisplayName("2. 分页查询条件")
    class PageTests {

        @Test
        @DisplayName("按节点分页查询委托 selectPage")
        void testSelectList_byNode() {
            CostPriceRelevancy query = new CostPriceRelevancy();
            query.setNodeId("N1");
            Page<CostPriceRelevancy> page = new Page<>(1, 10);
            page.setRecords(Collections.singletonList(relevancy("R1", "N1", "T1", 1)));
            when(costPriceRelevancyMapper.selectPage(any(Page.class), any())).thenReturn(page);

            Page<CostPriceRelevancy> result = service.selectCostPriceRelevancyList(query, 1L, 10L);

            assertEquals(1, result.getRecords().size());
            assertEquals("N1", result.getRecords().get(0).getNodeId());
            verify(costPriceRelevancyMapper).selectPage(any(Page.class), any());
        }

        @Test
        @DisplayName("能源品种非空时参与条件查询")
        void testSelectList_withEnergyType() {
            CostPriceRelevancy query = new CostPriceRelevancy();
            query.setNodeId("N1");
            query.setEnergyType(1);
            Page<CostPriceRelevancy> page = new Page<>(1, 5);
            when(costPriceRelevancyMapper.selectPage(any(Page.class), any())).thenReturn(page);

            Page<CostPriceRelevancy> result = service.selectCostPriceRelevancyList(query, 1L, 5L);

            assertNotNull(result);
            ArgumentCaptor<Page> pageCaptor = ArgumentCaptor.forClass(Page.class);
            verify(costPriceRelevancyMapper).selectPage(pageCaptor.capture(), any());
            assertEquals(1L, pageCaptor.getValue().getCurrent());
            assertEquals(5L, pageCaptor.getValue().getSize());
        }

        @Test
        @DisplayName("能源品种为 null 时仍可分页查询")
        void testSelectList_nullEnergyType() {
            CostPriceRelevancy query = new CostPriceRelevancy();
            query.setNodeId("N2");
            Page<CostPriceRelevancy> page = new Page<>(2, 10);
            page.setRecords(Collections.emptyList());
            when(costPriceRelevancyMapper.selectPage(any(Page.class), any())).thenReturn(page);

            Page<CostPriceRelevancy> result = service.selectCostPriceRelevancyList(query, 2L, 10L);

            assertTrue(result.getRecords().isEmpty());
            verify(costPriceRelevancyMapper).selectPage(any(Page.class), any());
        }

        @Test
        @DisplayName("节点为空时仅按默认排序分页")
        void testSelectList_blankNode() {
            CostPriceRelevancy query = new CostPriceRelevancy();
            query.setNodeId("");
            Page<CostPriceRelevancy> page = new Page<>(1, 10);
            when(costPriceRelevancyMapper.selectPage(any(Page.class), any())).thenReturn(page);

            assertNotNull(service.selectCostPriceRelevancyList(query, 1L, 10L));
        }
    }
}
