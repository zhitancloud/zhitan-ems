package com.zhitan.common.enums;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EnumSource;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("枚举类单元测试")
class EnumsTest {

    // ==================== 1. ElectricityTypeEnum ====================

    @Nested
    @DisplayName("1. ElectricityTypeEnum 电力类型枚举")
    class ElectricityTypeEnumTests {

        @Test
        @DisplayName("values() - 包含全部5种电力类型")
        void testValues_count() {
            ElectricityTypeEnum[] values = ElectricityTypeEnum.values();
            assertEquals(5, values.length);
        }

        @Test
        @DisplayName("SHARP - 尖")
        void testSharp() {
            assertEquals("尖", ElectricityTypeEnum.SHARP.getDesc());
            assertEquals("SHARP", ElectricityTypeEnum.SHARP.name());
        }

        @Test
        @DisplayName("PEAK - 峰")
        void testPeak() {
            assertEquals("峰", ElectricityTypeEnum.PEAK.getDesc());
            assertEquals("PEAK", ElectricityTypeEnum.PEAK.name());
        }

        @Test
        @DisplayName("FLAT - 平")
        void testFlat() {
            assertEquals("平", ElectricityTypeEnum.FLAT.getDesc());
            assertEquals("FLAT", ElectricityTypeEnum.FLAT.name());
        }

        @Test
        @DisplayName("VALLEY - 谷")
        void testValley() {
            assertEquals("谷", ElectricityTypeEnum.VALLEY.getDesc());
            assertEquals("VALLEY", ElectricityTypeEnum.VALLEY.name());
        }

        @Test
        @DisplayName("DEEP - 深谷")
        void testDeep() {
            assertEquals("深谷", ElectricityTypeEnum.DEEP.getDesc());
            assertEquals("DEEP", ElectricityTypeEnum.DEEP.name());
        }

        @Test
        @DisplayName("getNameByType() - 有效的电力类型名称")
        void testGetNameByType_valid() {
            assertEquals("SHARP", ElectricityTypeEnum.getNameByType("SHARP"));
            assertEquals("PEAK", ElectricityTypeEnum.getNameByType("PEAK"));
            assertEquals("FLAT", ElectricityTypeEnum.getNameByType("FLAT"));
            assertEquals("VALLEY", ElectricityTypeEnum.getNameByType("VALLEY"));
            assertEquals("DEEP", ElectricityTypeEnum.getNameByType("DEEP"));
        }

        @Test
        @DisplayName("getNameByType() - 大小写不敏感匹配")
        void testGetNameByType_caseInsensitive() {
            assertEquals("SHARP", ElectricityTypeEnum.getNameByType("sharp"));
            assertEquals("PEAK", ElectricityTypeEnum.getNameByType("peak"));
            assertEquals("FLAT", ElectricityTypeEnum.getNameByType("Flat"));
            assertEquals("VALLEY", ElectricityTypeEnum.getNameByType("valley"));
            assertEquals("DEEP", ElectricityTypeEnum.getNameByType("Deep"));
        }

        @Test
        @DisplayName("getNameByType() - 无效类型抛出IllegalArgumentException")
        void testGetNameByType_invalid() {
            assertThrows(IllegalArgumentException.class, () -> ElectricityTypeEnum.getNameByType("INVALID"));
            assertThrows(IllegalArgumentException.class, () -> ElectricityTypeEnum.getNameByType(""));
        }

        @Test
        @DisplayName("getNameByType() - null值抛出异常")
        void testGetNameByType_null() {
            assertThrows(IllegalArgumentException.class, () -> ElectricityTypeEnum.getNameByType(null));
        }

        @ParameterizedTest
        @EnumSource(ElectricityTypeEnum.class)
        @DisplayName("每个枚举值的desc不为null")
        void testDescNotNull(ElectricityTypeEnum type) {
            assertNotNull(type.getDesc());
        }
    }

    // ==================== 2. PointType ====================

    @Nested
    @DisplayName("2. PointType 指标类型枚举")
    class PointTypeTests {

        @Test
        @DisplayName("values() - 包含2种指标类型")
        void testValues_count() {
            assertEquals(2, PointType.values().length);
        }

        @Test
        @DisplayName("COLLECT - 采集指标")
        void testCollect() {
            assertEquals("COLLECT", PointType.COLLECT.getDescription());
            assertEquals("COLLECT", PointType.COLLECT.name());
        }

