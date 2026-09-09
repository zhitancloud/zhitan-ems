package com.zhitan.common.utils;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

/**
 * StringUtils 字符串工具类单元测试
 * 覆盖：空判断、字符串截取、驼峰转换、下划线转换、去除空白等核心方法
 */
@DisplayName("StringUtils 字符串工具类测试")
class StringUtilsTest {

    // ==================== 一、空判断测试 ====================

    @Nested
    @DisplayName("1. 空判断")
    class EmptyCheckTests {

        // ---------- isEmpty(String) ----------

        @Test
        @DisplayName("isEmpty(String) - null 返回 true")
        void testIsEmptyString_null() {
            assertTrue(StringUtils.isEmpty((String) null));
        }

        @Test
        @DisplayName("isEmpty(String) - 空字符串返回 true")
        void testIsEmptyString_empty() {
            assertTrue(StringUtils.isEmpty(""));
        }

        @Test
        @DisplayName("isEmpty(String) - 纯空格返回 true")
        void testIsEmptyString_blank() {
            assertTrue(StringUtils.isEmpty("   "));
        }

        @Test
        @DisplayName("isEmpty(String) - 有内容返回 false")
        void testIsEmptyString_notEmpty() {
            assertFalse(StringUtils.isEmpty("hello"));
        }

        @Test
        @DisplayName("isEmpty(String) - 含空格的内容返回 false")
        void testIsEmptyString_withSpaces() {
            assertFalse(StringUtils.isEmpty("  a  "));
        }

        // ---------- isNotEmpty(String) ----------

        @Test
        @DisplayName("isNotEmpty(String) - null 返回 false")
        void testIsNotEmptyString_null() {
            assertFalse(StringUtils.isNotEmpty((String) null));
        }

        @Test
        @DisplayName("isNotEmpty(String) - 有内容返回 true")
        void testIsNotEmptyString_notEmpty() {
            assertTrue(StringUtils.isNotEmpty("hello"));
        }

        @Test
        @DisplayName("isNotEmpty(String) - 纯空格返回 false")
        void testIsNotEmptyString_blank() {
            assertFalse(StringUtils.isNotEmpty("   "));
        }

        // ---------- isEmpty(Collection) ----------

        @Test
        @DisplayName("isEmpty(Collection) - null 返回 true")
        void testIsEmptyCollection_null() {
            assertTrue(StringUtils.isEmpty((Collection<?>) null));
        }

        @Test
        @DisplayName("isEmpty(Collection) - 空集合返回 true")
        void testIsEmptyCollection_empty() {
            assertTrue(StringUtils.isEmpty(new ArrayList<>()));
        }

        @Test
        @DisplayName("isEmpty(Collection) - 非空集合返回 false")
        void testIsEmptyCollection_notEmpty() {
            assertFalse(StringUtils.isEmpty(Collections.singletonList("a")));
        }

        // ---------- isNotEmpty(Collection) ----------

        @Test
        @DisplayName("isNotEmpty(Collection) - 非空集合返回 true")
        void testIsNotEmptyCollection_notEmpty() {
            assertTrue(StringUtils.isNotEmpty(Collections.singletonList("a")));
        }

        @Test
        @DisplayName("isNotEmpty(Collection) - null 返回 false")
        void testIsNotEmptyCollection_null() {
            assertFalse(StringUtils.isNotEmpty((Collection<?>) null));
        }

        // ---------- isEmpty(Object[]) ----------

        @Test
        @DisplayName("isEmpty(Object[]) - null 返回 true")
        void testIsEmptyArray_null() {
            assertTrue(StringUtils.isEmpty((Object[]) null));
        }

        @Test
        @DisplayName("isEmpty(Object[]) - 空数组返回 true")
        void testIsEmptyArray_empty() {
            assertTrue(StringUtils.isEmpty(new Object[]{}));
        }

        @Test
        @DisplayName("isEmpty(Object[]) - 非空数组返回 false")
        void testIsEmptyArray_notEmpty() {
            assertFalse(StringUtils.isEmpty(new Object[]{"a"}));
        }

