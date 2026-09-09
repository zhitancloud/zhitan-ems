package com.zhitan.common.utils;

import com.zhitan.common.constant.CommonConst;
import com.zhitan.common.constant.DateTimeUtil;
import com.zhitan.common.constant.TimeTypeConst;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import static org.junit.jupiter.api.Assertions.*;

/**
 * DateTimeUtil 时间工具类单元测试
 * 覆盖：日期格式化、时间差计算、时间类型判断、日期范围生成等核心方法
 */
@DisplayName("DateTimeUtil 时间工具类测试")
class DateTimeUtilTest {

    // ==================== 辅助方法 ====================

    /**
     * 构造指定时间
     */
    private Date buildDate(int year, int month, int day, int hour, int minute, int second) {
        Calendar cal = new GregorianCalendar(year, month - 1, day, hour, minute, second);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }

    private Date buildDate(int year, int month, int day) {
        return buildDate(year, month, day, 0, 0, 0);
    }

    // ==================== 一、日期格式化测试 ====================

    @Nested
    @DisplayName("1. 日期格式化")
    class DateFormatTests {

        @Test
        @DisplayName("getNowDateTime() - 获取当前时间，格式为 yyyy-MM-dd HH:mm:ss")
        void testGetNowDateTime() {
            String now = DateTimeUtil.getNowDateTime();
            assertNotNull(now);
            // 长度应为 19：yyyy-MM-dd HH:mm:ss
            assertEquals(19, now.length());
            // 验证格式正确（能被解析）
            assertDoesNotThrow(() -> new SimpleDateFormat(DateTimeUtil.COMMON_PATTERN).parse(now));
        }

        @Test
        @DisplayName("getNowDateTime(pattern) - 自定义格式获取当前时间")
        void testGetNowDateTimeWithPattern() {
            String nowDay = DateTimeUtil.getNowDateTime(DateTimeUtil.COMMON_PATTERN_TO_DAY);
            assertNotNull(nowDay);
            assertEquals(10, nowDay.length()); // yyyy-MM-dd

            String nowMonth = DateTimeUtil.getNowDateTime(DateTimeUtil.COMMON_PATTERN_MONTH);
            assertNotNull(nowMonth);
            assertEquals(6, nowMonth.length()); // yyyyMM
        }

        @Test
        @DisplayName("getNowYear() - 获取当前年份")
        void testGetNowYear() {
            String year = DateTimeUtil.getNowYear();
            assertNotNull(year);
            assertEquals(4, year.length());
            int yearInt = Integer.parseInt(year);
            assertTrue(yearInt >= 2024 && yearInt <= 2100);
        }

        @Test
        @DisplayName("getNowMonth() - 获取当前月份，格式 yyyyMM")
        void testGetNowMonth() {
            String month = DateTimeUtil.getNowMonth();
            assertNotNull(month);
            assertEquals(6, month.length());
        }

