# 智碳能源管理系统 - Gitee 持续更新计划

> 目标：通过每日交替更新单元测试和文档，持续提升 Gitee 仓库活跃度，同时完善项目质量与用户体验。
>
> 规则：**奇数日 = 单元测试日**，**偶数日 = 文档更新日**，每天一次提交，持续不间断。
>
> **测试日约定（2026-08-13 起）**：奇数日除交付 `*Test.java` 外，**必须同步输出测试文档**至 `docs/test/`（模板见 `docs/test/_TEMPLATE.md`），并在进度备注中写明文档路径。
>
> **进度摘要（更新于 2026-08-13）**：第二阶段进行中，Day 1–25 已完成，**下一项：Day 26 用户手册 - 成本分析**。当前分支 `lwx_from_dev`。

---

## 一、项目现状分析

| 维度 | 现状 |
|------|------|
| 单元测试 | **当前分支约 23 个测试类**：工具类 8 个 + HomePage + Comprehensive×3 + Alarm×3 + PeakValley×3 + CostManagement×2 + **KeyEquipment×3** |
| 项目文档 | README 已含文档导航；独立文档含环境配置、用户手册（首页看板/实时监测/告警管理/能耗分析/尖峰平谷）、UPDATE_PLAN 等；仍缺更多用户手册/API 等 |
| 后端代码 | 多模块：admin/common/framework/system/quartz/generator，31 个业务包 |
| 前端代码 | `zhitan-vue/` Vue3 + Vite + Element Plus |
| 工具类 | 含 Arith、DateTimeUtil、StringUtils、SecurityUtils、DesensitizedUtil 等 |
| 枚举类 | 含 DesensitizedType 等十余个枚举 |

### 项目目录结构

```
zhitan-ems-v3-new/
├── zhitan-api/                     # 后端 API 工程
│   ├── zhitan-admin/               # 主应用模块（Controller + 启动类）
│   ├── zhitan-common/              # 公共工具和共享组件
│   ├── zhitan-framework/           # 框架组件（Security、MQTT、拦截器等）
│   ├── zhitan-system/              # 业务模块（31个业务子模块）
│   ├── zhitan-quartz/              # 定时任务模块
│   └── zhitan-generator/           # 代码生成模块
├── zhitan-web/                     # 前端工程（Vue3 + Vite）
├── docs/                           # 项目文档
├── images/                         # README 图片资源
├── README.md                       # 项目主页文档
└── .env.file                       # 环境变量配置模板
```

---

## 二、提交信息规范

```
# 单元测试日（代码 + 测试文档）
test: 添加 DateTimeUtil 日期工具类单元测试与测试说明
test: 添加首页看板服务层 Mock 测试与测试文档
test: 添加告警模块服务层单元测试与 docs/test 说明

# 文档更新日
docs: 新增部署文档 deployment.md
docs: 新增用户操作手册 - 首页看板
docs: 更新 README 功能列表描述
```

---

## 三、60 天详细更新计划

### 第一阶段：扩展测试 + 基础文档（第 1 - 14 天）

> 目标：在已有测试基础上扩展覆盖面，补充独立部署和使用文档
> 
> 已完成：✅ Day 1–14（见下表）；第一阶段完成
> 
> **下一任务：见第二阶段（当前进行至 Day 25+）**