        // ---------- isNotEmpty(Object[]) ----------

        @Test
        @DisplayName("isNotEmpty(Object[]) - 非空数组返回 true")
        void testIsNotEmptyArray_notEmpty() {
            assertTrue(StringUtils.isNotEmpty(new Object[]{"a"}));
        }

        @Test
        @DisplayName("isNotEmpty(Object[]) - null 返回 false")
        void testIsNotEmptyArray_null() {
            assertFalse(StringUtils.isNotEmpty((Object[]) null));
        }

        // ---------- isEmpty(Map) ----------

        @Test
        @DisplayName("isEmpty(Map) - null 返回 true")
        void testIsEmptyMap_null() {
            assertTrue(StringUtils.isEmpty((Map<?, ?>) null));
        }

        @Test
        @DisplayName("isEmpty(Map) - 空Map返回 true")
        void testIsEmptyMap_empty() {
            assertTrue(StringUtils.isEmpty(new HashMap<>()));
        }

        @Test
        @DisplayName("isEmpty(Map) - 非空Map返回 false")
        void testIsEmptyMap_notEmpty() {
            Map<String, String> map = new HashMap<>();
            map.put("key", "value");
            assertFalse(StringUtils.isEmpty(map));
        }

        // ---------- isNotEmpty(Map) ----------

        @Test
        @DisplayName("isNotEmpty(Map) - 非空Map返回 true")
        void testIsNotEmptyMap_notEmpty() {
            Map<String, String> map = new HashMap<>();
            map.put("key", "value");
            assertTrue(StringUtils.isNotEmpty(map));
        }

        @Test
        @DisplayName("isNotEmpty(Map) - null 返回 false")
        void testIsNotEmptyMap_null() {
            assertFalse(StringUtils.isNotEmpty((Map<?, ?>) null));
        }

        // ---------- isNull / isNotNull ----------

        @Test
        @DisplayName("isNull - null 返回 true")
        void testIsNull_null() {
            assertTrue(StringUtils.isNull(null));
        }

        @Test
        @DisplayName("isNull - 非null 返回 false")
        void testIsNull_notNull() {
            assertFalse(StringUtils.isNull("hello"));
        }

        @Test
        @DisplayName("isNotNull - 非null 返回 true")
        void testIsNotNull_notNull() {
            assertTrue(StringUtils.isNotNull("hello"));
        }

        @Test
        @DisplayName("isNotNull - null 返回 false")
        void testIsNotNull_null() {
            assertFalse(StringUtils.isNotNull(null));
        }

        // ---------- isArray ----------

        @Test
        @DisplayName("isArray - int数组返回 true")
        void testIsArray_intArray() {
            assertTrue(StringUtils.isArray(new int[]{1, 2, 3}));
        }

        @Test
        @DisplayName("isArray - String数组返回 true")
        void testIsArray_stringArray() {
            assertTrue(StringUtils.isArray(new String[]{"a", "b"}));
        }

        @Test
        @DisplayName("isArray - 非数组返回 false")
        void testIsArray_notArray() {
            assertFalse(StringUtils.isArray("hello"));
        }

        @Test
        @DisplayName("isArray - null 返回 false")
        void testIsArray_null() {
            assertFalse(StringUtils.isArray(null));
        }
    }

    // ==================== 二、nvl 方法测试 ====================

    @Nested
    @DisplayName("2. nvl 空值替换")
    class NvlTests {

        @Test
        @DisplayName("nvl - 非null值返回原值")
        void testNvl_notNull() {
            assertEquals("hello", StringUtils.nvl("hello", "default"));
        }

        @Test
        @DisplayName("nvl - null返回默认值")
        void testNvl_null() {
            assertEquals("default", StringUtils.nvl(null, "default"));
        }

        @Test
        @DisplayName("nvl - 两者均为null返回null")
        void testNvl_bothNull() {
            assertNull(StringUtils.nvl(null, null));
        }

        @Test
        @DisplayName("nvl - 整数类型")
        void testNvl_integer() {
            assertEquals(10, StringUtils.nvl(10, 0));
            assertEquals(0, StringUtils.nvl(null, 0));
        }
    }

