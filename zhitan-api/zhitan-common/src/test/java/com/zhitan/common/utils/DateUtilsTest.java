package com.zhitan.common.utils;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import static org.junit.jupiter.api.Assertions.*;

/**
 * DateUtils 时间工具类单元测试
 * 覆盖：日期解析、日期计算、格式化输出、日期区间生成等方法
 */
@DisplayName("DateUtils 时间工具类测试")
class DateUtilsTest {

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

    // ==================== 一、格式化常量测试 ====================

    @Nested
    @DisplayName("1. 格式化常量验证")
    class FormatConstantTests {

        @Test
        @DisplayName("日期格式常量值正确")
        void testFormatConstants() {
            assertEquals("yyyy", DateUtils.YYYY);
            assertEquals("yyyy-MM", DateUtils.YYYY_MM);
            assertEquals("yyyy-MM-dd", DateUtils.YYYY_MM_DD);
            assertEquals("yyyyMMddHHmmss", DateUtils.YYYYMMDDHHMMSS);
            assertEquals("yyyy-MM-dd HH:mm:ss", DateUtils.YYYY_MM_DD_HH_MM_SS);
        }
    }

    // ==================== 二、获取当前时间测试 ====================

    @Nested
    @DisplayName("2. 获取当前时间")
    class GetCurrentTimeTests {

        @Test
        @DisplayName("getNowDate() - 获取当前 Date 型日期，不为 null")
        void testGetNowDate() {
            Date now = DateUtils.getNowDate();
            assertNotNull(now);
            // 与系统当前时间差应小于 1 秒
            long diff = Math.abs(System.currentTimeMillis() - now.getTime());
            assertTrue(diff < 1000);
        }

        @Test
        @DisplayName("getDate() - 获取当前日期字符串，格式 yyyy-MM-dd")
        void testGetDate() {
            String date = DateUtils.getDate();
            assertNotNull(date);
            assertEquals(10, date.length());
            // 验证格式正确（能被解析）
            assertDoesNotThrow(() -> new SimpleDateFormat(DateUtils.YYYY_MM_DD).parse(date));
        }

        @Test
        @DisplayName("getTime() - 获取当前时间字符串，格式 yyyy-MM-dd HH:mm:ss")
        void testGetTime() {
            String time = DateUtils.getTime();
            assertNotNull(time);
            assertEquals(19, time.length());
            assertDoesNotThrow(() -> new SimpleDateFormat(DateUtils.YYYY_MM_DD_HH_MM_SS).parse(time));
        }

        @Test
        @DisplayName("dateTimeNow() - 获取当前时间，格式 yyyyMMddHHmmss")
        void testDateTimeNow() {
            String now = DateUtils.dateTimeNow();
            assertNotNull(now);
            assertEquals(14, now.length());
            assertDoesNotThrow(() -> new SimpleDateFormat(DateUtils.YYYYMMDDHHMMSS).parse(now));
        }

        @Test
        @DisplayName("dateTimeNow(format) - 自定义格式获取当前时间")
        void testDateTimeNowWithFormat() {
            String yearOnly = DateUtils.dateTimeNow(DateUtils.YYYY);
            assertNotNull(yearOnly);
            assertEquals(4, yearOnly.length());
            int year = Integer.parseInt(yearOnly);
            assertTrue(year >= 2024 && year <= 2100);

            String monthOnly = DateUtils.dateTimeNow(DateUtils.YYYY_MM);
            assertNotNull(monthOnly);
            assertEquals(7, monthOnly.length());
        }
    }

    // ==================== 三、日期格式化输出测试 ====================

    @Nested
    @DisplayName("3. 日期格式化输出")
    class DateFormatTests {

        @Test
        @DisplayName("dateTime(Date) - 将日期转成 yyyy-MM-dd 格式字符串")
        void testDateTime() {
            Date date = buildDate(2025, 3, 15, 10, 30, 45);
            assertEquals("2025-03-15", DateUtils.dateTime(date));
        }