| 天数 | 类型 | 任务 | 具体内容 | 涉及路径 | 状态 |
|------|------|------|----------|----------|------|
| Day 1 | 🧪 测试 | DateTimeUtil 测试 | 日期格式化、时间差计算、时间类型判断、日期范围生成等核心方法 | `.../utils/DateTimeUtilTest.java` | ✅ 已完成（92 `@Test`，2026-06-03） |
| Day 2 | 📝 文档 | 快速开始指南 | 面向开发者的 5 分钟快速上手：环境要求、Docker 一键部署、源码启动方式 | 实际文件：`docs/快速开始指南文档.md`（计划名 `quick-start.md`） | ✅ 已完成（2026-06-05） |
| Day 3 | 🧪 测试 | StringUtils 测试 | 空判断、字符串截取、驼峰转换、下划线转换、去除空白等方法 | `.../utils/StringUtilsTest.java` | ✅ 已完成（141 `@Test`，2026-06-06） |
| Day 4 | 📝 文档 | 源码部署文档 | 非 Docker 方式的源码编译部署：JDK8 + Maven + PostgreSQL + InfluxDB + Redis 手动配置 | `docs/source-deployment.md` | ✅ 已完成（2026-06-08） |
| Day 5 | 🧪 测试 | DateUtils 测试 | 日期解析、日期计算、格式化输出、日期区间生成等方法 | `.../utils/DateUtilsTest.java` | ✅ 已完成（69 `@Test`，2026-06-12；提交信息曾误标 Day 4） |
| Day 6 | 📝 文档 | 前端部署文档 | Vue3 前端环境搭建、Node.js 版本要求、npm 安装、Vite 配置、打包部署、Nginx 配置 | `docs/frontend-deployment.md` | ✅ 已完成（2026-06-15 / 06-22） |
| Day 7 | 🧪 测试 | SecurityUtils 测试 | 用户信息获取、权限判断、Token 处理等安全工具方法 | `.../utils/SecurityUtilsTest.java` | ✅ 已完成（64 `@Test`，随 2026-06-22 提交一并合入） |
| Day 8 | 📝 文档 | 数据库设计文档 | 核心表结构说明（基于 SQL 分析），含表用途索引、字段说明 | `docs/database-design.md` | ✅ 已完成（2026-06-24） |
| Day 9 | 🧪 测试 | 枚举类测试 | ElectricityTypeEnum、PointType、GroupTimeType、TimeType、UserStatus 等枚举测试 | `.../enums/EnumsTest.java` | ✅ 已完成（132 `@Test`，2026-07-07） |
| Day 10 | 📝 文档 | 系统架构文档 | 多模块架构说明，各模块职责、依赖关系图、数据流向图 | `docs/architecture.md` | ✅ 已完成（2026-07-24） |
| Day 11 | 🧪 测试 | DesensitizedUtil 测试 | 密码/车牌脱敏；关联手机号、身份证、邮箱等（DesensitizedType） | `.../utils/DesensitizedUtilTest.java` | ✅ 已完成（30 用例，2026-07-25） |
| Day 12 | 📝 文档 | 更新 README | 补充文档索引目录，链接到所有独立文档，优化排版 | `README.md` | ✅ 已完成（2026-07-27） |
| Day 13 | 🧪 测试 | PageUtils + ChartUtils 测试 | 分页工具、图表工具方法测试 | `PageUtilsTest.java`、`ChartUtilsTest.java` | ✅ 已完成（34 用例，2026-07-28） |
| Day 14 | 📝 文档 | 环境配置说明 | 详细说明 `.env.file` 中每个环境变量的作用、默认值、注意事项 | `docs/env-configuration.md` | ✅ 已完成（2026-07-29） |

---

### 第二阶段：核心业务测试 + 用户操作手册（第 15 - 28 天）

> 目标：覆盖核心业务服务层测试，编写面向终端用户的操作手册