        @Test
        @DisplayName("getDateTime(Date, pattern) - 时间转成指定格式字符串")
        void testGetDateTimeWithPattern() {
            Date date = buildDate(2025, 3, 15, 10, 30, 45);
            assertEquals("2025-03-15 10:30:45", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN));
            assertEquals("2025-03-15", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_TO_DAY));
            assertEquals("202503", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_MONTH));
            assertEquals("20250315", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_DAY));
            assertEquals("2025031510", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_HOUR));
            assertEquals("2025", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_YEAR));
            assertEquals("03-15", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_MONTH_DAY));
            assertEquals("2025-03", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_TO_MONTH));
            assertEquals("10:30", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_HOUR_MINUTE));
        }

        @Test
        @DisplayName("getDateTime(Date) - 时间转成默认格式，null 返回空字符串")
        void testGetDateTime() {
            Date date = buildDate(2025, 6, 1, 14, 30, 0);
            assertEquals("2025-06-01 14:30:00", DateTimeUtil.getDateTime(date));

            // null 返回空字符串
            assertEquals(CommonConst.EMPTY, DateTimeUtil.getDateTime(null));
        }

        @Test
        @DisplayName("toString(Date) - 时间转成字符串")
        void testToString() {
            Date date = buildDate(2025, 1, 1, 0, 0, 0);
            assertEquals("2025-01-01 00:00:00", DateTimeUtil.toString(date));
        }

        @Test
        @DisplayName("toDay(Date) - 获取天，格式 yyyyMMdd")
        void testToDay() {
            Date date = buildDate(2025, 12, 25);
            assertEquals("20251225", DateTimeUtil.toDay(date));
        }

        @Test
        @DisplayName("toHour(Date) - 获取小时，格式 yyyyMMddHH")
        void testToHour() {
            Date date = buildDate(2025, 7, 4, 15, 0, 0);
            assertEquals("2025070415", DateTimeUtil.toHour(date));
        }

        @Test
        @DisplayName("getYear(Date) - 获取年份值")
        void testGetYear() {
            Date date = buildDate(2025, 8, 20);
            assertEquals("2025", DateTimeUtil.getYear(date));
        }

        @Test
        @DisplayName("getMonth(Date) - 获取月份值，格式 yyyyMM")
        void testGetMonth() {
            Date date = buildDate(2025, 2, 14);
            assertEquals("202502", DateTimeUtil.getMonth(date));
        }
    }

    // ==================== 二、日期解析测试 ====================

    @Nested
    @DisplayName("2. 日期解析")
    class DateParseTests {

        @Test
        @DisplayName("toDateTime(String) - 默认格式解析")
        void testToDateTime() {
            Date date = DateTimeUtil.toDateTime("2025-03-15 10:30:00");
            assertNotNull(date);
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);
            assertEquals(2025, cal.get(Calendar.YEAR));
            assertEquals(Calendar.MARCH, cal.get(Calendar.MONTH));
            assertEquals(15, cal.get(Calendar.DAY_OF_MONTH));
            assertEquals(10, cal.get(Calendar.HOUR_OF_DAY));
            assertEquals(30, cal.get(Calendar.MINUTE));
        }

        @Test
        @DisplayName("toDateTime(String, pattern) - 自定义格式解析")
        void testToDateTimeWithPattern() {
            Date date = DateTimeUtil.toDateTime("20250315", DateTimeUtil.COMMON_PATTERN_DAY);
            assertNotNull(date);
            assertEquals("2025-03-15", DateTimeUtil.getDateTime(date, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("toDateTime(String) - 非法格式返回 null")
        void testToDateTimeInvalid() {
            Date date = DateTimeUtil.toDateTime("invalid-date");
            assertNull(date);
        }

        @Test
        @DisplayName("toDateTime(String, pattern) - 非法格式返回 null")
        void testToDateTimeWithPatternInvalid() {
            Date date = DateTimeUtil.toDateTime("abc", DateTimeUtil.COMMON_PATTERN_DAY);
            assertNull(date);
        }

        @Test
        @DisplayName("toDateTimeStr - 字符串时间格式转换")
        void testToDateTimeStr() {
            String result = DateTimeUtil.toDateTimeStr(
                    "20250315",
                    DateTimeUtil.COMMON_PATTERN_DAY,
                    DateTimeUtil.COMMON_PATTERN_TO_DAY
            );
            assertEquals("2025-03-15", result);
        }

        @Test
        @DisplayName("toDateTimeStr - 非法输入返回空字符串")
        void testToDateTimeStrInvalid() {
            String result = DateTimeUtil.toDateTimeStr(
                    "invalid",
                    DateTimeUtil.COMMON_PATTERN_DAY,
                    DateTimeUtil.COMMON_PATTERN_TO_DAY
            );
            assertEquals(CommonConst.EMPTY, result);
        }
    }

    // ==================== 三、日期加减运算测试 ====================

    @Nested
    @DisplayName("3. 日期加减运算")
    class DateArithmeticTests {

        @Test
        @DisplayName("addYears - 增加年数")
        void testAddYears() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.addYears(date, 2);
            assertNotNull(result);
            assertEquals("2027", DateTimeUtil.getYear(result));
            assertEquals("2027-03-15", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("addYears - 负数减年")
        void testAddYearsNegative() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.addYears(date, -1);
            assertNotNull(result);
            assertEquals("2024", DateTimeUtil.getYear(result));
        }

        @Test
        @DisplayName("addMonths - 增加月数")
        void testAddMonths() {
            Date date = buildDate(2025, 1, 31);
            Date result = DateTimeUtil.addMonths(date, 1);
            assertNotNull(result);
            // 1月31日加1月 = 2月28日（2025年非闰年）
            assertEquals("2025-02-28", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("addMonths - 负数减月")
        void testAddMonthsNegative() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.addMonths(date, -2);
            assertNotNull(result);
            assertEquals("2025-01-15", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("addDays - 增加天数")
        void testAddDays() {
            Date date = buildDate(2025, 2, 28);
            Date result = DateTimeUtil.addDays(date, 1);
            assertNotNull(result);
            assertEquals("2025-03-01", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("addDays - 负数减天")
        void testAddDaysNegative() {
            Date date = buildDate(2025, 3, 1);
            Date result = DateTimeUtil.addDays(date, -1);
            assertNotNull(result);
            assertEquals("2025-02-28", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("addHours - 增加小时")
        void testAddHours() {
            Date date = buildDate(2025, 3, 15, 10, 0, 0);
            Date result = DateTimeUtil.addHours(date, 3);
            assertNotNull(result);
            assertEquals("2025-03-15 13:00:00", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN));
        }

        @Test
        @DisplayName("addHours - 跨天")
        void testAddHoursCrossDay() {
            Date date = buildDate(2025, 3, 15, 23, 0, 0);
            Date result = DateTimeUtil.addHours(date, 2);
            assertNotNull(result);
            assertEquals("2025-03-16", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("addMinutes - 增加分钟")
        void testAddMinutes() {
            Date date = buildDate(2025, 3, 15, 10, 30, 0);
            Date result = DateTimeUtil.addMinutes(date, 45);
            assertNotNull(result);
            assertEquals("2025-03-15 11:15:00", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN));
        }

        @Test
        @DisplayName("addSeconds - 增加秒数")
        void testAddSeconds() {
            Date date = buildDate(2025, 3, 15, 10, 0, 30);
            Date result = DateTimeUtil.addSeconds(date, 45);
            assertNotNull(result);
            assertEquals("2025-03-15 10:01:15", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN));
        }
    }

    // ==================== 四、日期比较与时间差测试 ====================

    @Nested
    @DisplayName("4. 日期比较与时间差")
    class DateCompareTests {

        @Test
        @DisplayName("compareDateDiff - time1 大于 time2 返回 1")
        void testCompareDateDiffGreater() {
            Date time1 = buildDate(2025, 6, 1);
            Date time2 = buildDate(2025, 5, 1);
            assertEquals(1, DateTimeUtil.compareDateDiff(time1, time2));
        }

        @Test
        @DisplayName("compareDateDiff - time1 等于 time2 返回 0")
        void testCompareDateDiffEqual() {
            Date time1 = buildDate(2025, 6, 1, 12, 0, 0);
            Date time2 = buildDate(2025, 6, 1, 12, 0, 0);
            assertEquals(0, DateTimeUtil.compareDateDiff(time1, time2));
        }

        @Test
        @DisplayName("compareDateDiff - time1 小于 time2 返回 -1")
        void testCompareDateDiffLess() {
            Date time1 = buildDate(2025, 1, 1);
            Date time2 = buildDate(2025, 12, 31);
            assertEquals(-1, DateTimeUtil.compareDateDiff(time1, time2));
        }

        @Test
        @DisplayName("daysBetween(Date, Date) - 两个日期间隔天数")
        void testDaysBetweenDate() {
            Date begin = buildDate(2025, 1, 1);
            Date end = buildDate(2025, 1, 31);
            assertEquals(30, DateTimeUtil.daysBetween(begin, end));
        }

        @Test
        @DisplayName("daysBetween(Date, Date) - 同一天间隔为 0")
        void testDaysBetweenSameDay() {
            Date date = buildDate(2025, 6, 15);
            assertEquals(0, DateTimeUtil.daysBetween(date, date));
        }

        @Test
        @DisplayName("daysBetween(String, String) - 字符串日期间隔天数")
        void testDaysBetweenString() {
            assertEquals(10, DateTimeUtil.daysBetween("2025-03-01", "2025-03-11"));
        }

        @Test
        @DisplayName("daysBetween(String, String) - 跨月间隔")
        void testDaysBetweenStringCrossMonth() {
            assertEquals(31, DateTimeUtil.daysBetween("2025-01-01", "2025-02-01"));
        }

        @Test
        @DisplayName("daysBetween(String, String) - 非法格式返回 0")
        void testDaysBetweenStringInvalid() {
            assertEquals(0, DateTimeUtil.daysBetween("invalid", "2025-01-01"));
        }
    }

    // ==================== 五、日期值提取测试 ====================

    @Nested
    @DisplayName("5. 日期值提取")
    class DateValueTests {

        @Test
        @DisplayName("getHourOfDay - 获取当天第几个小时")
        void testGetHourOfDay() {
            Date date = buildDate(2025, 3, 15, 14, 30, 0);
            assertEquals(14, DateTimeUtil.getHourOfDay(date));
        }

        @Test
        @DisplayName("getHourOfDay - 午夜为 0")
        void testGetHourOfDayMidnight() {
            Date date = buildDate(2025, 3, 15, 0, 0, 0);
            assertEquals(0, DateTimeUtil.getHourOfDay(date));
        }

        @Test
        @DisplayName("getDayOfMonth - 获取当月第几天")
        void testGetDayOfMonth() {
            Date date = buildDate(2025, 3, 25);
            assertEquals(25, DateTimeUtil.getDayOfMonth(date));
        }

        @Test
        @DisplayName("getDayOfWeek - 获取当周第几天（周日=1）")
        void testGetDayOfWeek() {
            // 2025-03-15 是周六，Calendar.DAY_OF_WEEK 中周六=7
            Date date = buildDate(2025, 3, 15);
            int dayOfWeek = DateTimeUtil.getDayOfWeek(date);
            assertTrue(dayOfWeek >= Calendar.SUNDAY && dayOfWeek <= Calendar.SATURDAY);
        }

        @Test
        @DisplayName("getMonthOfYear - 获取当年第几个月（真实月份）")
        void testGetMonthOfYear() {
            Date date = buildDate(2025, 8, 15);
            assertEquals(8, DateTimeUtil.getMonthOfYear(date));
        }

        @Test
        @DisplayName("getMonthOfYear - 1月返回1")
        void testGetMonthOfYearJanuary() {
            Date date = buildDate(2025, 1, 1);
            assertEquals(1, DateTimeUtil.getMonthOfYear(date));
        }

        @Test
        @DisplayName("getDateTimeLastDay - 获取当月最后一天")
        void testGetDateTimeLastDay() {
            // 2025年2月：28天（非闰年）
            Date feb = buildDate(2025, 2, 10);
            assertEquals(28, DateTimeUtil.getDateTimeLastDay(feb));

            // 2024年2月：29天（闰年）
            Date febLeap = buildDate(2024, 2, 10);
            assertEquals(29, DateTimeUtil.getDateTimeLastDay(febLeap));

            // 3月：31天
            Date mar = buildDate(2025, 3, 1);
            assertEquals(31, DateTimeUtil.getDateTimeLastDay(mar));

            // 4月：30天
            Date apr = buildDate(2025, 4, 15);
            assertEquals(30, DateTimeUtil.getDateTimeLastDay(apr));
        }

        @Test
        @DisplayName("getDateValue - null 时间使用当前时间不抛异常")
        void testGetDateValueWithNull() {
            // getHourOfDay 传入 null 时使用当前时间
            assertDoesNotThrow(() -> DateTimeUtil.getHourOfDay(null));
            assertDoesNotThrow(() -> DateTimeUtil.getDayOfMonth(null));
            assertDoesNotThrow(() -> DateTimeUtil.getMonthOfYear(null));
        }
    }

    // ==================== 六、时间编码生成测试 ====================

    @Nested
    @DisplayName("6. 时间编码生成")
    class TimeCodeTests {

        @Test
        @DisplayName("getTimeCode - HOUR 类型生成 H+yyyyMMddHH 编码")
        void testGetTimeCodeHour() {
            Date date = buildDate(2025, 3, 15, 14, 0, 0);
            String code = DateTimeUtil.getTimeCode(TimeTypeConst.TIME_TYPE_HOUR, date);
            assertEquals("H2025031514", code);
        }

        @Test
        @DisplayName("getTimeCode - DAY 类型生成 D+yyyyMMdd 编码")
        void testGetTimeCodeDay() {
            Date date = buildDate(2025, 3, 15);
            String code = DateTimeUtil.getTimeCode(TimeTypeConst.TIME_TYPE_DAY, date);
            assertEquals("D20250315", code);
        }

        @Test
        @DisplayName("getTimeCode - MONTH 类型生成 M+yyyyMM 编码")
        void testGetTimeCodeMonth() {
            Date date = buildDate(2025, 3, 15);
            String code = DateTimeUtil.getTimeCode(TimeTypeConst.TIME_TYPE_MONTH, date);
            assertEquals("M202503", code);
        }

        @Test
        @DisplayName("getTimeCode - YEAR 类型生成 Y+yyyy 编码")
        void testGetTimeCodeYear() {
            Date date = buildDate(2025, 6, 1);
            String code = DateTimeUtil.getTimeCode(TimeTypeConst.TIME_TYPE_YEAR, date);
            assertEquals("Y2025", code);
        }

        @Test
        @DisplayName("getTimeCode - 未知类型返回空字符串")
        void testGetTimeCodeUnknown() {
            Date date = buildDate(2025, 3, 15);
            String code = DateTimeUtil.getTimeCode("UNKNOWN", date);
            assertEquals(CommonConst.EMPTY, code);
        }

        @Test
        @DisplayName("getTimeCode - 小写 timeType 也能正确处理")
        void testGetTimeCodeLowerCase() {
            Date date = buildDate(2025, 3, 15);
            String code = DateTimeUtil.getTimeCode("day", date);
            assertEquals("D20250315", code);
        }

        @Test
        @DisplayName("getReportTimeCode - HOUR 类型返回 yyyy-MM-dd HH")
        void testGetReportTimeCodeHour() {
            Date date = buildDate(2025, 3, 15, 14, 30, 0);
            String code = DateTimeUtil.getReportTimeCode(TimeTypeConst.TIME_TYPE_HOUR, date);
            assertEquals("2025-03-15 14", code);
        }

        @Test
        @DisplayName("getReportTimeCode - DAY 类型返回 yyyy-MM-dd")
        void testGetReportTimeCodeDay() {
            Date date = buildDate(2025, 3, 15);
            String code = DateTimeUtil.getReportTimeCode(TimeTypeConst.TIME_TYPE_DAY, date);
            assertEquals("2025-03-15", code);
        }

        @Test
        @DisplayName("getReportTimeCode - MONTH 类型返回 yyyy-MM")
        void testGetReportTimeCodeMonth() {
            Date date = buildDate(2025, 3, 15);
            String code = DateTimeUtil.getReportTimeCode(TimeTypeConst.TIME_TYPE_MONTH, date);
            assertEquals("2025-03", code);
        }

        @Test
        @DisplayName("getReportTimeCode - YEAR 类型返回 yyyy")
        void testGetReportTimeCodeYear() {
            Date date = buildDate(2025, 6, 1);
            String code = DateTimeUtil.getReportTimeCode(TimeTypeConst.TIME_TYPE_YEAR, date);
            assertEquals("2025", code);
        }

        @Test
        @DisplayName("getReportTimeCode - 未知类型返回空字符串")
        void testGetReportTimeCodeUnknown() {
            Date date = buildDate(2025, 3, 15);
            String code = DateTimeUtil.getReportTimeCode("WEEK", date);
            assertEquals(CommonConst.EMPTY, code);
        }
    }

    // ==================== 七、环比时间 & 整点时间测试 ====================

    @Nested
    @DisplayName("7. 环比时间与整点时间")
    class LoopAndHourTimeTests {

        @Test
        @DisplayName("getLoopTime - HOUR 环比：减1小时")
        void testGetLoopTimeHour() {
            Date date = buildDate(2025, 3, 15, 14, 0, 0);
            Date loop = DateTimeUtil.getLoopTime(TimeTypeConst.TIME_TYPE_HOUR, date);
            assertNotNull(loop);
            assertEquals("2025-03-15 13:00:00", DateTimeUtil.getDateTime(loop));
        }

        @Test
        @DisplayName("getLoopTime - DAY 环比：减1天")
        void testGetLoopTimeDay() {
            Date date = buildDate(2025, 3, 15);
            Date loop = DateTimeUtil.getLoopTime(TimeTypeConst.TIME_TYPE_DAY, date);
            assertNotNull(loop);
            assertEquals("2025-03-14", DateTimeUtil.getDateTime(loop, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("getLoopTime - MONTH 环比：减1月")
        void testGetLoopTimeMonth() {
            Date date = buildDate(2025, 3, 15);
            Date loop = DateTimeUtil.getLoopTime(TimeTypeConst.TIME_TYPE_MONTH, date);
            assertNotNull(loop);
            assertEquals("2025-02-15", DateTimeUtil.getDateTime(loop, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("getLoopTime - YEAR 环比：减1年")
        void testGetLoopTimeYear() {
            Date date = buildDate(2025, 6, 1);
            Date loop = DateTimeUtil.getLoopTime(TimeTypeConst.TIME_TYPE_YEAR, date);
            assertNotNull(loop);
            assertEquals("2024", DateTimeUtil.getYear(loop));
        }

        @Test
        @DisplayName("getLoopTime - 未知类型返回 null")
        void testGetLoopTimeUnknown() {
            Date date = buildDate(2025, 3, 15);
            Date loop = DateTimeUtil.getLoopTime("UNKNOWN", date);
            assertNull(loop);
        }

        @Test
        @DisplayName("getHourTime - HOUR 截断到整点")
        void testGetHourTimeHour() {
            Date date = buildDate(2025, 3, 15, 14, 45, 30);
            Date hourTime = DateTimeUtil.getHourTime(TimeTypeConst.TIME_TYPE_HOUR, date);
            assertNotNull(hourTime);
            assertEquals("2025-03-15 14:00:00", DateTimeUtil.getDateTime(hourTime));
        }

        @Test
        @DisplayName("getHourTime - DAY 截断到整天")
        void testGetHourTimeDay() {
            Date date = buildDate(2025, 3, 15, 14, 45, 30);
            Date dayTime = DateTimeUtil.getHourTime(TimeTypeConst.TIME_TYPE_DAY, date);
            assertNotNull(dayTime);
            assertEquals("2025-03-15 00:00:00", DateTimeUtil.getDateTime(dayTime));
        }

        @Test
        @DisplayName("getHourTime - MONTH 截断到整月")
        void testGetHourTimeMonth() {
            Date date = buildDate(2025, 3, 15, 14, 45, 30);
            Date monthTime = DateTimeUtil.getHourTime(TimeTypeConst.TIME_TYPE_MONTH, date);
            assertNotNull(monthTime);
            assertEquals("2025-03-01 00:00:00", DateTimeUtil.getDateTime(monthTime));
        }

        @Test
        @DisplayName("getHourTime - YEAR 截断到整年")
        void testGetHourTimeYear() {
            Date date = buildDate(2025, 7, 15, 14, 45, 30);
            Date yearTime = DateTimeUtil.getHourTime(TimeTypeConst.TIME_TYPE_YEAR, date);
            assertNotNull(yearTime);
            assertEquals("2025-01-01 00:00:00", DateTimeUtil.getDateTime(yearTime));
        }

        @Test
        @DisplayName("getHourTime - 未知类型返回 null")
        void testGetHourTimeUnknown() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.getHourTime("UNKNOWN", date);
            assertNull(result);
        }
    }

    // ==================== 八、按时间类型解析测试 ====================

    @Nested
    @DisplayName("8. 按时间类型解析")
    class GetTimeByTypeTests {

        @Test
        @DisplayName("getTime - HOUR 类型解析 yyyy-MM-dd HH")
        void testGetTimeHour() {
            Date dt = DateTimeUtil.getTime(TimeTypeConst.TIME_TYPE_HOUR, "2025-03-15 14");
            assertNotNull(dt);
            assertEquals("2025-03-15 14:00:00", DateTimeUtil.getDateTime(dt));
        }

        @Test
        @DisplayName("getTime - DAY 类型解析 yyyy-MM-dd")
        void testGetTimeDay() {
            Date dt = DateTimeUtil.getTime(TimeTypeConst.TIME_TYPE_DAY, "2025-03-15");
            assertNotNull(dt);
            assertEquals("2025-03-15 00:00:00", DateTimeUtil.getDateTime(dt));
        }

        @Test
        @DisplayName("getTime - MONTH 类型解析 yyyy-MM")
        void testGetTimeMonth() {
            Date dt = DateTimeUtil.getTime(TimeTypeConst.TIME_TYPE_MONTH, "2025-03");
            assertNotNull(dt);
            assertEquals("202503", DateTimeUtil.getMonth(dt));
        }

        @Test
        @DisplayName("getTime - YEAR 类型解析 yyyy")
        void testGetTimeYear() {
            Date dt = DateTimeUtil.getTime(TimeTypeConst.TIME_TYPE_YEAR, "2025");
            assertNotNull(dt);
            assertEquals("2025", DateTimeUtil.getYear(dt));
        }

        @Test
        @DisplayName("getTime - 未知类型返回 null")
        void testGetTimeUnknown() {
            Date dt = DateTimeUtil.getTime("WEEK", "2025-03-15");
            assertNull(dt);
        }

        @Test
        @DisplayName("getTimeByContinuousTimeCode - HOUR 解析 yyyyMMddHH")
        void testGetTimeByContinuousTimeCodeHour() {
            Date dt = DateTimeUtil.getTimeByContinuousTimeCode(TimeTypeConst.TIME_TYPE_HOUR, "2025031514");
            assertNotNull(dt);
            assertEquals("2025-03-15 14:00:00", DateTimeUtil.getDateTime(dt));
        }

        @Test
        @DisplayName("getTimeByContinuousTimeCode - DAY 解析 yyyyMMdd")
        void testGetTimeByContinuousTimeCodeDay() {
            Date dt = DateTimeUtil.getTimeByContinuousTimeCode(TimeTypeConst.TIME_TYPE_DAY, "20250315");
            assertNotNull(dt);
            assertEquals("2025-03-15", DateTimeUtil.getDateTime(dt, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("getTimeByContinuousTimeCode - MONTH 解析 yyyyMM")
        void testGetTimeByContinuousTimeCodeMonth() {
            Date dt = DateTimeUtil.getTimeByContinuousTimeCode(TimeTypeConst.TIME_TYPE_MONTH, "202503");
            assertNotNull(dt);
            assertEquals("202503", DateTimeUtil.getMonth(dt));
        }

        @Test
        @DisplayName("getTimeByContinuousTimeCode - YEAR 解析 yyyy")
        void testGetTimeByContinuousTimeCodeYear() {
            Date dt = DateTimeUtil.getTimeByContinuousTimeCode(TimeTypeConst.TIME_TYPE_YEAR, "2025");
            assertNotNull(dt);
            assertEquals("2025", DateTimeUtil.getYear(dt));
        }

        @Test
        @DisplayName("getTimeByContinuousTimeCode - 未知类型返回 null")
        void testGetTimeByContinuousTimeCodeUnknown() {
            Date dt = DateTimeUtil.getTimeByContinuousTimeCode("WEEK", "20250315");
            assertNull(dt);
        }
    }

    // ==================== 九、结束时间 & 生产周期计算测试 ====================

    @Nested
    @DisplayName("9. 结束时间与生产周期计算")
    class EndTimeAndProductionCycleTests {

        @Test
        @DisplayName("getEndTimeByType - DAY 返回当天结束时间 23:59:59")
        void testGetEndTimeByTypeDay() {
            Date date = buildDate(2025, 3, 15, 10, 30, 0);
            Date end = DateTimeUtil.getEndTimeByType(TimeTypeConst.TIME_TYPE_DAY, date);
            assertNotNull(end);
            String endStr = DateTimeUtil.getDateTime(end);
            assertTrue(endStr.startsWith("2025-03-15 23:59:59"));
        }

        @Test
        @DisplayName("getEndTimeByType - MONTH 返回当月最后一天 23:59:59")
        void testGetEndTimeByTypeMonth() {
            Date date = buildDate(2025, 2, 10);
            Date end = DateTimeUtil.getEndTimeByType(TimeTypeConst.TIME_TYPE_MONTH, date);
            assertNotNull(end);
            String endStr = DateTimeUtil.getDateTime(end);
            assertTrue(endStr.startsWith("2025-02-28 23:59:59"));
        }

        @Test
        @DisplayName("getEndTimeByType - YEAR 返回当年最后一天 23:59:59")
        void testGetEndTimeByTypeYear() {
            Date date = buildDate(2025, 6, 15);
            Date end = DateTimeUtil.getEndTimeByType(TimeTypeConst.TIME_TYPE_YEAR, date);
            assertNotNull(end);
            String endStr = DateTimeUtil.getDateTime(end);
            assertTrue(endStr.startsWith("2025-12-31 23:59:59"));
        }

        @Test
        @DisplayName("getEndTimeByType - 未知类型返回 null")
        void testGetEndTimeByTypeUnknown() {
            Date date = buildDate(2025, 3, 15);
            Date end = DateTimeUtil.getEndTimeByType("WEEK", date);
            assertNull(end);
        }

        @Test
        @DisplayName("productionCycleCal - HOUR 类型加小时")
        void testProductionCycleCalHour() {
            Date date = buildDate(2025, 3, 15, 10, 0, 0);
            Date result = DateTimeUtil.productionCycleCal(date, TimeTypeConst.TIME_TYPE_HOUR, 3);
            assertNotNull(result);
            assertEquals("2025-03-15 13:00:00", DateTimeUtil.getDateTime(result));
        }

        @Test
        @DisplayName("productionCycleCal - DAY 类型加天")
        void testProductionCycleCalDay() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.productionCycleCal(date, TimeTypeConst.TIME_TYPE_DAY, 5);
            assertNotNull(result);
            assertEquals("2025-03-20", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("productionCycleCal - MONTH 类型加月")
        void testProductionCycleCalMonth() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.productionCycleCal(date, TimeTypeConst.TIME_TYPE_MONTH, 2);
            assertNotNull(result);
            assertEquals("2025-05-15", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("productionCycleCal - 负数减法")
        void testProductionCycleCalNegative() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.productionCycleCal(date, TimeTypeConst.TIME_TYPE_DAY, -3);
            assertNotNull(result);
            assertEquals("2025-03-12", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("productionCycleCalCarry - HOUR 进位为加天")
        void testProductionCycleCalCarryHour() {
            Date date = buildDate(2025, 3, 15, 10, 0, 0);
            Date result = DateTimeUtil.productionCycleCalCarry(date, TimeTypeConst.TIME_TYPE_HOUR, 1);
            assertNotNull(result);
            // HOUR 进位：+1天
            assertEquals("2025-03-16", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("productionCycleCalCarry - DAY 进位为加月")
        void testProductionCycleCalCarryDay() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.productionCycleCalCarry(date, TimeTypeConst.TIME_TYPE_DAY, 1);
            assertNotNull(result);
            // DAY 进位：+1月
            assertEquals("2025-04-15", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("productionCycleCalCarry - MONTH 进位为加年")
        void testProductionCycleCalCarryMonth() {
            Date date = buildDate(2025, 3, 15);
            Date result = DateTimeUtil.productionCycleCalCarry(date, TimeTypeConst.TIME_TYPE_MONTH, 1);
            assertNotNull(result);
            // MONTH 进位：+1年
            assertEquals("2026-03-15", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }
    }

    // ==================== 十、常量验证测试 ====================

    @Nested
    @DisplayName("10. 日期常量验证")
    class ConstantTests {

        @Test
        @DisplayName("日期格式常量值正确")
        void testPatternConstants() {
            assertEquals("yyyy-MM-dd HH:mm:ss", DateTimeUtil.COMMON_PATTERN);
            assertEquals("yyyy-MM-dd HH:mm", DateTimeUtil.COMMON_PATTERN_END_WITH_MINUTE);
            assertEquals("HH:mm", DateTimeUtil.COMMON_PATTERN_HOUR_MINUTE);
            assertEquals("yyyy", DateTimeUtil.COMMON_PATTERN_YEAR);
            assertEquals("yyyyMM", DateTimeUtil.COMMON_PATTERN_MONTH);
            assertEquals("yyyy-MM", DateTimeUtil.COMMON_PATTERN_TO_MONTH);
            assertEquals("yyyyMMdd", DateTimeUtil.COMMON_PATTERN_DAY);
            assertEquals("yyyy-MM-dd", DateTimeUtil.COMMON_PATTERN_TO_DAY);
            assertEquals("yyyyMMddHH", DateTimeUtil.COMMON_PATTERN_HOUR);
            assertEquals("yyyy-MM-dd HH", DateTimeUtil.COMMON_PATTERN_TO_HOUR);
            assertEquals("MM-dd", DateTimeUtil.COMMON_PATTERN_MONTH_DAY);
            assertEquals("dd", DateTimeUtil.COMMON_PATTERN_DAY_OF_MONTH);
        }
    }

    // ==================== 十一、边界场景测试 ====================

    @Nested
    @DisplayName("11. 边界场景")
    class EdgeCaseTests {

        @Test
        @DisplayName("闰年2月29日处理")
        void testLeapYear() {
            Date leapDay = buildDate(2024, 2, 29);
            assertEquals("2024-02-29", DateTimeUtil.getDateTime(leapDay, DateTimeUtil.COMMON_PATTERN_TO_DAY));
            assertEquals(29, DateTimeUtil.getDateTimeLastDay(leapDay));
        }

        @Test
        @DisplayName("年末12月加1月跨年")
        void testCrossYearMonth() {
            Date dec = buildDate(2025, 12, 15);
            Date result = DateTimeUtil.addMonths(dec, 1);
            assertNotNull(result);
            assertEquals("2026-01-15", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("年末加1天跨年")
        void testCrossYearDay() {
            Date decLast = buildDate(2025, 12, 31);
            Date result = DateTimeUtil.addDays(decLast, 1);
            assertNotNull(result);
            assertEquals("2026-01-01", DateTimeUtil.getDateTime(result, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }

        @Test
        @DisplayName("daysBetween - 跨年天数")
        void testDaysBetweenCrossYear() {
            assertEquals(31, DateTimeUtil.daysBetween("2025-12-01", "2026-01-01"));
        }

        @Test
        @DisplayName("addDays(0) - 加0天不变")
        void testAddDaysZero() {
            Date date = buildDate(2025, 6, 15, 10, 30, 0);
            Date result = DateTimeUtil.addDays(date, 0);
            assertNotNull(result);
            assertEquals(DateTimeUtil.getDateTime(date), DateTimeUtil.getDateTime(result));
        }

        @Test
        @DisplayName("getLoopTime - DAY 跨月边界 3月1日 -> 2月28日")
        void testGetLoopTimeDayCrossMonth() {
            Date date = buildDate(2025, 3, 1);
            Date loop = DateTimeUtil.getLoopTime(TimeTypeConst.TIME_TYPE_DAY, date);
            assertNotNull(loop);
            assertEquals("2025-02-28", DateTimeUtil.getDateTime(loop, DateTimeUtil.COMMON_PATTERN_TO_DAY));
        }
    }
}
