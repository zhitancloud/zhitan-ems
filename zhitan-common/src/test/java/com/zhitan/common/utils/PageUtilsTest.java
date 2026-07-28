package com.zhitan.common.utils;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.github.pagehelper.PageHelper;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import static org.junit.jupiter.api.Assertions.*;

/**
 * PageUtils 分页工具类单元测试
 * <p>
 * 覆盖：startPage / clearPage、getPage / getPageInfo（含默认分页参数与自定义请求参数）
 */
@DisplayName("PageUtils 分页工具类测试")
class PageUtilsTest {

    private MockHttpServletRequest request;

    @BeforeEach
    void setUp() {
        request = new MockHttpServletRequest();
        RequestContextHolder.setRequestAttributes(new ServletRequestAttributes(request));
        PageHelper.clearPage();
    }

    @AfterEach
    void tearDown() {
        PageHelper.clearPage();
        RequestContextHolder.resetRequestAttributes();
    }

    private void setPageParams(String pageNum, String pageSize) {
        request.setParameter("pageNum", pageNum);
        request.setParameter("pageSize", pageSize);
    }

    // ==================== 一、默认分页参数 ====================

    @Nested
    @DisplayName("1. 默认分页参数")
    class DefaultPageTests {

        @Test
        @DisplayName("无请求参数时 getPage() 默认为第 1 页、每页 10 条")
        void testGetPage_defaults() {
            Page page = PageUtils.getPage();
            assertNotNull(page);
            assertEquals(1, page.getCurrent());
            assertEquals(10, page.getSize());
        }

        @Test
        @DisplayName("无请求参数时 getPageInfo() 默认为第 1 页、每页 10 条")
        void testGetPageInfo_defaults() {
            Page<Object> page = PageUtils.getPageInfo();
            assertNotNull(page);
            assertEquals(1, page.getCurrent());
            assertEquals(10, page.getSize());
        }

        @Test
        @DisplayName("getPageInfo(Class) 默认为第 1 页、每页 10 条")
        void testGetPageInfo_withClass_defaults() {
            Page<String> page = PageUtils.getPageInfo(String.class);
            assertNotNull(page);
            assertEquals(1, page.getCurrent());
            assertEquals(10, page.getSize());
        }
    }

    // ==================== 二、自定义分页参数 ====================

    @Nested
    @DisplayName("2. 自定义分页参数")
    class CustomPageTests {

        @Test
        @DisplayName("getPage() 读取 pageNum / pageSize")
        void testGetPage_custom() {
            setPageParams("3", "20");
            Page page = PageUtils.getPage();
            assertEquals(3, page.getCurrent());
            assertEquals(20, page.getSize());
        }

        @Test
        @DisplayName("getPageInfo() 读取 pageNum / pageSize")
        void testGetPageInfo_custom() {
            setPageParams("5", "50");
            Page<Object> page = PageUtils.getPageInfo();
            assertEquals(5, page.getCurrent());
            assertEquals(50, page.getSize());
        }

        @Test
        @DisplayName("getPageInfo(Class) 读取 pageNum / pageSize")
        void testGetPageInfo_withClass_custom() {
            setPageParams("2", "15");
            Page<Integer> page = PageUtils.getPageInfo(Integer.class);
            assertEquals(2, page.getCurrent());
            assertEquals(15, page.getSize());
        }

        @Test
        @DisplayName("非法 pageNum/pageSize 回退默认值")
        void testGetPage_invalidNumbersFallback() {
            setPageParams("abc", "xyz");
            Page page = PageUtils.getPage();
            assertEquals(1, page.getCurrent());
            assertEquals(10, page.getSize());
        }
    }

    // ==================== 三、startPage / clearPage ====================

    @Nested
    @DisplayName("3. startPage / clearPage")
    class StartClearPageTests {

        @Test
        @DisplayName("startPage() 设置 PageHelper 本地分页")
        void testStartPage_setsLocalPage() {
            setPageParams("2", "25");
            request.setParameter("orderByColumn", "createTime");
            request.setParameter("isAsc", "desc");

            PageUtils.startPage();

            com.github.pagehelper.Page<?> local = PageHelper.getLocalPage();
            assertNotNull(local);
            assertEquals(2, local.getPageNum());
            assertEquals(25, local.getPageSize());
            assertTrue(local.getOrderBy().contains("create_time") || local.getOrderBy().contains("createTime"));
            assertTrue(local.getOrderBy().toLowerCase().contains("desc"));
        }

        @Test
        @DisplayName("clearPage() 清理 PageHelper 本地分页")
        void testClearPage() {
            setPageParams("1", "10");
            PageUtils.startPage();
            assertNotNull(PageHelper.getLocalPage());

            PageUtils.clearPage();
            assertNull(PageHelper.getLocalPage());
        }

        @Test
        @DisplayName("startPage() 兼容前端 ascending / descending")
        void testStartPage_frontendSortAlias() {
            setPageParams("1", "10");
            request.setParameter("orderByColumn", "userName");
            request.setParameter("isAsc", "ascending");

            PageUtils.startPage();
            com.github.pagehelper.Page<?> local = PageHelper.getLocalPage();
            assertNotNull(local);
            assertTrue(local.getOrderBy().toLowerCase().contains("asc"));
        }

        @Test
        @DisplayName("无排序列时 startPage 仍可正常执行")
        void testStartPage_withoutOrderBy() {
            setPageParams("1", "10");
            assertDoesNotThrow(() -> PageUtils.startPage());
            assertNotNull(PageHelper.getLocalPage());
        }
    }
}