    // ==================== 三、去除空白 trim 测试 ====================

    @Nested
    @DisplayName("3. 去除空白 trim")
    class TrimTests {

        @Test
        @DisplayName("trim - 去除首尾空格")
        void testTrim_normal() {
            assertEquals("hello", StringUtils.trim("  hello  "));
        }

        @Test
        @DisplayName("trim - null 返回空字符串")
        void testTrim_null() {
            assertEquals("", StringUtils.trim(null));
        }

        @Test
        @DisplayName("trim - 无空格字符串不变")
        void testTrim_noSpaces() {
            assertEquals("hello", StringUtils.trim("hello"));
        }

        @Test
        @DisplayName("trim - 纯空格返回空字符串")
        void testTrim_allSpaces() {
            assertEquals("", StringUtils.trim("    "));
        }

        @Test
        @DisplayName("trim - 空字符串返回空字符串")
        void testTrim_empty() {
            assertEquals("", StringUtils.trim(""));
        }
    }

    // ==================== 四、hasText 测试 ====================

    @Nested
    @DisplayName("4. hasText 判断")
    class HasTextTests {

        @Test
        @DisplayName("hasText - 有文本内容返回 true")
        void testHasText_withText() {
            assertTrue(StringUtils.hasText("hello"));
        }

        @Test
        @DisplayName("hasText - null 返回 false")
        void testHasText_null() {
            assertFalse(StringUtils.hasText(null));
        }

        @Test
        @DisplayName("hasText - 空字符串返回 false")
        void testHasText_empty() {
            assertFalse(StringUtils.hasText(""));
        }

        @Test
        @DisplayName("hasText - 纯空格返回 false")
        void testHasText_blank() {
            assertFalse(StringUtils.hasText("   "));
        }

        @Test
        @DisplayName("hasText - 含制表符返回 false")
        void testHasText_tabs() {
            assertFalse(StringUtils.hasText("\t\t"));
        }

        @Test
        @DisplayName("hasText - 空格中有字符返回 true")
        void testHasText_textInSpaces() {
            assertTrue(StringUtils.hasText("  a  "));
        }
    }

    // ==================== 五、字符串截取 substring 测试 ====================

    @Nested
    @DisplayName("5. 字符串截取")
    class SubstringTests {

        // ---------- substring(String, int) ----------

        @Test
        @DisplayName("substring(str, start) - 正常截取")
        void testSubstringFromStart_normal() {
            assertEquals("llo", StringUtils.substring("hello", 2));
        }

        @Test
        @DisplayName("substring(str, start) - 从头开始")
        void testSubstringFromStart_zero() {
            assertEquals("hello", StringUtils.substring("hello", 0));
        }

        @Test
        @DisplayName("substring(str, start) - 负数从尾部计算")
        void testSubstringFromStart_negative() {
            assertEquals("lo", StringUtils.substring("hello", -2));
        }

        @Test
        @DisplayName("substring(str, start) - null 返回空字符串")
        void testSubstringFromStart_null() {
            assertEquals("", StringUtils.substring(null, 2));
        }

        @Test
        @DisplayName("substring(str, start) - start 超过长度返回空字符串")
        void testSubstringFromStart_exceedsLength() {
            assertEquals("", StringUtils.substring("hello", 10));
        }

        @Test
        @DisplayName("substring(str, start) - 负数绝对值超过长度从头开始")
        void testSubstringFromStart_negativeExceeds() {
            assertEquals("hello", StringUtils.substring("hello", -10));
        }

        // ---------- substring(String, int, int) ----------

        @Test
        @DisplayName("substring(str, start, end) - 正常截取")
        void testSubstring_normal() {
            assertEquals("ell", StringUtils.substring("hello", 1, 4));
        }

        @Test
        @DisplayName("substring(str, start, end) - null 返回空字符串")
        void testSubstring_null() {
            assertEquals("", StringUtils.substring(null, 1, 4));
        }

        @Test
        @DisplayName("substring(str, start, end) - 负数 start")
        void testSubstring_negativeStart() {
            assertEquals("lo", StringUtils.substring("hello", -2, 5));
        }