| 天数 | 类型 | 任务 | 具体内容 | 涉及路径 | 状态 |
|------|------|------|----------|----------|------|
| Day 15 | 🧪 测试 | 首页看板服务测试 | HomePageServiceImpl 的 Mock 测试，首页数据聚合、看板展示逻辑 | `zhitan-system/src/test/.../home/HomePageServiceImplTest.java` | ✅ 已完成（17 用例，2026-07-30） |
| Day 16 | 📝 文档 | 用户手册 - 首页看板 | 首页看板、成本看板、储能看板、告警看板的功能使用说明 | `docs/user-guide/dashboard.md` | ✅ 已完成（2026-07-31） |
| Day 17 | 🧪 测试 | 综合指标分析测试 | DailyComprehensiveServiceImpl / MonthlyComprehensiveServiceImpl / YearComprehensiveServiceImpl | `zhitan-system/src/test/.../comprehensivestatistics/` | ✅ 已完成（20 用例，2026-08-04） |
| Day 18 | 📝 文档 | 用户手册 - 实时监测 | 实时数据查看、组态图分析（SVG 绑定）、网关状态检测操作指南 | `docs/user-guide/realtime-monitor.md` | ✅ 已完成（2026-08-05） |
| Day 19 | 🧪 测试 | 告警服务测试 | AlarmItemServiceImpl / AlarmLimitTypeServiceImpl / AlarmHistoryServiceImpl | `zhitan-system/src/test/.../alarm/` | ✅ 已完成（27 用例，2026-08-06） |
| Day 20 | 📝 文档 | 用户手册 - 告警管理 | 告警配置、告警规则设置、告警阈值调整、告警查询与导出 | `docs/user-guide/alarm.md` | ✅ 已完成（2026-08-07） |
| Day 21 | 🧪 测试 | 尖峰平谷分析测试 | 尖峰平谷配置管理、时段数据统计逻辑测试 | `zhitan-system/src/test/.../peakvalley/` | ✅ 已完成（32 用例，2026-08-08） |
| Day 22 | 📝 文档 | 用户手册 - 能耗分析 | 综合指标分析（日/月/年）、区域能耗、重点设备分析使用说明 | `docs/user-guide/energy-analysis.md` | ✅ 已完成（2026-08-10） |
| Day 23 | 🧪 测试 | 成本管理服务测试 | CostPriceTacticsServiceImpl / CostPriceRelevancyServiceImpl 成本策略与关联 | `zhitan-system/src/test/.../costmanagement/` | ✅ 已完成（21 用例，2026-08-11） |
| Day 24 | 📝 文档 | 用户手册 - 尖峰平谷 | 尖峰平谷配置方法、时段数据查看、费用分析操作指南 | `docs/user-guide/peak-valley.md` | ✅ 已完成（2026-08-12） |
| Day 25 | 🧪 测试 | 重点设备分析测试 | keyequipment 模块重点设备日/月/年能耗分析逻辑 | `zhitan-system/src/test/.../keyequipment/` | ✅ 已完成（20 用例，2026-08-13） |
| Day 26 | 📝 文档 | 用户手册 - 成本分析 | 能源成本分析方法、成本策略配置、电价关联操作指南 | `docs/user-guide/cost-analysis.md` | ⬜ 待开始 ← **当前下一项** |
| Day 27 | 🧪 测试 | 工序能耗分析测试 | processenergy 模块工序能耗日/月/年统计逻辑 | `zhitan-api/zhitan-system/src/test/.../processenergy/` | ⬜ 待开始 |
| Day 28 | 📝 文档 | 用户手册 - 同环比分析 | 电/水/其他能源品种同环比对比分析操作指南 | `docs/user-guide/comparison.md` | ⬜ 待开始 |

---

### 第三阶段：深度业务测试 + 开发者 API 文档（第 29 - 42 天）

> 目标：覆盖高级业务模块测试，编写面向开发者的 API 接口文档

