package com.zhitan.common.utils;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * DoubleUtil 数字工具类 单元测试
 *
 * @author zhitan
 */
@DisplayName("DoubleUtil 数字工具类测试")
class DoubleUtilTest {

    // ==================== toDouble(String) 测试 ====================

    @Nested
    @DisplayName("字符串转 double - toDouble(String)")
    class ToDoubleStringTests {

        @Test
        @DisplayName("正常整数字符串转换")
        void toDouble_integerString() {
            assertEquals(100.0, DoubleUtil.toDouble("100"), 0.0001);
        }

        @Test
        @DisplayName("正常小数字符串转换")
        void toDouble_decimalString() {
            assertEquals(3.14, DoubleUtil.toDouble("3.14"), 0.0001);
        }

        @Test
        @DisplayName("负数字符串转换")
        void toDouble_negativeString() {
            assertEquals(-5.5, DoubleUtil.toDouble("-5.5"), 0.0001);
        }

        @Test
        @DisplayName("零字符串转换")
        void toDouble_zeroString() {
            assertEquals(0.0, DoubleUtil.toDouble("0"), 0.0001);
            assertEquals(0.0, DoubleUtil.toDouble("0.0"), 0.0001);
        }

        @Test
        @DisplayName("非数字字符串返回0")
        void toDouble_invalidString() {
            assertEquals(0.0, DoubleUtil.toDouble("abc"), 0.0001);
        }

        @Test
        @DisplayName("空字符串返回0")
        void toDouble_emptyString() {
            assertEquals(0.0, DoubleUtil.toDouble(""), 0.0001);
        }

        @Test
        @DisplayName("null 字符串返回0")
        void toDouble_nullString() {
            assertEquals(0.0, DoubleUtil.toDouble((String) null), 0.0001);
        }

        @Test
        @DisplayName("科学计数法字符串")
        void toDouble_scientificNotation() {
            assertEquals(1000.0, DoubleUtil.toDouble("1.0E3"), 0.0001);
        }

        @Test
        @DisplayName("能源场景 - 电量字符串转换")
        void toDouble_energyReading() {
            assertEquals(12345.67, DoubleUtil.toDouble("12345.67"), 0.001);
        }
    }

    // ==================== toDouble(long) 测试 ====================

    @Nested
    @DisplayName("long 转 double - toDouble(long)")
    class ToDoubleLongTests {

        @Test
        @DisplayName("正 long 值转换")
        void toDouble_positiveLong() {
            assertEquals(100.0, DoubleUtil.toDouble(100L), 0.0001);
        }

        @Test
        @DisplayName("负 long 值转换")
        void toDouble_negativeLong() {
            assertEquals(-50.0, DoubleUtil.toDouble(-50L), 0.0001);
        }

        @Test
        @DisplayName("零值转换")
        void toDouble_zeroLong() {
            assertEquals(0.0, DoubleUtil.toDouble(0L), 0.0001);
        }
    }

    // ==================== toDouble(Object) 测试 ====================

    @Nested
    @DisplayName("Object 转 double - toDouble(Object)")
    class ToDoubleObjectTests {

        @Test
        @DisplayName("Integer 对象转换")
        void toDouble_integerObject() {
            assertEquals(42.0, DoubleUtil.toDouble((Object) 42), 0.0001);
        }

        @Test
        @DisplayName("Double 对象转换")
        void toDouble_doubleObject() {
            assertEquals(3.14, DoubleUtil.toDouble((Object) 3.14), 0.0001);
        }

        @Test
        @DisplayName("String 对象转换")
        void toDouble_stringObject() {
            assertEquals(99.9, DoubleUtil.toDouble((Object) "99.9"), 0.0001);
        }

        @Test
        @DisplayName("null 对象返回0")
        void toDouble_nullObject() {
            assertEquals(0.0, DoubleUtil.toDouble((Object) null), 0.0001);
        }
    }

    // ==================== toDouble(int) 测试 ====================

    @Nested
    @DisplayName("int 转 double - toDouble(int)")
    class ToDoubleIntTests {

        @Test
        @DisplayName("正整数转换")
        void toDouble_positiveInt() {
            assertEquals(10.0, DoubleUtil.toDouble(10), 0.0001);
        }

        @Test
        @DisplayName("负整数转换")
        void toDouble_negativeInt() {
            assertEquals(-10.0, DoubleUtil.toDouble(-10), 0.0001);
        }

        @Test
        @DisplayName("零值转换")
        void toDouble_zeroInt() {
            assertEquals(0.0, DoubleUtil.toDouble(0), 0.0001);
        }
    }

    // ==================== formatDoubleToStr 测试 ====================

    @Nested
    @DisplayName("格式化小数字符串 - formatDoubleToStr")
    class FormatDoubleToStrTests {

        @Test
        @DisplayName("保留2位小数（默认）")
        void formatDoubleToStr_defaultTwoDecimal() {
            assertEquals("3.14", DoubleUtil.formatDoubleToStr(3.14159));
        }

        @Test
        @DisplayName("保留4位小数")
        void formatDoubleToStr_fourDecimal() {
            assertEquals("3.1416", DoubleUtil.formatDoubleToStr(3.14159, 4));
        }

        @Test
        @DisplayName("保留0位小数")
        void formatDoubleToStr_zeroDecimal() {
            assertEquals("3", DoubleUtil.formatDoubleToStr(3.14, 0));
        }

        @Test
        @DisplayName("null 值按0处理")
        void formatDoubleToStr_nullValue() {
            assertEquals("0.00", DoubleUtil.formatDoubleToStr(null));
        }

        @Test
        @DisplayName("整数格式化带小数")
        void formatDoubleToStr_integerValue() {
            assertEquals("100.00", DoubleUtil.formatDoubleToStr(100.0));
        }

        @Test
        @DisplayName("能源场景 - 电价格式化为2位小数")
        void formatDoubleToStr_energyPrice() {
            assertEquals("0.85", DoubleUtil.formatDoubleToStr(0.8543, 2));
        }
    }

    // ==================== formatDouble 测试 ====================

    @Nested
    @DisplayName("格式化小数 - formatDouble")
    class FormatDoubleTests {

        @Test
        @DisplayName("默认格式化为2位小数")
        void formatDouble_defaultTwoDecimal() {
            assertEquals(3.14, DoubleUtil.formatDouble(3.14159), 0.001);
        }

        @Test
        @DisplayName("格式化为3位小数")
        void formatDouble_threeDecimal() {
            assertEquals(3.142, DoubleUtil.formatDouble(3.14159, 3), 0.0001);
        }

        @Test
        @DisplayName("null 值返回0")
        void formatDouble_nullValue() {
            assertEquals(0.0, DoubleUtil.formatDouble(null), 0.0001);
        }

        @Test
        @DisplayName("整数格式化不变")
        void formatDouble_integerValue() {
            assertEquals(100.0, DoubleUtil.formatDouble(100.0), 0.001);
        }

        @Test
        @DisplayName("能源场景 - 碳排放系数精度格式化")
        void formatDouble_carbonCoefficient() {
            assertEquals(0.581, DoubleUtil.formatDouble(0.58099, 3), 0.0001);
        }
    }
}