        @Test
        @DisplayName("dateTime(Date) - 月初补零")
        void testDateTimeMonthPadding() {
            Date date = buildDate(2025, 1, 5);
            assertEquals("2025-01-05", DateUtils.dateTime(date));
        }

        @Test
        @DisplayName("parseDateToStr(format, date) - 自定义格式输出")
        void testParseDateToStr() {
            Date date = buildDate(2025, 6, 15, 14, 30, 45);
            assertEquals("2025-06-15 14:30:45", DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, date));
            assertEquals("2025-06-15", DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD, date));
            assertEquals("2025-06", DateUtils.parseDateToStr(DateUtils.YYYY_MM, date));
            assertEquals("2025", DateUtils.parseDateToStr(DateUtils.YYYY, date));
            assertEquals("20250615143045", DateUtils.parseDateToStr(DateUtils.YYYYMMDDHHMMSS, date));
        }

        @Test
        @DisplayName("datePath() - 获取日期路径 yyyy/MM/dd")
        void testDatePath() {
            String path = DateUtils.datePath();
            assertNotNull(path);
            // 格式：yyyy/MM/dd 长度为 10
            assertEquals(10, path.length());
            assertTrue(path.matches("\\d{4}/\\d{2}/\\d{2}"));
        }

        @Test
        @DisplayName("dateTime() 无参 - 获取日期 yyyyMMdd")
        void testDateTimeNoArg() {
            String dt = DateUtils.dateTime();
            assertNotNull(dt);
            assertEquals(8, dt.length());
            assertTrue(dt.matches("\\d{8}"));
        }

        @Test
        @DisplayName("getHhMmSs(Date) - 获取时间部分 HH:mm:ss")
        void testGetHhMmSs() {
            Date date = buildDate(2025, 3, 15, 14, 30, 45);
            assertEquals("14:30:45", DateUtils.getHhMmSs(date));
        }

        @Test
        @DisplayName("getHhMmSs(Date) - 午夜时间 00:00:00")
        void testGetHhMmSsMidnight() {
            Date date = buildDate(2025, 3, 15, 0, 0, 0);
            assertEquals("00:00:00", DateUtils.getHhMmSs(date));
        }

        @Test
        @DisplayName("getHhMmSs(Date) - 最大时间 23:59:59")
        void testGetHhMmSsMax() {
            Date date = buildDate(2025, 3, 15, 23, 59, 59);
            assertEquals("23:59:59", DateUtils.getHhMmSs(date));
        }
    }

    // ==================== 四、日期解析测试 ====================

    @Nested
    @DisplayName("4. 日期解析")
    class DateParseTests {

        @Test
        @DisplayName("dateTime(format, ts) - 默认格式解析 yyyy-MM-dd HH:mm:ss")
        void testDateTimeParseDefault() {
            Date date = DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, "2025-03-15 10:30:45");
            assertNotNull(date);
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);
            assertEquals(2025, cal.get(Calendar.YEAR));
            assertEquals(Calendar.MARCH, cal.get(Calendar.MONTH));
            assertEquals(15, cal.get(Calendar.DAY_OF_MONTH));
            assertEquals(10, cal.get(Calendar.HOUR_OF_DAY));
            assertEquals(30, cal.get(Calendar.MINUTE));
            assertEquals(45, cal.get(Calendar.SECOND));
        }

        @Test
        @DisplayName("dateTime(format, ts) - 仅日期格式 yyyy-MM-dd")
        void testDateTimeParseDateOnly() {
            Date date = DateUtils.dateTime(DateUtils.YYYY_MM_DD, "2025-06-01");
            assertNotNull(date);
            assertEquals("2025-06-01", DateUtils.dateTime(date));
        }

        @Test
        @DisplayName("dateTime(format, ts) - 紧凑格式 yyyyMMddHHmmss")
        void testDateTimeParseCompact() {
            Date date = DateUtils.dateTime(DateUtils.YYYYMMDDHHMMSS, "20250315103045");
            assertNotNull(date);
            assertEquals("2025-03-15 10:30:45", DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, date));
        }

        @Test
        @DisplayName("dateTime(format, ts) - 非法格式抛出 RuntimeException")
        void testDateTimeParseInvalid() {
            assertThrows(RuntimeException.class, () ->
                    DateUtils.dateTime(DateUtils.YYYY_MM_DD, "invalid-date"));
        }

        @Test
        @DisplayName("parseDate(Object) - yyyy-MM-dd 格式解析")
        void testParseDateDash() {
            Date date = DateUtils.parseDate("2025-03-15");
            assertNotNull(date);
            assertEquals("2025-03-15", DateUtils.dateTime(date));
        }

        @Test
        @DisplayName("parseDate(Object) - yyyy-MM-dd HH:mm:ss 格式解析")
        void testParseDateDashFull() {
            Date date = DateUtils.parseDate("2025-03-15 10:30:00");
            assertNotNull(date);
            assertEquals("2025-03-15 10:30:00", DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, date));
        }

        @Test
        @DisplayName("parseDate(Object) - yyyy-MM-dd HH:mm 格式解析")
        void testParseDateDashMinute() {
            Date date = DateUtils.parseDate("2025-03-15 10:30");
            assertNotNull(date);
            assertEquals("2025-03-15 10:30:00", DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, date));
        }

        @Test
        @DisplayName("parseDate(Object) - yyyy-MM 格式解析")
        void testParseDateMonth() {
            Date date = DateUtils.parseDate("2025-03");
            assertNotNull(date);
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);
            assertEquals(2025, cal.get(Calendar.YEAR));
            assertEquals(Calendar.MARCH, cal.get(Calendar.MONTH));
        }

        @Test
        @DisplayName("parseDate(Object) - yyyy/MM/dd 格式解析")
        void testParseDateSlash() {
            Date date = DateUtils.parseDate("2025/03/15");
            assertNotNull(date);
            assertEquals("2025-03-15", DateUtils.dateTime(date));
        }

        @Test
        @DisplayName("parseDate(Object) - yyyy/MM/dd HH:mm:ss 格式解析")
        void testParseDateSlashFull() {
            Date date = DateUtils.parseDate("2025/03/15 10:30:00");
            assertNotNull(date);
            assertEquals("2025-03-15 10:30:00", DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, date));
        }

        @Test
        @DisplayName("parseDate(Object) - yyyy.MM.dd 格式解析")
        void testParseDateDot() {
            Date date = DateUtils.parseDate("2025.03.15");
            assertNotNull(date);
            assertEquals("2025-03-15", DateUtils.dateTime(date));
        }

        @Test
        @DisplayName("parseDate(Object) - yyyy.MM.dd HH:mm:ss 格式解析")
        void testParseDateDotFull() {
            Date date = DateUtils.parseDate("2025.03.15 10:30:00");
            assertNotNull(date);
            assertEquals("2025-03-15 10:30:00", DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, date));
        }

        @Test
        @DisplayName("parseDate(Object) - null 返回 null")
        void testParseDateNull() {
            assertNull(DateUtils.parseDate(null));
        }

        @Test
        @DisplayName("parseDate(Object) - 非法格式返回 null")
        void testParseDateInvalid() {
            assertNull(DateUtils.parseDate("invalid-date"));
            assertNull(DateUtils.parseDate("abc123"));
            assertNull(DateUtils.parseDate(""));
        }
    }

    // ==================== 五、日期计算 - 相差天数测试 ====================

    @Nested
    @DisplayName("5. 日期计算 - 相差天数")
    class DifferentDaysTests {

        @Test
        @DisplayName("differentDaysByMillisecond - 相差 30 天")
        void testDifferentDays30() {
            Date date1 = buildDate(2025, 1, 1);
            Date date2 = buildDate(2025, 1, 31);
            assertEquals(30, DateUtils.differentDaysByMillisecond(date1, date2));
        }

        @Test
        @DisplayName("differentDaysByMillisecond - 同一天返回 0")
        void testDifferentDaysSameDay() {
            Date date = buildDate(2025, 6, 15);
            assertEquals(0, DateUtils.differentDaysByMillisecond(date, date));
        }

        @Test
        @DisplayName("differentDaysByMillisecond - 结果为绝对值（date1 > date2）")
        void testDifferentDaysAbsolute() {
            Date date1 = buildDate(2025, 3, 15);
            Date date2 = buildDate(2025, 3, 1);
            assertEquals(14, DateUtils.differentDaysByMillisecond(date1, date2));
        }

        @Test
        @DisplayName("differentDaysByMillisecond - 跨年天数")
        void testDifferentDaysCrossYear() {
            Date date1 = buildDate(2025, 12, 1);
            Date date2 = buildDate(2026, 1, 1);
            assertEquals(31, DateUtils.differentDaysByMillisecond(date1, date2));
        }

        @Test
        @DisplayName("differentDaysByMillisecond - 闰年2月")
        void testDifferentDaysLeapYear() {
            Date date1 = buildDate(2024, 2, 1);
            Date date2 = buildDate(2024, 3, 1);
            assertEquals(29, DateUtils.differentDaysByMillisecond(date1, date2));
        }

        @Test
        @DisplayName("differentDaysByMillisecond - 非闰年2月")
        void testDifferentDaysNonLeapYear() {
            Date date1 = buildDate(2025, 2, 1);
            Date date2 = buildDate(2025, 3, 1);
            assertEquals(28, DateUtils.differentDaysByMillisecond(date1, date2));
        }

        @Test
        @DisplayName("differentDaysByMillisecond - 相差 1 天")
        void testDifferentDaysOneDay() {
            Date date1 = buildDate(2025, 6, 15);
            Date date2 = buildDate(2025, 6, 16);
            assertEquals(1, DateUtils.differentDaysByMillisecond(date1, date2));
        }

        @Test
        @DisplayName("differentDaysByMillisecond - 大跨度天数")
        void testDifferentDaysLargeRange() {
            Date date1 = buildDate(2025, 1, 1);
            Date date2 = buildDate(2025, 12, 31);
            assertEquals(364, DateUtils.differentDaysByMillisecond(date1, date2));
        }
    }

    // ==================== 六、时间差格式化输出测试 ====================

    @Nested
    @DisplayName("6. 时间差格式化输出")
    class TimeDistanceTests {

        @Test
        @DisplayName("timeDistance - 恰好 1 天")
        void testTimeDistanceOneDay() {
            Date start = buildDate(2025, 3, 15, 10, 0, 0);
            Date end = buildDate(2025, 3, 16, 10, 0, 0);
            assertEquals("1天0小时0分钟", DateUtils.timeDistance(end, start));
        }

        @Test
        @DisplayName("timeDistance - 天+小时+分钟")
        void testTimeDistanceFull() {
            Date start = buildDate(2025, 3, 15, 8, 0, 0);
            Date end = buildDate(2025, 3, 17, 11, 30, 0);
            assertEquals("2天3小时30分钟", DateUtils.timeDistance(end, start));
        }

        @Test
        @DisplayName("timeDistance - 不足 1 天")
        void testTimeDistanceLessThanDay() {
            Date start = buildDate(2025, 3, 15, 10, 0, 0);
            Date end = buildDate(2025, 3, 15, 14, 30, 0);
            assertEquals("0天4小时30分钟", DateUtils.timeDistance(end, start));
        }

        @Test
        @DisplayName("timeDistance - 不足 1 小时")
        void testTimeDistanceLessThanHour() {
            Date start = buildDate(2025, 3, 15, 10, 0, 0);
            Date end = buildDate(2025, 3, 15, 10, 45, 0);
            assertEquals("0天0小时45分钟", DateUtils.timeDistance(end, start));
        }

        @Test
        @DisplayName("timeDistance - 相同时间返回 0天0小时0分钟")
        void testTimeDistanceSame() {
            Date date = buildDate(2025, 6, 15, 10, 30, 0);
            assertEquals("0天0小时0分钟", DateUtils.timeDistance(date, date));
        }

        @Test
        @DisplayName("timeDistance - 仅分钟差异")
        void testTimeDistanceMinutesOnly() {
            Date start = buildDate(2025, 3, 15, 10, 10, 0);
            Date end = buildDate(2025, 3, 15, 10, 25, 0);
            assertEquals("0天0小时15分钟", DateUtils.timeDistance(end, start));
        }

        @Test
        @DisplayName("timeDistance - 大跨度天数")
        void testTimeDistanceLargeRange() {
            Date start = buildDate(2025, 1, 1, 0, 0, 0);
            Date end = buildDate(2025, 4, 1, 0, 0, 0);
            assertEquals("90天0小时0分钟", DateUtils.timeDistance(end, start));
        }
    }

    // ==================== 七、LocalDate / LocalDateTime 转换测试 ====================

    @Nested
    @DisplayName("7. LocalDate / LocalDateTime 转换")
    class LocalDateConvertTests {

        @Test
        @DisplayName("toDate(LocalDateTime) - LocalDateTime 转 Date")
        void testToDateLocalDateTime() {
            LocalDateTime ldt = LocalDateTime.of(2025, 3, 15, 10, 30, 0);
            Date date = DateUtils.toDate(ldt);
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
        @DisplayName("toDate(LocalDateTime) - 午夜时间")
        void testToDateLocalDateTimeMidnight() {
            LocalDateTime ldt = LocalDateTime.of(2025, 6, 1, 0, 0, 0);
            Date date = DateUtils.toDate(ldt);
            assertNotNull(date);
            assertEquals("2025-06-01 00:00:00", DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, date));
        }

        @Test
        @DisplayName("toDate(LocalDate) - LocalDate 转 Date，时间为 00:00:00")
        void testToDateLocalDate() {
            LocalDate ld = LocalDate.of(2025, 3, 15);
            Date date = DateUtils.toDate(ld);
            assertNotNull(date);
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);
            assertEquals(2025, cal.get(Calendar.YEAR));
            assertEquals(Calendar.MARCH, cal.get(Calendar.MONTH));
            assertEquals(15, cal.get(Calendar.DAY_OF_MONTH));
            assertEquals(0, cal.get(Calendar.HOUR_OF_DAY));
            assertEquals(0, cal.get(Calendar.MINUTE));
            assertEquals(0, cal.get(Calendar.SECOND));
        }

        @Test
        @DisplayName("toDate(LocalDate) - 年末日期")
        void testToDateLocalDateYearEnd() {
            LocalDate ld = LocalDate.of(2025, 12, 31);
            Date date = DateUtils.toDate(ld);
            assertNotNull(date);
            assertEquals("2025-12-31", DateUtils.dateTime(date));
        }

        @Test
        @DisplayName("toDate(LocalDate) - 闰年2月29日")
        void testToDateLocalDateLeapYear() {
            LocalDate ld = LocalDate.of(2024, 2, 29);
            Date date = DateUtils.toDate(ld);
            assertNotNull(date);
            assertEquals("2024-02-29", DateUtils.dateTime(date));
        }

        @Test
        @DisplayName("toDate(LocalDateTime) 和 toDate(LocalDate) 同日期结果一致")
        void testToDateConsistency() {
            LocalDate ld = LocalDate.of(2025, 7, 20);
            LocalDateTime ldt = LocalDateTime.of(2025, 7, 20, 0, 0, 0);
            Date dateFromLd = DateUtils.toDate(ld);
            Date dateFromLdt = DateUtils.toDate(ldt);
            assertEquals(dateFromLd, dateFromLdt);
        }
    }

    // ==================== 八、获取月份天数数组测试 ====================

    @Nested
    @DisplayName("8. 获取月份天数数组（getDays）")
    class GetDaysTests {

        @Test
        @DisplayName("getDays - 1月返回 31 天")
        void testGetDaysJanuary() {
            Date date = buildDate(2025, 1, 15);
            String[] days = DateUtils.getDays(date);
            assertEquals(31, days.length);
            assertEquals("01", days[0]);
            assertEquals("31", days[30]);
        }

        @Test
        @DisplayName("getDays - 2月非闰年返回 28 天")
        void testGetDaysFebruaryNonLeap() {
            Date date = buildDate(2025, 2, 10);
            String[] days = DateUtils.getDays(date);
            assertEquals(28, days.length);
            assertEquals("01", days[0]);
            assertEquals("28", days[27]);
        }

        @Test
        @DisplayName("getDays - 2月闰年返回 29 天")
        void testGetDaysFebruaryLeap() {
            Date date = buildDate(2024, 2, 10);
            String[] days = DateUtils.getDays(date);
            assertEquals(29, days.length);
            assertEquals("29", days[28]);
        }

        @Test
        @DisplayName("getDays - 4月返回 30 天")
        void testGetDaysApril() {
            Date date = buildDate(2025, 4, 1);
            String[] days = DateUtils.getDays(date);
            assertEquals(30, days.length);
            assertEquals("30", days[29]);
        }

        @Test
        @DisplayName("getDays - 12月返回 31 天")
        void testGetDaysDecember() {
            Date date = buildDate(2025, 12, 1);
            String[] days = DateUtils.getDays(date);
            assertEquals(31, days.length);
            assertEquals("31", days[30]);
        }

        @Test
        @DisplayName("getDays - 日期值格式为两位数零填充")
        void testGetDaysFormat() {
            Date date = buildDate(2025, 3, 1);
            String[] days = DateUtils.getDays(date);
            assertEquals(31, days.length);
            // 验证前9天都是两位零填充
            for (int i = 0; i < 9; i++) {
                assertEquals(2, days[i].length());
                assertTrue(days[i].startsWith("0"));
            }
            assertEquals("01", days[0]);
            assertEquals("09", days[8]);
            assertEquals("10", days[9]);
        }

        @Test
        @DisplayName("getDays - null 抛出 IllegalArgumentException")
        void testGetDaysNull() {
            assertThrows(IllegalArgumentException.class, () -> DateUtils.getDays(null));
        }

        @Test
        @DisplayName("getDays - 6月返回 30 天")
        void testGetDaysJune() {
            Date date = buildDate(2025, 6, 15);
            String[] days = DateUtils.getDays(date);
            assertEquals(30, days.length);
        }

        @Test
        @DisplayName("getDays - 9月返回 30 天")
        void testGetDaysSeptember() {
            Date date = buildDate(2025, 9, 1);
            String[] days = DateUtils.getDays(date);
            assertEquals(30, days.length);
        }

        @Test
        @DisplayName("getDays - 7月返回 31 天")
        void testGetDaysJuly() {
            Date date = buildDate(2025, 7, 20);
            String[] days = DateUtils.getDays(date);
            assertEquals(31, days.length);
        }
    }

    // ==================== 九、服务器启动时间测试 ====================

    @Nested
    @DisplayName("9. 服务器启动时间")
    class ServerStartDateTests {

        @Test
        @DisplayName("getServerStartDate() - 获取服务器启动时间，不为 null")
        void testGetServerStartDate() {
            Date startDate = DateUtils.getServerStartDate();
            assertNotNull(startDate);
        }

        @Test
        @DisplayName("getServerStartDate() - 启动时间应早于或等于当前时间")
        void testGetServerStartDateBeforeNow() {
            Date startDate = DateUtils.getServerStartDate();
            Date now = new Date();
            assertTrue(startDate.getTime() <= now.getTime());
        }
    }

    // ==================== 十、边界场景测试 ====================

    @Nested
    @DisplayName("10. 边界场景")
    class EdgeCaseTests {

        @Test
        @DisplayName("格式化与解析互为逆操作")
        void testFormatParseRoundTrip() {
            Date original = buildDate(2025, 8, 20, 15, 45, 30);
            String formatted = DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, original);
            Date parsed = DateUtils.dateTime(DateUtils.YYYY_MM_DD_HH_MM_SS, formatted);
            assertEquals(original, parsed);
        }

        @Test
        @DisplayName("dateTime(Date) 与 parseDateToStr(YYYY_MM_DD, date) 结果一致")
        void testDateTimeConsistency() {
            Date date = buildDate(2025, 11, 30);
            assertEquals(
                    DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD, date),
                    DateUtils.dateTime(date)
            );
        }

        @Test
        @DisplayName("differentDaysByMillisecond 满足交换律（绝对值）")
        void testDifferentDaysCommutative() {
            Date date1 = buildDate(2025, 1, 1);
            Date date2 = buildDate(2025, 6, 1);
            assertEquals(
                    DateUtils.differentDaysByMillisecond(date1, date2),
                    DateUtils.differentDaysByMillisecond(date2, date1)
            );
        }

        @Test
        @DisplayName("timeDistance - endDate 早于 startTime 产生负值")
        void testTimeDistanceNegative() {
            Date start = buildDate(2025, 3, 17, 10, 0, 0);
            Date end = buildDate(2025, 3, 15, 10, 0, 0);
            String result = DateUtils.timeDistance(end, start);
            // 结果为负数天
            assertTrue(result.startsWith("-"));
        }

        @Test
        @DisplayName("parseDate - 所有支持的格式都能正确解析")
        void testParseAllPatterns() {
            assertNotNull(DateUtils.parseDate("2025-03-15"));
            assertNotNull(DateUtils.parseDate("2025-03-15 10:30:00"));
            assertNotNull(DateUtils.parseDate("2025-03-15 10:30"));
            assertNotNull(DateUtils.parseDate("2025-03"));
            assertNotNull(DateUtils.parseDate("2025/03/15"));
            assertNotNull(DateUtils.parseDate("2025/03/15 10:30:00"));
            assertNotNull(DateUtils.parseDate("2025/03/15 10:30"));
            assertNotNull(DateUtils.parseDate("2025/03"));
            assertNotNull(DateUtils.parseDate("2025.03.15"));
            assertNotNull(DateUtils.parseDate("2025.03.15 10:30:00"));
            assertNotNull(DateUtils.parseDate("2025.03.15 10:30"));
            assertNotNull(DateUtils.parseDate("2025.03"));
        }

        @Test
        @DisplayName("getDays - 遍历全年各月天数正确")
        void testGetDaysAllMonths() {
            int[] expectedDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
            for (int month = 1; month <= 12; month++) {
                Date date = buildDate(2025, month, 1);
                String[] days = DateUtils.getDays(date);
                assertEquals(expectedDays[month - 1], days.length,
                        "Month " + month + " should have " + expectedDays[month - 1] + " days");
            }
        }

        @Test
        @DisplayName("getDays - 闰年遍历全年各月天数正确")
        void testGetDaysAllMonthsLeapYear() {
            int[] expectedDays = {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
            for (int month = 1; month <= 12; month++) {
                Date date = buildDate(2024, month, 1);
                String[] days = DateUtils.getDays(date);
                assertEquals(expectedDays[month - 1], days.length,
                        "Leap year month " + month + " should have " + expectedDays[month - 1] + " days");
            }
        }

        @Test
        @DisplayName("differentDaysByMillisecond - 毫秒精度截断为天")
        void testDifferentDaysMillisecondPrecision() {
            // 相差 23 小时 59 分，不足一天应返回 0
            Date date1 = buildDate(2025, 3, 15, 0, 0, 0);
            Date date2 = buildDate(2025, 3, 15, 23, 59, 0);
            assertEquals(0, DateUtils.differentDaysByMillisecond(date1, date2));
        }
    }
}