        @Test
        @DisplayName("substring(str, start, end) - 负数 end")
        void testSubstring_negativeEnd() {
            assertEquals("hel", StringUtils.substring("hello", 0, -2));
        }

        @Test
        @DisplayName("substring(str, start, end) - start > end 返回空字符串")
        void testSubstring_startGreaterThanEnd() {
            assertEquals("", StringUtils.substring("hello", 4, 2));
        }

        @Test
        @DisplayName("substring(str, start, end) - end 超过长度截取到末尾")
        void testSubstring_endExceedsLength() {
            assertEquals("hello", StringUtils.substring("hello", 0, 100));
        }

        @Test
        @DisplayName("substring(str, start, end) - 同时负数 start 和 end")
        void testSubstring_bothNegative() {
            assertEquals("ell", StringUtils.substring("hello", -4, -1));
        }
    }

    // ==================== 六、hide 隐藏字符测试 ====================

    @Nested
    @DisplayName("6. hide 隐藏字符")
    class HideTests {

        @Test
        @DisplayName("hide - 替换中间字符为*")
        void testHide_normal() {
            assertEquals("138****5678", StringUtils.hide("13812345678", 3, 7));
        }

        @Test
        @DisplayName("hide - 空字符串返回空")
        void testHide_empty() {
            assertEquals("", StringUtils.hide("", 0, 3));
        }

        @Test
        @DisplayName("hide - null 返回空")
        void testHide_null() {
            assertEquals("", StringUtils.hide(null, 0, 3));
        }

        @Test
        @DisplayName("hide - start 超过长度返回空")
        void testHide_startExceeds() {
            assertEquals("", StringUtils.hide("hello", 10, 15));
        }

        @Test
        @DisplayName("hide - end 超过长度截取到末尾")
        void testHide_endExceeds() {
            assertEquals("he***", StringUtils.hide("hello", 2, 100));
        }

        @Test
        @DisplayName("hide - start > end 返回空")
        void testHide_startGreaterThanEnd() {
            assertEquals("", StringUtils.hide("hello", 4, 2));
        }

        @Test
        @DisplayName("hide - 全部替换")
        void testHide_all() {
            assertEquals("*****", StringUtils.hide("hello", 0, 5));
        }

        @Test
        @DisplayName("hide - 替换首部分")
        void testHide_fromStart() {
            assertEquals("**llo", StringUtils.hide("hello", 0, 2));
        }
    }

    // ==================== 七、驼峰转换测试 ====================

    @Nested
    @DisplayName("7. 驼峰转换")
    class CamelCaseTests {

        // ---------- convertToCamelCase ----------

        @Test
        @DisplayName("convertToCamelCase - 下划线命名转大驼峰")
        void testConvertToCamelCase_underscore() {
            assertEquals("HelloWorld", StringUtils.convertToCamelCase("hello_world"));
        }

        @Test
        @DisplayName("convertToCamelCase - 全大写下划线")
        void testConvertToCamelCase_upperUnderscore() {
            assertEquals("HelloWorld", StringUtils.convertToCamelCase("HELLO_WORLD"));
        }

        @Test
        @DisplayName("convertToCamelCase - 无下划线首字母大写")
        void testConvertToCamelCase_noUnderscore() {
            assertEquals("Hello", StringUtils.convertToCamelCase("hello"));
        }

        @Test
        @DisplayName("convertToCamelCase - null 返回空字符串")
        void testConvertToCamelCase_null() {
            assertEquals("", StringUtils.convertToCamelCase(null));
        }

        @Test
        @DisplayName("convertToCamelCase - 空字符串返回空")
        void testConvertToCamelCase_empty() {
            assertEquals("", StringUtils.convertToCamelCase(""));
        }

        @Test
        @DisplayName("convertToCamelCase - 开头下划线忽略")
        void testConvertToCamelCase_leadingUnderscore() {
            assertEquals("Hello", StringUtils.convertToCamelCase("_hello"));
        }

