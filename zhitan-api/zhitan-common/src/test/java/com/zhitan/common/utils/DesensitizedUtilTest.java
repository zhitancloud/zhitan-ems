package com.zhitan.common.utils;

import com.zhitan.common.enums.DesensitizedType;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.NullAndEmptySource;
import org.junit.jupiter.params.provider.ValueSource;

import static org.junit.jupiter.api.Assertions.*;

/**
 * DesensitizedUtil 脱敏工具类单元测试
 * <p>
 * 覆盖：密码全量脱敏、车牌脱敏（普通 / 新能源）；
 * 并补充计划中提到的手机号、身份证、邮箱等关联脱敏能力（实现位于 {@link DesensitizedType}）。
 */
@DisplayName("DesensitizedUtil 脱敏工具类测试")
class DesensitizedUtilTest {

    // ==================== 一、password 密码脱敏 ====================

    @Nested
    @DisplayName("1. password() 密码脱敏")
    class PasswordTests {

        @ParameterizedTest
        @NullAndEmptySource
        @ValueSource(strings = {" ", "   ", "\t", "\n"})
        @DisplayName("空白输入返回空字符串")
        void testPassword_blank(String input) {
            assertEquals(StringUtils.EMPTY, DesensitizedUtil.password(input));
        }

        @Test
        @DisplayName("普通密码 - 每位替换为 *，长度不变")
        void testPassword_normal() {
            String result = DesensitizedUtil.password("admin123");
            assertEquals("********", result);
            assertEquals(8, result.length());
        }

        @Test
        @DisplayName("单字符密码")
        void testPassword_singleChar() {
            assertEquals("*", DesensitizedUtil.password("a"));
        }

        @Test
        @DisplayName("含特殊字符的密码")
        void testPassword_specialChars() {
            String pwd = "P@ss#2024!";
            String result = DesensitizedUtil.password(pwd);
            assertEquals("**********", result);
            assertEquals(pwd.length(), result.length());
            assertTrue(result.chars().allMatch(c -> c == '*'));
        }

        @Test
        @DisplayName("中文密码字符同样全量脱敏")
        void testPassword_chinese() {
            assertEquals("*****", DesensitizedUtil.password("密码123"));
        }

        @Test
        @DisplayName("DesensitizedType.PASSWORD 委托与工具类一致")
        void testPassword_viaEnum() {
            String pwd = "secret";
            assertEquals(
                    DesensitizedUtil.password(pwd),
                    DesensitizedType.PASSWORD.desensitizer().apply(pwd)
            );
        }
    }

    // ==================== 二、carLicense 车牌脱敏 ====================

    @Nested
    @DisplayName("2. carLicense() 车牌脱敏")
    class CarLicenseTests {

        @ParameterizedTest
        @NullAndEmptySource
        @ValueSource(strings = {" ", "   "})
        @DisplayName("空白输入返回空字符串")
        void testCarLicense_blank(String input) {
            assertEquals(StringUtils.EMPTY, DesensitizedUtil.carLicense(input));
        }

        @Test
        @DisplayName("普通车牌（7位）- 中间3位隐藏")
        void testCarLicense_normal7() {
            // 粤B12345 → hide(3,6) → 粤B1***5
            assertEquals("粤B1***5", DesensitizedUtil.carLicense("粤B12345"));
        }

        @Test
        @DisplayName("新能源车牌（8位）- 中间4位隐藏")
        void testCarLicense_newEnergy8() {
            // 粤B12345D → hide(3,7) → 粤B1****D
            assertEquals("粤B1****D", DesensitizedUtil.carLicense("粤B12345D"));
        }

        @Test
        @DisplayName("错误长度车牌（非7/8位）- 原样返回")
        void testCarLicense_invalidLength() {
            assertEquals("京A12", DesensitizedUtil.carLicense("京A12"));
            assertEquals("ABCDEFGHI", DesensitizedUtil.carLicense("ABCDEFGHI"));
            assertEquals("1", DesensitizedUtil.carLicense("1"));
        }