| 天数 | 类型 | 任务 | 具体内容 | 涉及路径 | 状态 |
|------|------|------|----------|----------|------|
| Day 29 | 🧪 测试 | 碳排放分析测试 | CarbonEmissionServiceImpl 基于吨标煤的碳排放计算逻辑 | `zhitan-api/zhitan-system/src/test/.../carbonemission/` | ⬜ 待开始 |
| Day 30 | 📝 文档 | API 文档 - 首页模块 | 首页看板相关接口：请求路径、请求参数、返回值格式、示例 | `docs/api/home-api.md` | ⬜ 待开始 |
| Day 31 | 🧪 测试 | 分项能耗分析测试 | ItemizedEnergyAnalysisServiceImpl 分项能耗统计逻辑 | `zhitan-api/zhitan-system/src/test/.../Itemizedenergyanalysis/` | ⬜ 待开始 |
| Day 32 | 📝 文档 | API 文档 - 实时监测 | 实时数据查询、组态图数据接口、网关状态接口 | `docs/api/realtime-api.md` | ⬜ 待开始 |
| Day 33 | 🧪 测试 | 支路能耗分析测试 | BranchAnalysisServiceImpl 支路分析逻辑 | `zhitan-api/zhitan-system/src/test/.../branchanalysis/` | ⬜ 待开始 |
| Day 34 | 📝 文档 | API 文档 - 告警模块 | 告警 CRUD、告警配置、告警历史查询接口 | `docs/api/alarm-api.md` | ⬜ 待开始 |
| Day 35 | 🧪 测试 | 能耗对比分析测试 | ConsumptionAnalysisServiceImpl 同环比计算（边界值、零值处理） | `zhitan-api/zhitan-system/src/test/.../consumptionanalysis/` | ⬜ 待开始 |
| Day 36 | 📝 文档 | API 文档 - 能耗分析 | 综合指标/区域分析/设备分析相关接口 | `docs/api/energy-analysis-api.md` | ⬜ 待开始 |
| Day 37 | 🧪 测试 | 基准管理测试 | BenchmarkServiceImpl 能耗基准对比逻辑 | `zhitan-api/zhitan-system/src/test/.../benchmarkmanage/` | ⬜ 待开始 |
| Day 38 | 📝 文档 | API 文档 - 成本与尖峰平谷 | 成本策略、尖峰平谷配置相关接口 | `docs/api/cost-peak-api.md` | ⬜ 待开始 |
| Day 39 | 🧪 测试 | 节能项目服务测试 | saving 模块节能项目管理、节能效果计算逻辑 | `zhitan-api/zhitan-system/src/test/.../saving/` | ⬜ 待开始 |
| Day 40 | 📝 文档 | API 文档 - 碳排放与节能 | 碳排放计算接口、节能项目管理接口 | `docs/api/carbon-saving-api.md` | ⬜ 待开始 |
| Day 41 | 🧪 测试 | 设备档案管理测试 | meter 模块仪表/设备档案 CRUD 逻辑 | `zhitan-api/zhitan-system/src/test/.../meter/` | ⬜ 待开始 |
| Day 42 | 📝 文档 | 开发者贡献指南 | 代码规范、分支策略、PR 模板、开发环境搭建说明 | `docs/contributing.md` | ⬜ 待开始 |

---

### 第四阶段：高级功能测试 + 运维与 FAQ（第 43 - 56 天）

> 目标：覆盖剩余业务模块，补充运维文档与常见问题