        @Test
        @DisplayName("convertToCamelCase - 结尾下划线忽略")
        void testConvertToCamelCase_trailingUnderscore() {
            assertEquals("Hello", StringUtils.convertToCamelCase("hello_"));
        }

        @Test
        @DisplayName("convertToCamelCase - 连续下划线忽略")
        void testConvertToCamelCase_doubleUnderscore() {
            assertEquals("HelloWorld", StringUtils.convertToCamelCase("hello__world"));
        }

        @Test
        @DisplayName("convertToCamelCase - 多段下划线")
        void testConvertToCamelCase_multiSegment() {
            assertEquals("ThisIsATest", StringUtils.convertToCamelCase("this_is_a_test"));
        }

        // ---------- toCamelCase ----------

        @Test
        @DisplayName("toCamelCase - 下划线转小驼峰")
        void testToCamelCase_underscore() {
            assertEquals("userName", StringUtils.toCamelCase("user_name"));
        }

        @Test
        @DisplayName("toCamelCase - 无下划线不变")
        void testToCamelCase_noUnderscore() {
            assertEquals("username", StringUtils.toCamelCase("username"));
        }

        @Test
        @DisplayName("toCamelCase - null 返回 null")
        void testToCamelCase_null() {
            assertNull(StringUtils.toCamelCase(null));
        }

        @Test
        @DisplayName("toCamelCase - 多段下划线")
        void testToCamelCase_multiSegment() {
            assertEquals("thisIsATest", StringUtils.toCamelCase("this_is_a_test"));
        }

        @Test
        @DisplayName("toCamelCase - 大写下划线")
        void testToCamelCase_uppercase() {
            assertEquals("helloWorld", StringUtils.toCamelCase("HELLO_WORLD"));
        }
    }

    // ==================== 八、下划线转换测试 ====================

    @Nested
    @DisplayName("8. 下划线转换")
    class UnderScoreCaseTests {

        @Test
        @DisplayName("toUnderScoreCase - 驼峰转下划线")
        void testToUnderScoreCase_camelCase() {
            assertEquals("user_name", StringUtils.toUnderScoreCase("userName"));
        }

        @Test
        @DisplayName("toUnderScoreCase - 大驼峰转下划线")
        void testToUnderScoreCase_pascalCase() {
            assertEquals("hello_world", StringUtils.toUnderScoreCase("HelloWorld"));
        }

        @Test
        @DisplayName("toUnderScoreCase - null 返回 null")
        void testToUnderScoreCase_null() {
            assertNull(StringUtils.toUnderScoreCase(null));
        }

        @Test
        @DisplayName("toUnderScoreCase - 全小写无变化")
        void testToUnderScoreCase_allLower() {
            assertEquals("username", StringUtils.toUnderScoreCase("username"));
        }

        @Test
        @DisplayName("toUnderScoreCase - 连续大写字母处理")
        void testToUnderScoreCase_consecutiveUpperCase() {
            assertEquals("get_url", StringUtils.toUnderScoreCase("getURL"));
        }

        @Test
        @DisplayName("toUnderScoreCase - 单字符")
        void testToUnderScoreCase_singleChar() {
            assertEquals("a", StringUtils.toUnderScoreCase("A"));
        }

        @Test
        @DisplayName("toUnderScoreCase - 多段驼峰")
        void testToUnderScoreCase_multiSegment() {
            assertEquals("this_is_a_test", StringUtils.toUnderScoreCase("thisIsATest"));
        }
    }

    // ==================== 九、format 格式化测试 ====================

    @Nested
    @DisplayName("9. format 格式化")
    class FormatTests {

        @Test
        @DisplayName("format - 单参数替换")
        void testFormat_singleParam() {
            assertEquals("hello world", StringUtils.format("hello {}", "world"));
        }

        @Test
        @DisplayName("format - 多参数替换")
        void testFormat_multiParams() {
            assertEquals("a-b-c", StringUtils.format("{}-{}-{}", "a", "b", "c"));
        }

        @Test
        @DisplayName("format - 空模板返回空")
        void testFormat_emptyTemplate() {
            assertEquals("", StringUtils.format("", "a"));
        }

