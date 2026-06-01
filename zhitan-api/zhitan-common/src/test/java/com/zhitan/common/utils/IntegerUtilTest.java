package com.zhitan.common.utils;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * IntegerUtil 整数工具类 单元测试
 *
 * @author zhitan
 */
@DisplayName("IntegerUtil 整数工具类测试")
class IntegerUtilTest {

    // ==================== toInt(String) 测试 ====================

    @Nested
    @DisplayName("字符串转 int - toInt(String)")
    class ToIntStringTests {

        @Test
        @DisplayName("正常正整数字符串转换")
        void toInt_positiveInteger() {
            assertEquals(100, IntegerUtil.toInt("100"));
        }

        @Test
        @DisplayName("正常负整数字符串转换")
        void toInt_negativeInteger() {
            assertEquals(-50, IntegerUtil.toInt("-50"));
        }

        @Test
        @DisplayName("零字符串转换")
        void toInt_zeroString() {
            assertEquals(0, IntegerUtil.toInt("0"));
        }

        @Test
        @DisplayName("非数字字符串返回0")
        void toInt_invalidString() {
            assertEquals(0, IntegerUtil.toInt("abc"));
        }

        @Test
        @DisplayName("空字符串返回0")
        void toInt_emptyString() {
            assertEquals(0, IntegerUtil.toInt(""));
        }

        @Test
        @DisplayName("null 返回0")
        void toInt_nullString() {
            assertEquals(0, IntegerUtil.toInt((String) null));
        }

        @Test
        @DisplayName("带小数点的字符串返回0（非整数格式）")
        void toInt_decimalString() {
            // Integer.parseInt 无法解析带小数点的字符串
            assertEquals(0, IntegerUtil.toInt("3.14"));
        }

        @Test
        @DisplayName("最大整数字符串转换")
        void toInt_maxInteger() {
            assertEquals(Integer.MAX_VALUE, IntegerUtil.toInt(String.valueOf(Integer.MAX_VALUE)));
        }

        @Test
        @DisplayName("最小整数字符串转换")
        void toInt_minInteger() {
            assertEquals(Integer.MIN_VALUE, IntegerUtil.toInt(String.valueOf(Integer.MIN_VALUE)));
        }

        @Test
        @DisplayName("超出整数范围的字符串返回0")
        void toInt_overflowString() {
            // 超出 int 范围会抛出 NumberFormatException，工具类捕获后返回 0
            assertEquals(0, IntegerUtil.toInt("99999999999999"));
        }

        @Test
        @DisplayName("带空格的字符串返回0")
        void toInt_stringWithSpaces() {
            assertEquals(0, IntegerUtil.toInt(" 100 "));
        }

        @Test
        @DisplayName("能源场景 - 设备编号字符串转换")
        void toInt_deviceId() {
            assertEquals(1024, IntegerUtil.toInt("1024"));
        }
    }

    // ==================== toInt(long) 测试 ====================

    @Nested
    @DisplayName("long 转 int - toInt(long)")
    class ToIntLongTests {

        @Test
        @DisplayName("正常 long 值转换")
        void toInt_normalLong() {
            assertEquals(100, IntegerUtil.toInt(100L));
        }

        @Test
        @DisplayName("负 long 值转换")
        void toInt_negativeLong() {
            assertEquals(-50, IntegerUtil.toInt(-50L));
        }

        @Test
        @DisplayName("零值转换")
        void toInt_zeroLong() {
            assertEquals(0, IntegerUtil.toInt(0L));
        }

        @Test
        @DisplayName("int 范围内的最大 long 值")
        void toInt_maxIntRangeLong() {
            assertEquals(Integer.MAX_VALUE, IntegerUtil.toInt((long) Integer.MAX_VALUE));
        }

        @Test
        @DisplayName("int 范围内的最小 long 值")
        void toInt_minIntRangeLong() {
            assertEquals(Integer.MIN_VALUE, IntegerUtil.toInt((long) Integer.MIN_VALUE));
        }

        @Test
        @DisplayName("能源场景 - 累计运行时长转换")
        void toInt_runningHours() {
            assertEquals(8760, IntegerUtil.toInt(8760L)); // 一年小时数
        }
    }
}
