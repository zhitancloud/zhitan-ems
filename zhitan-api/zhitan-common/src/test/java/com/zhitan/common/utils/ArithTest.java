package com.zhitan.common.utils;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Arith 精确浮点数运算工具类 单元测试
 *
 * @author zhitan
 */
@DisplayName("Arith 精确运算工具类测试")
class ArithTest {

    // ==================== 加法测试 ====================

    @Nested
    @DisplayName("加法运算 add")
    class AddTests {

        @Test
        @DisplayName("两个正数相加")
        void add_positiveNumbers() {
            assertEquals(3.0, Arith.add(1.0, 2.0), 0.0001);
        }

        @Test
        @DisplayName("正数与负数相加")
        void add_positiveAndNegative() {
            assertEquals(-1.0, Arith.add(1.0, -2.0), 0.0001);
        }

        @Test
        @DisplayName("两个负数相加")
        void add_negativeNumbers() {
            assertEquals(-3.5, Arith.add(-1.5, -2.0), 0.0001);
        }

        @Test
        @DisplayName("与零相加")
        void add_withZero() {
            assertEquals(5.5, Arith.add(5.5, 0.0), 0.0001);
            assertEquals(5.5, Arith.add(0.0, 5.5), 0.0001);
        }

        @Test
        @DisplayName("小数精度相加 - 避免浮点误差")
        void add_decimalPrecision() {
            // 经典浮点精度问题：0.1 + 0.2 在原生 double 中不等于 0.3
            assertEquals(0.3, Arith.add(0.1, 0.2), 0.0001);
        }

        @Test
        @DisplayName("大数相加")
        void add_largeNumbers() {
            assertEquals(2000000000.0, Arith.add(1000000000.0, 1000000000.0), 0.0001);
        }

        @Test
        @DisplayName("多位小数相加")
        void add_multiDecimalPlaces() {
            assertEquals(0.333, Arith.add(0.111, 0.222), 0.0001);
        }
    }

    // ==================== 减法测试 ====================

    @Nested
    @DisplayName("减法运算 sub")
    class SubTests {

        @Test
        @DisplayName("正数相减 - 结果为正")
        void sub_positiveResult() {
            assertEquals(1.0, Arith.sub(3.0, 2.0), 0.0001);
        }

        @Test
        @DisplayName("正数相减 - 结果为负")
        void sub_negativeResult() {
            assertEquals(-1.0, Arith.sub(2.0, 3.0), 0.0001);
        }

        @Test
        @DisplayName("相同数相减等于零")
        void sub_sameNumbers() {
            assertEquals(0.0, Arith.sub(3.14, 3.14), 0.0001);
        }

        @Test
        @DisplayName("减去零")
        void sub_subtractZero() {
            assertEquals(5.5, Arith.sub(5.5, 0.0), 0.0001);
        }

        @Test
        @DisplayName("小数精度相减 - 避免浮点误差")
        void sub_decimalPrecision() {
            // 经典浮点精度问题：0.3 - 0.1 在原生 double 中不精确
            assertEquals(0.2, Arith.sub(0.3, 0.1), 0.0001);
        }
    }

    // ==================== 乘法测试 ====================

    @Nested
    @DisplayName("乘法运算 mul")
    class MulTests {

        @Test
        @DisplayName("两个正数相乘")
        void mul_positiveNumbers() {
            assertEquals(6.0, Arith.mul(2.0, 3.0), 0.0001);
        }

        @Test
        @DisplayName("正数与负数相乘")
        void mul_positiveAndNegative() {
            assertEquals(-6.0, Arith.mul(2.0, -3.0), 0.0001);
        }

        @Test
        @DisplayName("两个负数相乘")
        void mul_negativeNumbers() {
            assertEquals(6.0, Arith.mul(-2.0, -3.0), 0.0001);
        }

        @Test
        @DisplayName("与零相乘等于零")
        void mul_withZero() {
            assertEquals(0.0, Arith.mul(99.99, 0.0), 0.0001);
            assertEquals(0.0, Arith.mul(0.0, 99.99), 0.0001);
        }