        @Test
        @DisplayName("format - null 模板返回 null")
        void testFormat_nullTemplate() {
            assertNull(StringUtils.format(null, "a"));
        }

        @Test
        @DisplayName("format - 无参数返回原模板")
        void testFormat_noParams() {
            assertEquals("hello {}", StringUtils.format("hello {}"));
        }
    }

    // ==================== 十、ishttp 测试 ====================

    @Nested
    @DisplayName("10. ishttp 链接判断")
    class IsHttpTests {

        @Test
        @DisplayName("ishttp - http 链接返回 true")
        void testIshttp_http() {
            assertTrue(StringUtils.ishttp("http://example.com"));
        }

        @Test
        @DisplayName("ishttp - https 链接返回 true")
        void testIshttp_https() {
            assertTrue(StringUtils.ishttp("https://example.com"));
        }

        @Test
        @DisplayName("ishttp - 非http返回 false")
        void testIshttp_notHttp() {
            assertFalse(StringUtils.ishttp("ftp://example.com"));
        }

        @Test
        @DisplayName("ishttp - 普通字符串返回 false")
        void testIshttp_plainText() {
            assertFalse(StringUtils.ishttp("hello world"));
        }

        @Test
        @DisplayName("ishttp - null 返回 false")
        void testIshttp_null() {
            assertFalse(StringUtils.ishttp(null));
        }
    }

    // ==================== 十一、str2List / str2Set 测试 ====================

    @Nested
    @DisplayName("11. str2List / str2Set 转换")
    class Str2ListSetTests {

        @Test
        @DisplayName("str2List - 正常分割")
        void testStr2List_normal() {
            List<String> list = StringUtils.str2List("a,b,c", ",", true, false);
            assertEquals(3, list.size());
            assertEquals("a", list.get(0));
            assertEquals("b", list.get(1));
            assertEquals("c", list.get(2));
        }

        @Test
        @DisplayName("str2List - 空字符串返回空列表")
        void testStr2List_empty() {
            List<String> list = StringUtils.str2List("", ",", true, false);
            assertTrue(list.isEmpty());
        }

        @Test
        @DisplayName("str2List - null 返回空列表")
        void testStr2List_null() {
            List<String> list = StringUtils.str2List(null, ",", true, false);
            assertTrue(list.isEmpty());
        }

        @Test
        @DisplayName("str2List - filterBlank 过滤空白元素")
        void testStr2List_filterBlank() {
            List<String> list = StringUtils.str2List("a, ,c", ",", true, false);
            assertEquals(2, list.size());
            assertEquals("a", list.get(0));
            assertEquals("c", list.get(1));
        }

        @Test
        @DisplayName("str2List - trim 去除首尾空格")
        void testStr2List_trim() {
            List<String> list = StringUtils.str2List(" a , b , c ", ",", false, true);
            assertEquals(3, list.size());
            assertEquals("a", list.get(0));
            assertEquals("b", list.get(1));
            assertEquals("c", list.get(2));
        }

        @Test
        @DisplayName("str2List - 纯空白字符串 filterBlank=true 返回空列表")
        void testStr2List_allBlank() {
            List<String> list = StringUtils.str2List("   ", ",", true, false);
            assertTrue(list.isEmpty());
        }

        @Test
        @DisplayName("str2Set - 正常分割并去重")
        void testStr2Set_normal() {
            Set<String> set = StringUtils.str2Set("a,b,a,c", ",");
            assertEquals(3, set.size());
            assertTrue(set.contains("a"));
            assertTrue(set.contains("b"));
            assertTrue(set.contains("c"));
        }

        @Test
        @DisplayName("str2Set - 空字符串返回空Set")
        void testStr2Set_empty() {
            Set<String> set = StringUtils.str2Set("", ",");
            assertTrue(set.isEmpty());
        }
    }

    // ==================== 十二、containsAny / containsAnyIgnoreCase 测试 ====================

    @Nested
    @DisplayName("12. containsAny / containsAnyIgnoreCase")
    class ContainsAnyTests {