        @Test
        @DisplayName("STATISTIC - 统计指标")
        void testStatistic() {
            assertEquals("STATISTIC", PointType.STATISTIC.getDescription());
            assertEquals("STATISTIC", PointType.STATISTIC.name());
        }

        @ParameterizedTest
        @EnumSource(PointType.class)
        @DisplayName("每个枚举值的description不为null")
        void testDescriptionNotNull(PointType type) {
            assertNotNull(type.getDescription());
        }

        @Test
        @DisplayName("COLLECT和STATISTIC的description与name一致")
        void testDescriptionMatchesName() {
            for (PointType pt : PointType.values()) {
                assertEquals(pt.name(), pt.getDescription());
            }
        }
    }

    // ==================== 3. GroupTimeType ====================

    @Nested
    @DisplayName("3. GroupTimeType 分组时间类型枚举")
    class GroupTimeTypeTests {

        @Test
        @DisplayName("values() - 包含3种分组时间类型")
        void testValues_count() {
            assertEquals(3, GroupTimeType.values().length);
        }

        @Test
        @DisplayName("m - 分钟")
        void testMinute() {
            assertEquals("m", GroupTimeType.m.name());
        }

        @Test
        @DisplayName("h - 小时")
        void testHour() {
            assertEquals("h", GroupTimeType.h.name());
        }

