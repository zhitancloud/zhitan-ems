package com.zhitan.common.utils;

import com.zhitan.common.constant.CommonConst;
import com.zhitan.common.constant.TimeTypeConst;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * ChartUtils 统计图数据工具类单元测试
 * <p>
 * 覆盖：日期列表生成、结束时间计算、时间编码与图表展示编码、时间字符串解析
 */
@DisplayName("ChartUtils 统计图工具类测试")
class ChartUtilsTest {

    private Date parse(String text, String pattern) {
        return DateTimeUtil.toDateTime(text, pattern);
    }

    // ==================== 一、generateDateList ====================

    @Nested
    @DisplayName("1. generateDateList() 构造日期列表")
    class GenerateDateListTests {

        @Test
        @DisplayName("HOUR - 生成 60 个分钟点")
        void testGenerate_hour() {
            List<Date> list = new ArrayList<>();
            ChartUtils.generateDateList(TimeTypeConst.TIME_TYPE_HOUR, "2024-06-15 10", list);
            assertEquals(60, list.size());
            assertEquals(parse("2024-06-15 10:00", DateTimeUtil.COMMON_PATTERN_END_WITH_MINUTE), list.get(0));
            assertEquals(parse("2024-06-15 10:59", DateTimeUtil.COMMON_PATTERN_END_WITH_MINUTE), list.get(59));
        }

        @Test
        @DisplayName("HOUR - 紧凑 timeCode 可转换")
        void testGenerate_hour_compactCode() {
            List<Date> list = new ArrayList<>();
            ChartUtils.generateDateList(TimeTypeConst.TIME_TYPE_HOUR, "2024061510", list);
            assertEquals(60, list.size());
            assertNotNull(list.get(0));
        }

        @Test
        @DisplayName("DAY - 生成 24 个整点")
        void testGenerate_day() {
            List<Date> list = new ArrayList<>();
            ChartUtils.generateDateList(TimeTypeConst.TIME_TYPE_DAY, "2024-06-15", list);
            assertEquals(24, list.size());
            assertEquals(parse("2024-06-15 00", DateTimeUtil.COMMON_PATTERN_TO_HOUR), list.get(0));
            assertEquals(parse("2024-06-15 23", DateTimeUtil.COMMON_PATTERN_TO_HOUR), list.get(23));
        }

        @Test
        @DisplayName("MONTH - 按当月天数生成（2024-02 闰月 29 天）")
        void testGenerate_month_leapFebruary() {
            List<Date> list = new ArrayList<>();
            ChartUtils.generateDateList(TimeTypeConst.TIME_TYPE_MONTH, "2024-02", list);
            assertEquals(29, list.size());
            assertEquals(parse("2024-02-01", DateTimeUtil.COMMON_PATTERN_TO_DAY), list.get(0));
            assertEquals(parse("2024-02-29", DateTimeUtil.COMMON_PATTERN_TO_DAY), list.get(28));
        }

        @Test
        @DisplayName("MONTH - 平年 2 月 28 天")
        void testGenerate_month_nonLeapFebruary() {
            List<Date> list = new ArrayList<>();
            ChartUtils.generateDateList(TimeTypeConst.TIME_TYPE_MONTH, "2023-02", list);
            assertEquals(28, list.size());
        }

        @Test
        @DisplayName("YEAR - 生成 12 个月")
        void testGenerate_year() {
            List<Date> list = new ArrayList<>();
            ChartUtils.generateDateList(TimeTypeConst.TIME_TYPE_YEAR, "2024", list);
            assertEquals(12, list.size());
            assertEquals(parse("2024-01", DateTimeUtil.COMMON_PATTERN_TO_MONTH), list.get(0));
            assertEquals(parse("2024-12", DateTimeUtil.COMMON_PATTERN_TO_MONTH), list.get(11));
        }

        @Test
        @DisplayName("未知 timeType - 不向列表追加数据")
        void testGenerate_unknownType() {
            List<Date> list = new ArrayList<>();
            ChartUtils.generateDateList("UNKNOWN", "2024-01-01", list);
            assertTrue(list.isEmpty());
        }
    }

    // ==================== 二、getEndTime ====================

    @Nested
    @DisplayName("2. getEndTime() 获取结束时间")
    class GetEndTimeTests {

        @Test
        @DisplayName("DAY - 加 1 天")
        void testEndTime_day() {
            Date start = parse("2024-06-15", DateTimeUtil.COMMON_PATTERN_TO_DAY);
            Date end = ChartUtils.getEndTime(TimeTypeConst.TIME_TYPE_DAY, start);
            assertEquals(parse("2024-06-16", DateTimeUtil.COMMON_PATTERN_TO_DAY), end);
        }

        @Test
        @DisplayName("MONTH - 加 1 月")
        void testEndTime_month() {
            Date start = parse("2024-01-15", DateTimeUtil.COMMON_PATTERN_TO_DAY);
            Date end = ChartUtils.getEndTime(TimeTypeConst.TIME_TYPE_MONTH, start);
            Calendar cal = Calendar.getInstance();
            cal.setTime(end);
            assertEquals(2024, cal.get(Calendar.YEAR));
            assertEquals(Calendar.FEBRUARY, cal.get(Calendar.MONTH));
            assertEquals(15, cal.get(Calendar.DAY_OF_MONTH));
        }