| 天数 | 类型 | 任务 | 具体内容 | 涉及路径 | 状态 |
|------|------|------|----------|----------|------|
| Day 43 | 🧪 测试 | 模型配置管理测试 | model 模块计算模型配置、模型参数验证逻辑 | `zhitan-api/zhitan-system/src/test/.../model/` | ⬜ 待开始 |
| Day 44 | 📝 文档 | 常见问题 FAQ | 常见部署问题、数据库连接、InfluxDB 配置、端口冲突等解答 | `docs/faq.md` | ⬜ 待开始 |
| Day 45 | 🧪 测试 | 基础数据服务测试 | SysEnergyServiceImpl / SysEnergyTemplateServiceImpl 能源类型与模板管理 | `zhitan-api/zhitan-system/src/test/.../basicdata/` | ⬜ 待开始 |
| Day 46 | 📝 文档 | 运维监控指南 | 日志管理、定时任务配置（quartz 模块）、性能调优建议 | `docs/operations.md` | ⬜ 待开始 |
| Day 47 | 🧪 测试 | 定时任务服务测试 | SysJobServiceImpl / SysJobLogServiceImpl 调度逻辑 | `zhitan-api/zhitan-quartz/src/test/.../quartz/` | ⬜ 待开始 |
| Day 48 | 📝 文档 | 数据接入指南 | MQTT 数据接入说明、InfluxDB 数据格式、数据清洗流程 | `docs/data-integration.md` | ⬜ 待开始 |
| Day 49 | 🧪 测试 | 用户认证服务测试 | UserDetailsServiceImpl 用户认证、权限加载逻辑 | `zhitan-api/zhitan-framework/src/test/.../web/service/` | ⬜ 待开始 |
| Day 50 | 📝 文档 | 用户手册 - 权限管理 | 用户管理、角色管理、权限分配、菜单管理操作指南 | `docs/user-guide/permission.md` | ⬜ 待开始 |
| Day 51 | 🧪 测试 | PhoneNumberUtils 测试 | 手机号格式校验、手机号脱敏等工具方法测试 | `.../utils/PhoneNumberUtilsTest.java` | ⬜ 待开始 |
| Day 52 | 📝 文档 | 用户手册 - 建筑能耗 | 建筑能耗支路分析、分项分析功能使用说明 | `docs/user-guide/building-consumption.md` | ⬜ 待开始 |
| Day 53 | 🧪 测试 | 知识库服务测试 | knowledgeBase 模块知识库文档管理逻辑 | `zhitan-api/zhitan-system/src/test/.../knowledgeBase/` | ⬜ 待开始 |
| Day 54 | 📝 文档 | 用户手册 - 储能管理 | 智慧储能监测、储能配置、储能及时统计操作指南 | `docs/user-guide/energy-storage.md` | ⬜ 待开始 |
| Day 55 | 🧪 测试 | 单耗分析测试 | productoutput 产品产量与单耗分析计算逻辑 | `zhitan-api/zhitan-system/src/test/.../productoutput/` | ⬜ 待开始 |
| Day 56 | 📝 文档 | 用户手册 - 单耗与能流图 | 单耗分析方法和能流图功能使用说明 | `docs/user-guide/unit-consumption.md` | ⬜ 待开始 |

---

### 第五阶段：收尾整合（第 57 - 60 天）

> 目标：补充遗漏模块，整合文档索引

| 天数 | 类型 | 任务 | 具体内容 | 涉及路径 | 状态 |
|------|------|------|----------|----------|------|
| Day 57 | 🧪 测试 | 能源指标服务测试 | energyIndicators 模块能源指标计算与展示逻辑 | `zhitan-api/zhitan-system/src/test/.../energyIndicators/` | ⬜ 待开始 |
| Day 58 | 📝 文档 | README 文档索引 | 在 README 中添加所有文档的链接索引，形成完整文档导航目录 | `README.md` | ⬜ 待开始 |
| Day 59 | 🧪 测试 | 配用电分析测试 | powerDistribution 配电分析逻辑测试 | `zhitan-api/zhitan-system/src/test/.../powerDistribution/` | ⬜ 待开始 |
| Day 60 | 📝 文档 | CHANGELOG 更新日志 | 汇总 60 天全部改进内容，形成版本更新日志 | `CHANGELOG.md` | ⬜ 待开始 |

---

## 四、60 天后持续迭代建议

完成第一轮 60 天后，进入更深层次的迭代循环：

| 轮次 | 测试方向 | 文档方向 |
|------|----------|----------|
| 第 2 轮（Day 61-120） | **集成测试**：SpringBoot Test + MockMvc 控制器层接口测试 | 行业解决方案文档（园区/工厂/政府）、使用案例 |
| 第 3 轮（Day 121-180） | **场景测试**：性能测试、边界场景、异常路径、并发测试 | 二次开发指南、插件扩展文档、自定义报表开发 |
| 第 4 轮（Day 181-240） | **前端测试**：Vue 组件单元测试（Vitest + Vue Test Utils） | 英文版 README 和核心文档翻译、国际化支持 |
| 第 5 轮（Day 241-300） | **E2E 测试**：端到端自动化测试、CI/CD 集成 | 客户成功案例、行业白皮书、技术博客素材 |

---

## 五、预期成果

### 第一轮 60 天完成后