        @Test
        @DisplayName("containsAny - 集合包含数组元素返回 true")
        void testContainsAny_match() {
            List<String> collection = Arrays.asList("a", "b", "c");
            assertTrue(StringUtils.containsAny(collection, "b", "d"));
        }

        @Test
        @DisplayName("containsAny - 集合不包含数组元素返回 false")
        void testContainsAny_noMatch() {
            List<String> collection = Arrays.asList("a", "b", "c");
            assertFalse(StringUtils.containsAny(collection, "x", "y"));
        }

        @Test
        @DisplayName("containsAny - 空集合返回 false")
        void testContainsAny_emptyCollection() {
            assertFalse(StringUtils.containsAny(new ArrayList<>(), "a"));
        }

        @Test
        @DisplayName("containsAny - 空数组返回 false")
        void testContainsAny_emptyArray() {
            List<String> collection = Arrays.asList("a", "b");
            assertFalse(StringUtils.containsAny(collection, new String[]{}));
        }

        @Test
        @DisplayName("containsAny - null 集合返回 false")
        void testContainsAny_nullCollection() {
            assertFalse(StringUtils.containsAny(null, "a"));
        }

        @Test
        @DisplayName("containsAnyIgnoreCase - 忽略大小写包含返回 true")
        void testContainsAnyIgnoreCase_match() {
            assertTrue(StringUtils.containsAnyIgnoreCase("Hello World", "hello", "test"));
        }

        @Test
        @DisplayName("containsAnyIgnoreCase - 不包含返回 false")
        void testContainsAnyIgnoreCase_noMatch() {
            assertFalse(StringUtils.containsAnyIgnoreCase("Hello World", "xyz", "abc"));
        }

        @Test
        @DisplayName("containsAnyIgnoreCase - 空字符串返回 false")
        void testContainsAnyIgnoreCase_empty() {
            assertFalse(StringUtils.containsAnyIgnoreCase("", "hello"));
        }

        @Test
        @DisplayName("containsAnyIgnoreCase - null 返回 false")
        void testContainsAnyIgnoreCase_null() {
            assertFalse(StringUtils.containsAnyIgnoreCase(null, "hello"));
        }
    }

    // ==================== 十三、inStringIgnoreCase 测试 ====================

    @Nested
    @DisplayName("13. inStringIgnoreCase")
    class InStringIgnoreCaseTests {

        @Test
        @DisplayName("inStringIgnoreCase - 忽略大小写匹配返回 true")
        void testInStringIgnoreCase_match() {
            assertTrue(StringUtils.inStringIgnoreCase("hello", "HELLO", "world"));
        }

        @Test
        @DisplayName("inStringIgnoreCase - 不匹配返回 false")
        void testInStringIgnoreCase_noMatch() {
            assertFalse(StringUtils.inStringIgnoreCase("hello", "world", "test"));
        }

        @Test
        @DisplayName("inStringIgnoreCase - null str 返回 false")
        void testInStringIgnoreCase_nullStr() {
            assertFalse(StringUtils.inStringIgnoreCase(null, "hello"));
        }

        @Test
        @DisplayName("inStringIgnoreCase - null strs 返回 false")
        void testInStringIgnoreCase_nullStrs() {
            assertFalse(StringUtils.inStringIgnoreCase("hello", (String[]) null));
        }

        @Test
        @DisplayName("inStringIgnoreCase - 带空格匹配（trim）")
        void testInStringIgnoreCase_withSpaces() {
            assertTrue(StringUtils.inStringIgnoreCase("hello", "  hello  "));
        }
    }

    // ==================== 十四、matches / isMatch 测试 ====================

    @Nested
    @DisplayName("14. matches / isMatch 路径匹配")
    class MatchTests {

        @Test
        @DisplayName("isMatch - 精确匹配")
        void testIsMatch_exact() {
            assertTrue(StringUtils.isMatch("/api/user", "/api/user"));
        }

        @Test
        @DisplayName("isMatch - ? 匹配单字符")
        void testIsMatch_questionMark() {
            assertTrue(StringUtils.isMatch("/api/use?", "/api/user"));
        }