        @Test
        @DisplayName("YEAR - 加 1 年")
        void testEndTime_year() {
            Date start = parse("2024-06-15", DateTimeUtil.COMMON_PATTERN_TO_DAY);
            Date end = ChartUtils.getEndTime(TimeTypeConst.TIME_TYPE_YEAR, start);
            Calendar cal = Calendar.getInstance();
            cal.setTime(end);
            assertEquals(2025, cal.get(Calendar.YEAR));
            assertEquals(Calendar.JUNE, cal.get(Calendar.MONTH));
            assertEquals(15, cal.get(Calendar.DAY_OF_MONTH));
        }

        @Test
        @DisplayName("未知类型 - 返回非 null（实现为当前时间）")
        void testEndTime_unknown() {
            Date start = parse("2024-06-15", DateTimeUtil.COMMON_PATTERN_TO_DAY);
            Date end = ChartUtils.getEndTime("UNKNOWN", start);
            assertNotNull(end);
        }
    }

    // ==================== 三、getTimeCode / getTimeCodeChart ====================

    @Nested
    @DisplayName("3. getTimeCode / getTimeCodeChart 显示编码")
    class TimeCodeTests {

        @Test
        @DisplayName("getTimeCode DAY -> yyyy-MM-dd HH")
        void testGetTimeCode_day() {
            Date date = parse("2024-06-15 08", DateTimeUtil.COMMON_PATTERN_TO_HOUR);
            assertEquals("2024-06-15 08", ChartUtils.getTimeCode(TimeTypeConst.TIME_TYPE_DAY, date));
        }

        @Test
        @DisplayName("getTimeCode MONTH -> yyyy-MM-dd")
        void testGetTimeCode_month() {
            Date date = parse("2024-06-15", DateTimeUtil.COMMON_PATTERN_TO_DAY);
            assertEquals("2024-06-15", ChartUtils.getTimeCode(TimeTypeConst.TIME_TYPE_MONTH, date));
        }

        @Test
        @DisplayName("getTimeCode YEAR -> yyyy-MM")
        void testGetTimeCode_year() {
            Date date = parse("2024-06", DateTimeUtil.COMMON_PATTERN_TO_MONTH);
            assertEquals("2024-06", ChartUtils.getTimeCode(TimeTypeConst.TIME_TYPE_YEAR, date));
        }

        @Test
        @DisplayName("getTimeCode 未知类型返回空串")
        void testGetTimeCode_unknown() {
            Date date = parse("2024-06-15", DateTimeUtil.COMMON_PATTERN_TO_DAY);
            assertEquals(CommonConst.EMPTY, ChartUtils.getTimeCode("HOUR", date));
        }

        @Test
        @DisplayName("getTimeCodeChart DAY -> HH:mm")
        void testGetTimeCodeChart_day() {
            Date date = parse("2024-06-15 08:30", DateTimeUtil.COMMON_PATTERN_END_WITH_MINUTE);
            assertEquals("08:30", ChartUtils.getTimeCodeChart(TimeTypeConst.TIME_TYPE_DAY, date));
        }

        @Test
        @DisplayName("getTimeCodeChart MONTH -> MM-dd")
        void testGetTimeCodeChart_month() {
            Date date = parse("2024-06-15", DateTimeUtil.COMMON_PATTERN_TO_DAY);
            assertEquals("06-15", ChartUtils.getTimeCodeChart(TimeTypeConst.TIME_TYPE_MONTH, date));
        }

        @Test
        @DisplayName("getTimeCodeChart YEAR -> yyyy-MM")
        void testGetTimeCodeChart_year() {
            Date date = parse("2024-11", DateTimeUtil.COMMON_PATTERN_TO_MONTH);
            assertEquals("2024-11", ChartUtils.getTimeCodeChart(TimeTypeConst.TIME_TYPE_YEAR, date));
        }
    }

    // ==================== 四、getDateTime ====================

    @Nested
    @DisplayName("4. getDateTime() 解析时间")
    class GetDateTimeTests {

        @Test
        @DisplayName("DAY - 带横线格式")
        void testGetDateTime_day() {
            Date d = ChartUtils.getDateTime(TimeTypeConst.TIME_TYPE_DAY, "2024-06-15");
            assertEquals(parse("2024-06-15", DateTimeUtil.COMMON_PATTERN_TO_DAY), d);
        }

        @Test
        @DisplayName("DAY - 紧凑格式 yyyyMMdd")
        void testGetDateTime_day_compact() {
            Date d = ChartUtils.getDateTime(TimeTypeConst.TIME_TYPE_DAY, "20240615");
            assertEquals(parse("2024-06-15", DateTimeUtil.COMMON_PATTERN_TO_DAY), d);
        }

        @Test
        @DisplayName("MONTH - 带横线 / 紧凑格式")
        void testGetDateTime_month() {
            assertEquals(
                    parse("2024-06", DateTimeUtil.COMMON_PATTERN_TO_MONTH),
                    ChartUtils.getDateTime(TimeTypeConst.TIME_TYPE_MONTH, "2024-06")
            );
            assertEquals(
                    parse("2024-06", DateTimeUtil.COMMON_PATTERN_TO_MONTH),
                    ChartUtils.getDateTime(TimeTypeConst.TIME_TYPE_MONTH, "202406")
            );
        }

        @Test
        @DisplayName("YEAR - yyyy")
        void testGetDateTime_year() {
            Date d = ChartUtils.getDateTime(TimeTypeConst.TIME_TYPE_YEAR, "2024");
            Calendar cal = Calendar.getInstance();
            cal.setTime(d);
            assertEquals(2024, cal.get(Calendar.YEAR));
        }

        @Test
        @DisplayName("未知类型 - 返回非 null")
        void testGetDateTime_unknown() {
            assertNotNull(ChartUtils.getDateTime("UNKNOWN", "2024-01-01"));
        }
    }
}