| 指标 | 预期数值 |
|------|----------|
| 单元测试文件数 | **30+ 个测试类** |
| 文档文件数 | **20+ 个文档** |
| Gitee 连续提交天数 | **60 天** |
| 测试覆盖模块 | 全部 31 个业务模块的核心工具类和服务层 |
| 文档体系 | 部署文档 + 用户手册 + API 文档 + 开发者文档 + FAQ 完整体系 |

### 当前实际进度（更新 2026-08-07）

| 指标 | 当前数值 |
|------|----------|
| 单元测试文件数 | **15+ 个测试类**（含告警 Item/LimitType/History，合计 27 用例） |
| 独立文档文件数 | **10 个**（含用户手册-首页看板/实时监测/告警管理）+ README 文档导航 |
| 计划完成天数 | **Day 1–20 / 60**（第二阶段进行中） |
| 当前分支 | `lwx_from_dev` |

### 长期目标（300 天）

| 指标 | 预期数值 |
|------|----------|
| 单元测试文件数 | **100+ 个测试类** |
| 文档文件数 | **50+ 个文档** |
| Gitee Star 数 | 显著提升 |
| 项目质量 | 测试覆盖率 > 60%，文档完备度行业领先 |

---

## 六、文档目录结构规划

```
docs/
├── UPDATE_PLAN.md                 # 持续更新计划（本文件）
├── 快速开始指南文档.md             # ✅ Day 2 已完成（计划名原为 quick-start.md）
├── source-deployment.md           # ✅ Day 4 已完成
├── frontend-deployment.md         # ✅ Day 6 已完成
├── database-design.md             # ✅ Day 8 已完成
├── architecture.md                # ✅ Day 10 已完成
├── env-configuration.md           # ✅ Day 14 已完成
├── contributing.md                # 📋 Day 42
├── faq.md                         # 📋 Day 44
├── operations.md                  # 📋 Day 46
├── data-integration.md            # 📋 Day 48
├── user-guide/                    # 用户操作手册
│   ├── dashboard.md               # ✅ Day 16 已完成
│   ├── realtime-monitor.md        # ✅ Day 18 已完成
│   ├── alarm.md                   # ✅ Day 20 已完成
│   ├── energy-analysis.md         # ✅ Day 22
│   ├── peak-valley.md             # ✅ Day 24
│   ├── cost-analysis.md           # 📋 Day 26
│   ├── comparison.md              # 📋 Day 28
│   ├── permission.md              # 📋 Day 50
│   ├── building-consumption.md    # 📋 Day 52
│   ├── energy-storage.md          # 📋 Day 54
│   └── unit-consumption.md        # 📋 Day 56
├── test/                          # 测试文档（奇数日与代码同步，2026-08-13 起）
│   ├── README.md
│   └── _TEMPLATE.md
└── api/                           # API 接口文档
    ├── home-api.md                # 📋 Day 30
    ├── realtime-api.md            # 📋 Day 32
    ├── alarm-api.md               # 📋 Day 34
    ├── energy-analysis-api.md     # 📋 Day 36
    ├── cost-peak-api.md           # 📋 Day 38
    └── carbon-saving-api.md       # 📋 Day 40
```

---

## 七、测试目录结构规划