        @Test
        @DisplayName("与1相乘等于原值")
        void mul_withOne() {
            assertEquals(3.14, Arith.mul(3.14, 1.0), 0.0001);
        }

        @Test
        @DisplayName("小数相乘精度验证")
        void mul_decimalPrecision() {
            assertEquals(0.02, Arith.mul(0.1, 0.2), 0.0001);
        }

        @Test
        @DisplayName("能源场景 - 电量 x 电价计算")
        void mul_energyCostScenario() {
            // 100.5 度电 x 0.85 元/度
            assertEquals(85.425, Arith.mul(100.5, 0.85), 0.001);
        }
    }

    // ==================== 除法测试 ====================

    @Nested
    @DisplayName("除法运算 div")
    class DivTests {

        @Test
        @DisplayName("整除运算")
        void div_exactDivision() {
            assertEquals(2.0, Arith.div(6.0, 3.0), 0.0001);
        }

        @Test
        @DisplayName("默认精度除法（10位小数）")
        void div_defaultScale() {
            double result = Arith.div(1.0, 3.0);
            assertEquals(0.3333333333, result, 0.0000000001);
        }

        @Test
        @DisplayName("指定精度除法")
        void div_customScale() {
            assertEquals(0.33, Arith.div(1.0, 3.0, 2), 0.001);
            assertEquals(0.333, Arith.div(1.0, 3.0, 3), 0.0001);
        }

        @Test
        @DisplayName("被除数为零时返回零")
        void div_dividendZero() {
            assertEquals(0.0, Arith.div(0.0, 5.0), 0.0001);
        }

        @Test
        @DisplayName("精度为0时取整")
        void div_scaleZero() {
            assertEquals(3.0, Arith.div(7.0, 2.0, 0), 0.0001);
        }

        @Test
        @DisplayName("负数精度参数抛出异常")
        void div_negativeScaleThrowsException() {
            assertThrows(IllegalArgumentException.class, () -> Arith.div(1.0, 3.0, -1));
        }

        @Test
        @DisplayName("能源场景 - 总电量 / 天数 = 日均用电量")
        void div_dailyAverageScenario() {
            // 1000度 / 30天
            double dailyAvg = Arith.div(1000.0, 30.0, 2);
            assertEquals(33.33, dailyAvg, 0.01);
        }
    }

    // ==================== 四舍五入测试 ====================

    @Nested
    @DisplayName("四舍五入 round")
    class RoundTests {

        @Test
        @DisplayName("四舍五入保留2位小数")
        void round_twoDecimalPlaces() {
            assertEquals(3.14, Arith.round(3.1415, 2), 0.001);
        }

        @Test
        @DisplayName("四舍五入 - 五入场景")
        void round_roundUp() {
            assertEquals(3.15, Arith.round(3.145, 2), 0.001);
        }

        @Test
        @DisplayName("四舍五入 - 四舍场景")
        void round_roundDown() {
            assertEquals(3.14, Arith.round(3.144, 2), 0.001);
        }

        @Test
        @DisplayName("四舍五入保留0位小数")
        void round_zeroDecimalPlaces() {
            assertEquals(3.0, Arith.round(3.4, 0), 0.001);
            assertEquals(4.0, Arith.round(3.5, 0), 0.001);
        }

        @Test
        @DisplayName("负数精度参数抛出异常")
        void round_negativeScaleThrowsException() {
            assertThrows(IllegalArgumentException.class, () -> Arith.round(3.14, -1));
        }

        @Test
        @DisplayName("零的四舍五入")
        void round_zero() {
            assertEquals(0.0, Arith.round(0.0, 2), 0.001);
        }

        @Test
        @DisplayName("能源场景 - 碳排放系数精度控制")
        void round_carbonEmissionScenario() {
            // 碳排放计算结果保留4位小数
            assertEquals(0.5810, Arith.round(0.58099, 4), 0.0001);
        }
    }
}