        @Test
        @DisplayName("isMatch - * 匹配单层路径")
        void testIsMatch_singleStar() {
            assertTrue(StringUtils.isMatch("/api/*", "/api/user"));
        }

        @Test
        @DisplayName("isMatch - ** 匹配多层路径")
        void testIsMatch_doubleStar() {
            assertTrue(StringUtils.isMatch("/api/**", "/api/user/list"));
        }

        @Test
        @DisplayName("isMatch - 不匹配返回 false")
        void testIsMatch_noMatch() {
            assertFalse(StringUtils.isMatch("/api/admin", "/api/user"));
        }

        @Test
        @DisplayName("matches - 列表中有一个匹配返回 true")
        void testMatches_match() {
            List<String> patterns = Arrays.asList("/api/admin", "/api/**");
            assertTrue(StringUtils.matches("/api/user/list", patterns));
        }

        @Test
        @DisplayName("matches - 列表中没有匹配返回 false")
        void testMatches_noMatch() {
            List<String> patterns = Arrays.asList("/api/admin", "/web/**");
            assertFalse(StringUtils.matches("/api/user", patterns));
        }

        @Test
        @DisplayName("matches - 空字符串返回 false")
        void testMatches_emptyStr() {
            List<String> patterns = Arrays.asList("/api/**");
            assertFalse(StringUtils.matches("", patterns));
        }

        @Test
        @DisplayName("matches - 空列表返回 false")
        void testMatches_emptyList() {
            assertFalse(StringUtils.matches("/api/user", new ArrayList<>()));
        }

        @Test
        @DisplayName("matches - null 返回 false")
        void testMatches_null() {
            assertFalse(StringUtils.matches(null, Arrays.asList("/api/**")));
        }
    }

    // ==================== 十五、padl 左补齐测试 ====================

    @Nested
    @DisplayName("15. padl 左补齐")
    class PadlTests {

        @Test
        @DisplayName("padl(Number, size) - 数字左补齐0")
        void testPadl_number() {
            assertEquals("007", StringUtils.padl(7, 3));
        }

        @Test
        @DisplayName("padl(Number, size) - 数字长度等于size不补")
        void testPadl_numberEqualSize() {
            assertEquals("123", StringUtils.padl(123, 3));
        }

        @Test
        @DisplayName("padl(Number, size) - 数字长度超过size保留右边")
        void testPadl_numberExceedsSize() {
            assertEquals("234", StringUtils.padl(1234, 3));
        }

        @Test
        @DisplayName("padl(String, size, char) - 字符串左补齐")
        void testPadl_string() {
            assertEquals("00ab", StringUtils.padl("ab", 4, '0'));
        }

        @Test
        @DisplayName("padl(String, size, char) - null 字符串全部填充")
        void testPadl_nullString() {
            assertEquals("0000", StringUtils.padl((String) null, 4, '0'));
        }

        @Test
        @DisplayName("padl(String, size, char) - 超过size保留右边")
        void testPadl_exceedsSize() {
            assertEquals("cdef", StringUtils.padl("abcdef", 4, '0'));
        }

        @Test
        @DisplayName("padl(String, size, char) - 指定补齐字符")
        void testPadl_customChar() {
            assertEquals("**hi", StringUtils.padl("hi", 4, '*'));
        }

        @Test
        @DisplayName("padl(Number, size) - 0 补齐")
        void testPadl_zero() {
            assertEquals("000", StringUtils.padl(0, 3));
        }
    }

    // ==================== 十六、cast 类型转换测试 ====================

    @Nested
    @DisplayName("16. cast 类型转换")
    class CastTests {

        @Test
        @DisplayName("cast - 字符串转String")
        void testCast_string() {
            String result = StringUtils.cast("hello");
            assertEquals("hello", result);
        }

        @Test
        @DisplayName("cast - 整数转Integer")
        void testCast_integer() {
            Integer result = StringUtils.cast(42);
            assertEquals(42, result);
        }

        @Test
        @DisplayName("cast - null 转任意类型返回 null")
        void testCast_null() {
            String result = StringUtils.cast(null);
            assertNull(result);
        }
    }
}