```
zhitan-common/src/test/java/com/zhitan/common/
├── utils/
│   ├── DateTimeUtilTest.java           ✅ Day 1 已完成
│   ├── StringUtilsTest.java            ✅ Day 3 已完成
│   ├── DateUtilsTest.java              ✅ Day 5 已完成
│   ├── SecurityUtilsTest.java          ✅ Day 7 已完成
│   ├── DesensitizedUtilTest.java       ✅ Day 11 已完成（30 用例）
│   ├── PageUtilsTest.java              ✅ Day 13 已完成
│   ├── ChartUtilsTest.java             ✅ Day 13 已完成
│   └── PhoneNumberUtilsTest.java       📋 Day 51
└── enums/
    └── EnumsTest.java                  ✅ Day 9 已完成

zhitan-system/src/test/java/com/zhitan/
├── home/                               ✅ Day 15（HomePageServiceImplTest，17 用例）
├── comprehensivestatistics/            ✅ Day 17（Daily/Monthly/Year，20 用例）
├── alarm/                              ✅ Day 19（Item/LimitType/History，27 用例）
├── peakvalley/                         ✅ Day 21（Price/PriceDate/EnergyUsed，32 用例）
├── costmanagement/                     ✅ Day 23（Tactics/Relevancy，21 用例）
├── keyequipment/                       ✅ Day 25（Daily/Monthly/Year，20 用例）
├── processenergy/                      📋 Day 27
├── carbonemission/                     📋 Day 29
├── Itemizedenergyanalysis/             📋 Day 31
├── branchanalysis/                     📋 Day 33
├── consumptionanalysis/                📋 Day 35
├── benchmarkmanage/                    📋 Day 37
├── saving/                             📋 Day 39
├── meter/                              📋 Day 41
├── model/                              📋 Day 43
├── basicdata/                          📋 Day 45
├── knowledgeBase/                      📋 Day 53
├── productoutput/                      📋 Day 55
├── energyIndicators/                   📋 Day 57
└── powerDistribution/                  📋 Day 59

zhitan-quartz/src/test/java/com/zhitan/quartz/
├── SysJobServiceTest.java              📋 Day 47
└── SysJobLogServiceTest.java           📋 Day 47

zhitan-framework/src/test/java/com/zhitan/framework/
└── web/service/
    └── UserDetailsServiceImplTest.java 📋 Day 49
```

> 说明：当前进度分支路径为 `zhitan-common/...`（无 `zhitan-api/` 前缀）。基线 Arith/DoubleUtil/IntegerUtil 测试可能仅存在于其他分支。

---

## 八、每日操作清单模板

### 测试日操作清单

- [ ] 1. 阅读目标类的源码，理解业务逻辑
- [ ] 2. 编写单元测试类（使用 JUnit5 + Mockito）
- [ ] 3. 本地运行测试确认通过：`mvn test -pl zhitan-system|zhitan-common "-Dtest=目标测试类" -am`
- [ ] 4. **编写/更新测试文档**：`docs/test/<主题>.md`（按 `_TEMPLATE.md`，含覆盖范围、运行方式、场景与缺口）
- [ ] 5. 更新 `UPDATE_PLAN` 进度备注（含测试文档路径）；必要时在 README 测试文档导航加链接
- [ ] 6. 提交代码，commit message 格式：`test: 添加 XXX 模块单元测试与测试说明`

### 文档日操作清单

- [ ] 1. 确认文档主题和目标读者
- [ ] 2. 编写/更新文档内容
- [ ] 3. 检查文档中的链接、截图是否正确
- [ ] 4. 提交代码，commit message 格式：`docs: 新增/更新 XXX 文档`

---

## 九、已完成进度追踪