        @Test
        @DisplayName("纯数字7位车牌也可按规则脱敏")
        void testCarLicense_numeric7() {
            assertEquals("123***7", DesensitizedUtil.carLicense("1234567"));
        }

        @Test
        @DisplayName("纯数字8位车牌也可按规则脱敏")
        void testCarLicense_numeric8() {
            assertEquals("123****8", DesensitizedUtil.carLicense("12345678"));
        }

        @Test
        @DisplayName("DesensitizedType.CAR_LICENSE 委托与工具类一致")
        void testCarLicense_viaEnum() {
            String plate = "沪A88888";
            assertEquals(
                    DesensitizedUtil.carLicense(plate),
                    DesensitizedType.CAR_LICENSE.desensitizer().apply(plate)
            );
        }
    }

    // ==================== 三、关联脱敏：手机号 / 身份证 / 邮箱等 ====================

    @Nested
    @DisplayName("3. 关联脱敏能力（DesensitizedType）")
    class RelatedDesensitizeTests {

        @Test
        @DisplayName("手机号 - 中间4位星号")
        void testPhone() {
            assertEquals("138****5678", DesensitizedType.PHONE.desensitizer().apply("13812345678"));
            assertEquals("159****0001", DesensitizedType.PHONE.desensitizer().apply("15900000001"));
        }

        @Test
        @DisplayName("手机号 - 非11位短号码不匹配则原样返回；超长则仅匹配前11位")
        void testPhone_invalidFormat() {
            assertEquals("12345", DesensitizedType.PHONE.desensitizer().apply("12345"));
            // 正则只要求 3+4+4 位数字，12 位时会脱敏前 11 位并保留末位
            assertEquals("138****56789", DesensitizedType.PHONE.desensitizer().apply("138123456789"));
        }

        @Test
        @DisplayName("身份证 - 中间10位星号替换，保留前后4位")
        void testIdCard() {
            String result = DesensitizedType.ID_CARD.desensitizer().apply("110101199001011234");
            assertEquals("1101** **** ****1234", result);
        }

        @Test
        @DisplayName("身份证 - 长度不足18位时不匹配则原样返回")
        void testIdCard_short() {
            assertEquals("1101011990", DesensitizedType.ID_CARD.desensitizer().apply("1101011990"));
        }

        @Test
        @DisplayName("邮箱 - 仅保留首字符与 @ 后域名")
        void testEmail() {
            assertEquals("a****@zhitan.com", DesensitizedType.EMAIL.desensitizer().apply("admin@zhitan.com"));
            assertEquals("t****@example.com", DesensitizedType.EMAIL.desensitizer().apply("test@example.com"));
        }

        @Test
        @DisplayName("邮箱 - 单字符用户名")
        void testEmail_singleCharLocal() {
            assertEquals("x****@a.cn", DesensitizedType.EMAIL.desensitizer().apply("x@a.cn"));
        }

        @Test
        @DisplayName("姓名 - 第2位星号替换")
        void testUsername() {
            assertEquals("张*丰", DesensitizedType.USERNAME.desensitizer().apply("张三丰"));
            assertEquals("李*", DesensitizedType.USERNAME.desensitizer().apply("李四"));
        }

        @Test
        @DisplayName("银行卡 - 保留后3位形式的掩码")
        void testBankCard() {
            // 正则：\\d{15}(\\d{3}) → 共18位数字时替换
            String card = "622202123456789012";
            String result = DesensitizedType.BANK_CARD.desensitizer().apply(card);
            assertEquals("**** **** **** **** 012", result);
        }

        @Test
        @DisplayName("各类脱敏器对空字符串可执行且不抛异常")
        void testAllTypes_emptySafe() {
            for (DesensitizedType type : DesensitizedType.values()) {
                assertDoesNotThrow(() -> type.desensitizer().apply(""));
            }
        }
    }
}