        @Test
        @DisplayName("d - 天")
        void testDay() {
            assertEquals("d", GroupTimeType.d.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(GroupTimeType.m, GroupTimeType.valueOf("m"));
            assertEquals(GroupTimeType.h, GroupTimeType.valueOf("h"));
            assertEquals(GroupTimeType.d, GroupTimeType.valueOf("d"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> GroupTimeType.valueOf("INVALID"));
        }

        @Test
        @DisplayName("枚举值顺序为 m, h, d")
        void testOrder() {
            GroupTimeType[] values = GroupTimeType.values();
            assertEquals(GroupTimeType.m, values[0]);
            assertEquals(GroupTimeType.h, values[1]);
            assertEquals(GroupTimeType.d, values[2]);
        }
    }

    // ==================== 4. TimeType ====================

    @Nested
    @DisplayName("4. TimeType 时间类型枚举")
    class TimeTypeTests {

        @Test
        @DisplayName("values() - 包含6种时间类型")
        void testValues_count() {
            assertEquals(6, TimeType.values().length);
        }

        @Test
        @DisplayName("LIVE - 实时")
        void testLive() {
            assertEquals("LIVE", TimeType.LIVE.name());
        }

        @Test
        @DisplayName("HOUR - 小时")
        void testHour() {
            assertEquals("HOUR", TimeType.HOUR.name());
        }

        @Test
        @DisplayName("DAY - 天")
        void testDay() {
            assertEquals("DAY", TimeType.DAY.name());
        }

        @Test
        @DisplayName("MONTH - 月")
        void testMonth() {
            assertEquals("MONTH", TimeType.MONTH.name());
        }

        @Test
        @DisplayName("YEAR - 年")
        void testYear() {
            assertEquals("YEAR", TimeType.YEAR.name());
        }

        @Test
        @DisplayName("QUARTER - 季度")
        void testQuarter() {
            assertEquals("QUARTER", TimeType.QUARTER.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(TimeType.LIVE, TimeType.valueOf("LIVE"));
            assertEquals(TimeType.HOUR, TimeType.valueOf("HOUR"));
            assertEquals(TimeType.DAY, TimeType.valueOf("DAY"));
            assertEquals(TimeType.MONTH, TimeType.valueOf("MONTH"));
            assertEquals(TimeType.YEAR, TimeType.valueOf("YEAR"));
            assertEquals(TimeType.QUARTER, TimeType.valueOf("QUARTER"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> TimeType.valueOf("INVALID"));
        }

        @Test
        @DisplayName("枚举值顺序为 LIVE, HOUR, DAY, MONTH, YEAR, QUARTER")
        void testOrder() {
            TimeType[] values = TimeType.values();
            assertEquals(TimeType.LIVE, values[0]);
            assertEquals(TimeType.HOUR, values[1]);
            assertEquals(TimeType.DAY, values[2]);
            assertEquals(TimeType.MONTH, values[3]);
            assertEquals(TimeType.YEAR, values[4]);
            assertEquals(TimeType.QUARTER, values[5]);
        }
    }

    // ==================== 5. UserStatus ====================

    @Nested
    @DisplayName("5. UserStatus 用户状态枚举")
    class UserStatusTests {

        @Test
        @DisplayName("values() - 包含3种用户状态")
        void testValues_count() {
            assertEquals(3, UserStatus.values().length);
        }

        @Test
        @DisplayName("OK - 正常(code=0)")
        void testOk() {
            assertEquals("0", UserStatus.OK.getCode());
            assertEquals("正常", UserStatus.OK.getInfo());
        }

        @Test
        @DisplayName("DISABLE - 停用(code=1)")
        void testDisable() {
            assertEquals("1", UserStatus.DISABLE.getCode());
            assertEquals("停用", UserStatus.DISABLE.getInfo());
        }

        @Test
        @DisplayName("DELETED - 删除(code=2)")
        void testDeleted() {
            assertEquals("2", UserStatus.DELETED.getCode());
            assertEquals("删除", UserStatus.DELETED.getInfo());
        }

        @Test
        @DisplayName("code值唯一不重复")
        void testCodeUnique() {
            long distinctCount = java.util.Arrays.stream(UserStatus.values())
                    .map(UserStatus::getCode)
                    .distinct()
                    .count();
            assertEquals(UserStatus.values().length, distinctCount);
        }

        @Test
        @DisplayName("info值唯一不重复")
        void testInfoUnique() {
            long distinctCount = java.util.Arrays.stream(UserStatus.values())
                    .map(UserStatus::getInfo)
                    .distinct()
                    .count();
            assertEquals(UserStatus.values().length, distinctCount);
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(UserStatus.OK, UserStatus.valueOf("OK"));
            assertEquals(UserStatus.DISABLE, UserStatus.valueOf("DISABLE"));
            assertEquals(UserStatus.DELETED, UserStatus.valueOf("DELETED"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> UserStatus.valueOf("INVALID"));
        }
    }

    // ==================== 6. StatisticType ====================

    @Nested
    @DisplayName("6. StatisticType 统计类型枚举")
    class StatisticTypeTests {

        @Test
        @DisplayName("values() - 包含4种统计类型")
        void testValues_count() {
            assertEquals(4, StatisticType.values().length);
        }

        @Test
        @DisplayName("SUM - 求和")
        void testSum() {
            assertEquals("SUM", StatisticType.SUM.name());
        }

        @Test
        @DisplayName("MAX - 最大值")
        void testMax() {
            assertEquals("MAX", StatisticType.MAX.name());
        }

        @Test
        @DisplayName("MIN - 最小值")
        void testMin() {
            assertEquals("MIN", StatisticType.MIN.name());
        }

        @Test
        @DisplayName("AVG - 平均值")
        void testAvg() {
            assertEquals("AVG", StatisticType.AVG.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(StatisticType.SUM, StatisticType.valueOf("SUM"));
            assertEquals(StatisticType.MAX, StatisticType.valueOf("MAX"));
            assertEquals(StatisticType.MIN, StatisticType.valueOf("MIN"));
            assertEquals(StatisticType.AVG, StatisticType.valueOf("AVG"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> StatisticType.valueOf("MEDIAN"));
        }
    }

    // ==================== 7. Quality ====================

    @Nested
    @DisplayName("7. Quality 数据质量枚举")
    class QualityTests {

        @Test
        @DisplayName("values() - 包含2种数据质量")
        void testValues_count() {
            assertEquals(2, Quality.values().length);
        }

        @Test
        @DisplayName("GOOD - 数据正常")
        void testGood() {
            assertEquals("GOOD", Quality.GOOD.name());
        }

        @Test
        @DisplayName("BAD - 数据错误")
        void testBad() {
            assertEquals("BAD", Quality.BAD.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(Quality.GOOD, Quality.valueOf("GOOD"));
            assertEquals(Quality.BAD, Quality.valueOf("BAD"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> Quality.valueOf("UNKNOWN"));
        }
    }

    // ==================== 8. LimitType ====================

    @Nested
    @DisplayName("8. LimitType 限流类型枚举")
    class LimitTypeTests {

        @Test
        @DisplayName("values() - 包含2种限流类型")
        void testValues_count() {
            assertEquals(2, LimitType.values().length);
        }

        @Test
        @DisplayName("DEFAULT - 默认策略全局限流")
        void testDefault() {
            assertEquals("DEFAULT", LimitType.DEFAULT.name());
        }

        @Test
        @DisplayName("IP - 根据请求者IP限流")
        void testIp() {
            assertEquals("IP", LimitType.IP.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(LimitType.DEFAULT, LimitType.valueOf("DEFAULT"));
            assertEquals(LimitType.IP, LimitType.valueOf("IP"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> LimitType.valueOf("TOKEN"));
        }
    }

    // ==================== 9. OperatorType ====================

    @Nested
    @DisplayName("9. OperatorType 操作人类别枚举")
    class OperatorTypeTests {

        @Test
        @DisplayName("values() - 包含3种操作人类别")
        void testValues_count() {
            assertEquals(3, OperatorType.values().length);
        }

        @Test
        @DisplayName("OTHER - 其它")
        void testOther() {
            assertEquals("OTHER", OperatorType.OTHER.name());
        }

        @Test
        @DisplayName("MANAGE - 后台用户")
        void testManage() {
            assertEquals("MANAGE", OperatorType.MANAGE.name());
        }

        @Test
        @DisplayName("MOBILE - 手机端用户")
        void testMobile() {
            assertEquals("MOBILE", OperatorType.MOBILE.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(OperatorType.OTHER, OperatorType.valueOf("OTHER"));
            assertEquals(OperatorType.MANAGE, OperatorType.valueOf("MANAGE"));
            assertEquals(OperatorType.MOBILE, OperatorType.valueOf("MOBILE"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> OperatorType.valueOf("ADMIN"));
        }
    }

    // ==================== 10. DataSourceType ====================

    @Nested
    @DisplayName("10. DataSourceType 数据源枚举")
    class DataSourceTypeTests {

        @Test
        @DisplayName("values() - 包含2种数据源")
        void testValues_count() {
            assertEquals(2, DataSourceType.values().length);
        }

        @Test
        @DisplayName("MASTER - 主库")
        void testMaster() {
            assertEquals("MASTER", DataSourceType.MASTER.name());
        }

        @Test
        @DisplayName("SLAVE - 从库")
        void testSlave() {
            assertEquals("SLAVE", DataSourceType.SLAVE.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(DataSourceType.MASTER, DataSourceType.valueOf("MASTER"));
            assertEquals(DataSourceType.SLAVE, DataSourceType.valueOf("SLAVE"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> DataSourceType.valueOf("REPLICA"));
        }
    }

    // ==================== 11. CalcType ====================

    @Nested
    @DisplayName("11. CalcType 计算类型枚举")
    class CalcTypeTests {

        @Test
        @DisplayName("values() - 包含3种计算类型")
        void testValues_count() {
            assertEquals(3, CalcType.values().length);
        }

        @Test
        @DisplayName("NONE - 不计算")
        void testNone() {
            assertEquals("NONE", CalcType.NONE.name());
        }

        @Test
        @DisplayName("CALC - 自动计算")
        void testCalc() {
            assertEquals("CALC", CalcType.CALC.name());
        }

        @Test
        @DisplayName("INPUT - 手工录入")
        void testInput() {
            assertEquals("INPUT", CalcType.INPUT.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(CalcType.NONE, CalcType.valueOf("NONE"));
            assertEquals(CalcType.CALC, CalcType.valueOf("CALC"));
            assertEquals(CalcType.INPUT, CalcType.valueOf("INPUT"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> CalcType.valueOf("AUTO"));
        }
    }

    // ==================== 12. RetrievalModes ====================

    @Nested
    @DisplayName("12. RetrievalModes 数据获取方式枚举")
    class RetrievalModesTests {

        @Test
        @DisplayName("values() - 包含2种获取方式")
        void testValues_count() {
            assertEquals(2, RetrievalModes.values().length);
        }

        @Test
        @DisplayName("Full - 全量获取")
        void testFull() {
            assertEquals("Full", RetrievalModes.Full.name());
        }

        @Test
        @DisplayName("BestFit - 最佳适配")
        void testBestFit() {
            assertEquals("BestFit", RetrievalModes.BestFit.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(RetrievalModes.Full, RetrievalModes.valueOf("Full"));
            assertEquals(RetrievalModes.BestFit, RetrievalModes.valueOf("BestFit"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> RetrievalModes.valueOf("Partial"));
        }
    }

    // ==================== 13. HttpMethod ====================

    @Nested
    @DisplayName("13. HttpMethod 请求方式枚举")
    class HttpMethodTests {

        @Test
        @DisplayName("values() - 包含8种HTTP方法")
        void testValues_count() {
            assertEquals(8, HttpMethod.values().length);
        }

        @Test
        @DisplayName("resolve() - 根据字符串解析枚举")
        void testResolve_valid() {
            assertEquals(HttpMethod.GET, HttpMethod.resolve("GET"));
            assertEquals(HttpMethod.POST, HttpMethod.resolve("POST"));
            assertEquals(HttpMethod.PUT, HttpMethod.resolve("PUT"));
            assertEquals(HttpMethod.DELETE, HttpMethod.resolve("DELETE"));
            assertEquals(HttpMethod.PATCH, HttpMethod.resolve("PATCH"));
            assertEquals(HttpMethod.HEAD, HttpMethod.resolve("HEAD"));
            assertEquals(HttpMethod.OPTIONS, HttpMethod.resolve("OPTIONS"));
            assertEquals(HttpMethod.TRACE, HttpMethod.resolve("TRACE"));
        }

        @Test
        @DisplayName("resolve() - 无效字符串返回null")
        void testResolve_invalid() {
            assertNull(HttpMethod.resolve("INVALID"));
        }

        @Test
        @DisplayName("resolve() - null参数返回null")
        void testResolve_null() {
            assertNull(HttpMethod.resolve(null));
        }

        @Test
        @DisplayName("matches() - 匹配相同方法名")
        void testMatches_same() {
            assertTrue(HttpMethod.GET.matches("GET"));
            assertTrue(HttpMethod.POST.matches("POST"));
            assertTrue(HttpMethod.PUT.matches("PUT"));
        }

        @Test
        @DisplayName("matches() - 不匹配不同方法名")
        void testMatches_different() {
            assertFalse(HttpMethod.GET.matches("POST"));
            assertFalse(HttpMethod.POST.matches("GET"));
            assertFalse(HttpMethod.DELETE.matches("PUT"));
        }

        @Test
        @DisplayName("matches() - 无效方法名返回false")
        void testMatches_invalid() {
            assertFalse(HttpMethod.GET.matches("INVALID"));
        }

        @Test
        @DisplayName("matches() - null方法名返回false")
        void testMatches_null() {
            assertFalse(HttpMethod.GET.matches(null));
        }

        @ParameterizedTest
        @EnumSource(HttpMethod.class)
        @DisplayName("每个枚举值resolve自身名称可返回自身")
        void testResolveSelf(HttpMethod method) {
            assertEquals(method, HttpMethod.resolve(method.name()));
        }

        @ParameterizedTest
        @EnumSource(HttpMethod.class)
        @DisplayName("每个枚举值matches自身名称返回true")
        void testMatchesSelf(HttpMethod method) {
            assertTrue(method.matches(method.name()));
        }
    }

    // ==================== 14. CollectionModes ====================

    @Nested
    @DisplayName("14. CollectionModes 实时数据统计类型枚举")
    class CollectionModesTests {

        @Test
        @DisplayName("values() - 包含5种统计类型")
        void testValues_count() {
            assertEquals(5, CollectionModes.values().length);
        }

        @Test
        @DisplayName("last - 最后值")
        void testLast() {
            assertEquals("last", CollectionModes.last.name());
        }

        @Test
        @DisplayName("mean - 平均值")
        void testMean() {
            assertEquals("mean", CollectionModes.mean.name());
        }

        @Test
        @DisplayName("min - 最小值")
        void testMin() {
            assertEquals("min", CollectionModes.min.name());
        }

        @Test
        @DisplayName("max - 最大值")
        void testMax() {
            assertEquals("max", CollectionModes.max.name());
        }

        @Test
        @DisplayName("sum - 求和")
        void testSum() {
            assertEquals("sum", CollectionModes.sum.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(CollectionModes.last, CollectionModes.valueOf("last"));
            assertEquals(CollectionModes.mean, CollectionModes.valueOf("mean"));
            assertEquals(CollectionModes.min, CollectionModes.valueOf("min"));
            assertEquals(CollectionModes.max, CollectionModes.valueOf("max"));
            assertEquals(CollectionModes.sum, CollectionModes.valueOf("sum"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> CollectionModes.valueOf("median"));
        }
    }

    // ==================== 15. BusinessType ====================

    @Nested
    @DisplayName("15. BusinessType 业务操作类型枚举")
    class BusinessTypeTests {

        @Test
        @DisplayName("values() - 包含9种业务操作类型")
        void testValues_count() {
            assertEquals(9, BusinessType.values().length);
        }

        @Test
        @DisplayName("OTHER - 其它")
        void testOther() {
            assertEquals("OTHER", BusinessType.OTHER.name());
        }

        @Test
        @DisplayName("INSERT - 新增")
        void testInsert() {
            assertEquals("INSERT", BusinessType.INSERT.name());
        }

        @Test
        @DisplayName("UPDATE - 修改")
        void testUpdate() {
            assertEquals("UPDATE", BusinessType.UPDATE.name());
        }

        @Test
        @DisplayName("DELETE - 删除")
        void testDelete() {
            assertEquals("DELETE", BusinessType.DELETE.name());
        }

        @Test
        @DisplayName("GRANT - 授权")
        void testGrant() {
            assertEquals("GRANT", BusinessType.GRANT.name());
        }

        @Test
        @DisplayName("EXPORT - 导出")
        void testExport() {
            assertEquals("EXPORT", BusinessType.EXPORT.name());
        }

        @Test
        @DisplayName("IMPORT - 导入")
        void testImport() {
            assertEquals("IMPORT", BusinessType.IMPORT.name());
        }

        @Test
        @DisplayName("FORCE - 强退")
        void testForce() {
            assertEquals("FORCE", BusinessType.FORCE.name());
        }

        @Test
        @DisplayName("GENCODE - 生成代码")
        void testGencode() {
            assertEquals("GENCODE", BusinessType.GENCODE.name());
        }

        @Test
        @DisplayName("CLEAN - 清空数据")
        void testClean() {
            assertEquals("CLEAN", BusinessType.CLEAN.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(BusinessType.OTHER, BusinessType.valueOf("OTHER"));
            assertEquals(BusinessType.INSERT, BusinessType.valueOf("INSERT"));
            assertEquals(BusinessType.UPDATE, BusinessType.valueOf("UPDATE"));
            assertEquals(BusinessType.DELETE, BusinessType.valueOf("DELETE"));
            assertEquals(BusinessType.GRANT, BusinessType.valueOf("GRANT"));
            assertEquals(BusinessType.EXPORT, BusinessType.valueOf("EXPORT"));
            assertEquals(BusinessType.IMPORT, BusinessType.valueOf("IMPORT"));
            assertEquals(BusinessType.FORCE, BusinessType.valueOf("FORCE"));
            assertEquals(BusinessType.GENCODE, BusinessType.valueOf("GENCODE"));
            assertEquals(BusinessType.CLEAN, BusinessType.valueOf("CLEAN"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> BusinessType.valueOf("SELECT"));
        }
    }

    // ==================== 16. BusinessStatus ====================

    @Nested
    @DisplayName("16. BusinessStatus 操作状态枚举")
    class BusinessStatusTests {

        @Test
        @DisplayName("values() - 包含2种操作状态")
        void testValues_count() {
            assertEquals(2, BusinessStatus.values().length);
        }

        @Test
        @DisplayName("SUCCESS - 成功")
        void testSuccess() {
            assertEquals("SUCCESS", BusinessStatus.SUCCESS.name());
        }

        @Test
        @DisplayName("FAIL - 失败")
        void testFail() {
            assertEquals("FAIL", BusinessStatus.FAIL.name());
        }

        @Test
        @DisplayName("valueOf() - 按名称获取枚举")
        void testValueOf() {
            assertEquals(BusinessStatus.SUCCESS, BusinessStatus.valueOf("SUCCESS"));
            assertEquals(BusinessStatus.FAIL, BusinessStatus.valueOf("FAIL"));
        }

        @Test
        @DisplayName("valueOf() - 无效名称抛出IllegalArgumentException")
        void testValueOf_invalid() {
            assertThrows(IllegalArgumentException.class, () -> BusinessStatus.valueOf("PENDING"));
        }
    }

    // ==================== 17. DesensitizedType ====================

    @Nested
    @DisplayName("17. DesensitizedType 脱敏类型枚举")
    class DesensitizedTypeTests {

        @Test
        @DisplayName("values() - 包含7种脱敏类型")
        void testValues_count() {
            assertEquals(7, DesensitizedType.values().length);
        }

        @Test
        @DisplayName("USERNAME - 姓名脱敏")
        void testUsername() {
            assertEquals("USERNAME", DesensitizedType.USERNAME.name());
            assertNotNull(DesensitizedType.USERNAME.desensitizer());
        }

        @Test
        @DisplayName("PASSWORD - 密码脱敏")
        void testPassword() {
            assertEquals("PASSWORD", DesensitizedType.PASSWORD.name());
            assertNotNull(DesensitizedType.PASSWORD.desensitizer());
        }

        @Test
        @DisplayName("ID_CARD - 身份证脱敏")
        void testIdCard() {
            assertEquals("ID_CARD", DesensitizedType.ID_CARD.name());
            assertNotNull(DesensitizedType.ID_CARD.desensitizer());
        }

        @Test
        @DisplayName("PHONE - 手机号脱敏")
        void testPhone() {
            assertEquals("PHONE", DesensitizedType.PHONE.name());
            assertNotNull(DesensitizedType.PHONE.desensitizer());
        }

        @Test
        @DisplayName("EMAIL - 电子邮箱脱敏")
        void testEmail() {
            assertEquals("EMAIL", DesensitizedType.EMAIL.name());
            assertNotNull(DesensitizedType.EMAIL.desensitizer());
        }

        @Test
        @DisplayName("BANK_CARD - 银行卡号脱敏")
        void testBankCard() {
            assertEquals("BANK_CARD", DesensitizedType.BANK_CARD.name());
            assertNotNull(DesensitizedType.BANK_CARD.desensitizer());
        }

        @Test
        @DisplayName("CAR_LICENSE - 车牌号码脱敏")
        void testCarLicense() {
            assertEquals("CAR_LICENSE", DesensitizedType.CAR_LICENSE.name());
            assertNotNull(DesensitizedType.CAR_LICENSE.desensitizer());
        }

        @Test
        @DisplayName("USERNAME脱敏 - 第2位星号替换")
        void testUsernameDesensitize() {
            String result = DesensitizedType.USERNAME.desensitizer().apply("张三丰");
            assertEquals("张*丰", result);
        }

        @Test
        @DisplayName("USERNAME脱敏 - 两个字符")
        void testUsernameDesensitize_twoChars() {
            String result = DesensitizedType.USERNAME.desensitizer().apply("张三");
            assertEquals("张*", result);
        }

        @Test
        @DisplayName("USERNAME脱敏 - 单字符")
        void testUsernameDesensitize_singleChar() {
            String result = DesensitizedType.USERNAME.desensitizer().apply("张");
            assertEquals("张", result);
        }

        @Test
        @DisplayName("PHONE脱敏 - 中间4位星号替换")
        void testPhoneDesensitize() {
            String result = DesensitizedType.PHONE.desensitizer().apply("13812345678");
            assertEquals("138****5678", result);
        }

        @Test
        @DisplayName("EMAIL脱敏 - 仅显示首字母和@后地址")
        void testEmailDesensitize() {
            String result = DesensitizedType.EMAIL.desensitizer().apply("test@example.com");
            assertEquals("t****@example.com", result);
        }

        @Test
        @DisplayName("ID_CARD脱敏 - 中间10位星号替换")
        void testIdCardDesensitize() {
            String result = DesensitizedType.ID_CARD.desensitizer().apply("110101199001011234");
            assertTrue(result.contains("****"));
            assertTrue(result.startsWith("1101"));
            assertTrue(result.endsWith("1234"));
        }

        @Test
        @DisplayName("每个枚举值的desensitizer不为null")
        void testDesensitizerNotNull() {
            for (DesensitizedType type : DesensitizedType.values()) {
                assertNotNull(type.desensitizer(), type.name() + " desensitizer不应为null");
            }
        }

        @ParameterizedTest
        @EnumSource(DesensitizedType.class)
        @DisplayName("每个脱敏器对非空字符串都能正常执行")
        void testDesensitizerApplies(DesensitizedType type) {
            assertDoesNotThrow(() -> type.desensitizer().apply("testdata123456"));
        }
    }
}