| 日期 | 天数 | 类型 | 任务 | 状态 | 备注 |
|------|------|------|------|------|------|
| - | 基线 | 🧪 测试 | Arith/DoubleUtil/IntegerUtil 测试 | ✅ 已完成（部分分支） | 可能不在当前分支 |
| 2026-06-03 | Day 1 | 🧪 测试 | DateTimeUtil 测试 | ✅ 已完成 | `DateTimeUtilTest.java` |
| 2026-06-05 | Day 2 | 📝 文档 | 快速开始指南 | ✅ 已完成 | `docs/快速开始指南文档.md` |
| 2026-06-06 | Day 3 | 🧪 测试 | StringUtils 测试 | ✅ 已完成 | `StringUtilsTest.java` |
| 2026-06-08 | Day 4 | 📝 文档 | 源码部署文档 | ✅ 已完成 | `docs/source-deployment.md` |
| 2026-06-12 | Day 5 | 🧪 测试 | DateUtils 测试 | ✅ 已完成 | `DateUtilsTest.java` |
| 2026-06-15 | Day 6 | 📝 文档 | 前端部署文档 | ✅ 已完成 | `docs/frontend-deployment.md` |
| 2026-06-22 | Day 7 | 🧪 测试 | SecurityUtils 测试 | ✅ 已完成 | `SecurityUtilsTest.java` |
| 2026-06-24 | Day 8 | 📝 文档 | 数据库设计文档 | ✅ 已完成 | `docs/database-design.md` |
| 2026-07-07 | Day 9 | 🧪 测试 | 枚举类测试 | ✅ 已完成 | `EnumsTest.java` |
| 2026-07-24 | Day 10 | 📝 文档 | 系统架构文档 | ✅ 已完成 | `docs/architecture.md` |
| 2026-07-25 | Day 11 | 🧪 测试 | DesensitizedUtil 测试 | ✅ 已完成（30 用例） | 含密码/车牌 + 手机号/身份证/邮箱等关联脱敏 |
| 2026-07-27 | Day 12 | 📝 文档 | 更新 README | ✅ 已完成 | 补充文档导航索引，优化快速开始与排版 |
| 2026-07-28 | Day 13 | 🧪 测试 | PageUtils + ChartUtils 测试 | ✅ 已完成（34 用例） | `PageUtilsTest` + `ChartUtilsTest` |
| 2026-07-29 | Day 14 | 📝 文档 | 环境配置说明 | ✅ 已完成 | `docs/env-configuration.md` + 恢复 `.env.file` 模板 |
| 2026-07-30 | Day 15 | 🧪 测试 | 首页看板服务测试 | ✅ 已完成（17 用例） | `HomePageServiceImplTest`（Mock） |
| 2026-07-31 | Day 16 | 📝 文档 | 用户手册 - 首页看板 | ✅ 已完成 | `docs/user-guide/dashboard.md` |
| 2026-08-04 | Day 17 | 🧪 测试 | 综合指标分析测试 | ✅ 已完成（20 用例） | Daily/Monthly/YearComprehensiveServiceImplTest |
| 2026-08-05 | Day 18 | 📝 文档 | 用户手册 - 实时监测 | ✅ 已完成 | `docs/user-guide/realtime-monitor.md` |
| 2026-08-06 | Day 19 | 🧪 测试 | 告警服务测试 | ✅ 已完成（27 用例） | AlarmItem/LimitType/HistoryServiceImplTest |
| 2026-08-07 | Day 20 | 📝 文档 | 用户手册 - 告警管理 | ✅ 已完成 | `docs/user-guide/alarm.md` |
| 2026-08-08 | Day 21 | 🧪 测试 | 尖峰平谷分析测试 | ✅ 已完成（32 用例） | SettingElectricityPrice/PriceDate/EnergyUsedElectricityServiceImplTest |
| 2026-08-10 | Day 22 | 📝 文档 | 用户手册 - 能耗分析 | ✅ 已完成 | `docs/user-guide/energy-analysis.md` |
| 2026-08-11 | Day 23 | 🧪 测试 | 成本管理服务测试 | ✅ 已完成（21 用例） | CostPriceTactics/RelevancyServiceImplTest |
| 2026-08-12 | Day 24 | 📝 文档 | 用户手册 - 尖峰平谷 | ✅ 已完成 | `docs/user-guide/peak-valley.md` |
| 2026-08-13 | Day 25 | 🧪 测试 | 重点设备分析测试 | ✅ 已完成（20 用例） | Daily/Monthly/YearKeyEquipmentServiceImplTest |
| - | Day 26 | 📝 文档 | 用户手册 - 成本分析 | ⬜ 待开始 | **当前下一项** |
| - | Day 27–60 | - | （其余计划任务） | ⬜ 待开始 | 见第三节各阶段表格 |

---

*本计划从项目实际代码结构出发，覆盖全部 31 个业务模块，确保每天的更新都有实质性的价值提升。*
*状态更新日期：2026-08-13（Day 25 已完成）；当前分支：`lwx_from_dev`。*
