# 数据库设计文档

> 基于 `sql/public-v3.sql` 分析，适用于智碳能源管理系统（zhitan_ems_v3）  
> 数据库类型：PostgreSQL 14  
> 最后更新：2026-06-24

---

## 目录

- [1. 概述](#1-概述)
- [2. 表用途索引](#2-表用途索引)
- [3. 通用设计规范](#3-通用设计规范)
- [4. 核心表结构说明](#4-核心表结构说明)
  - [4.1 模型配置模块](#41-模型配置模块)
  - [4.2 能源监控模块](#42-能源监控模块)
  - [4.3 告警管理模块](#43-告警管理模块)
  - [4.4 储能管理模块](#44-储能管理模块)
  - [4.5 成本管理模块](#45-成本管理模块)
  - [4.6 能效分析模块](#46-能效分析模块)
  - [4.7 节能管理模块](#47-节能管理模块)
  - [4.8 设备与计量器具模块](#48-设备与计量器具模块)
  - [4.9 辅助录入模块](#49-辅助录入模块)
  - [4.10 工单管理模块](#410-工单管理模块)
  - [4.11 系统管理模块](#411-系统管理模块)

---

## 1. 概述

本系统数据库共包含 **84 张表**，覆盖能源管理全链路，按业务划分为以下模块：

| 模块 | 表数量 | 说明 |
|------|--------|------|
| 模型配置 | 14 | 数据模型、节点、点位模板、关联表、计算规则、电价配置 |
| 能源监控 | 5 | 能源使用数据、尖峰平谷数据、能源统计、能源指标 |
| 告警管理 | 4 | 实时报警、历史报警、报警设置、限值类型 |
| 储能管理 | 9 | 场站、设备、单元、策略、指令日志、实时/电量数据 |
| 成本管理 | 4 | 成本策略、策略明细、单价关联、电费手工录入 |
| 能效分析 | 2 | 标杆值管理、能源深度分析 |
| 节能管理 | 6 | 节能项目、政策法规、知识库 |
| 设备与计量器具 | 8 | 设备档案、计量器具、网关、配电室、组态图 |
| 辅助录入 | 3 | 产品产量、数据补录、电价时段 |
| 工单管理 | 2 | 报警工单、工单日志 |
| 系统管理 | 27 | 用户、角色、菜单、字典、日志、定时任务、能源品种等 |

---

## 2. 表用途索引

| 表名 | 中文名称 | 所属模块 | 用途说明 |
|------|----------|----------|----------|
| `model` | 数据模型 | 模型配置 | 定义业务模型（含29个预置模型），如能源使用、成本核算、储能等 |
| `model_node` | 模型节点 | 模型配置 | 模型下的树形节点，支持厂部/区域/配电室/设备等分类 |
| `point_template` | 采集点位模板 | 模型配置 | 定义数据采集点位模板（含70+预置参数） |
| `node_point` | 节点点位关联 | 模型配置 | 节点与采集点位的多对多关联 |
| `node_device` | 节点设备关联 | 模型配置 | 节点与设备的多对多关联 |
| `node_energy` | 节点能源关联 | 模型配置 | 节点与能源品种的多对多关联 |
| `node_product` | 节点产品关联 | 模型配置 | 节点与产品的多对多关联 |
| `rule_formula` | 计算公式 | 模型配置 | 点位计算公式定义 |
| `rule_formula_param` | 公式参数 | 模型配置 | 计算公式的参数定义 |
| `rule_function` | 计算函数 | 模型配置 | 可复用的计算函数管理 |
| `rule_storage` | 计算结果存储 | 模型配置 | 公式计算结果的时序存储 |
| `setting_electricity_price` | 电价设置 | 模型配置 | 尖峰平谷电价配置 |
| `setting_electricity_price_date` | 电价时间段 | 模型配置 | 尖峰平谷电价时段定义 |
| `spikes_and_valleys_item` | 尖峰平谷明细 | 模型配置 | 尖峰平谷方案明细项 |
| `spikes_and_valleys_scheme` | 尖峰平谷方案 | 模型配置 | 尖峰平谷方案定义 |
| `energy_used` | 能源使用数据 | 能源监控 | 能源使用量时序数据（复合主键：点位+时间编码） |
| `energy_used_electricity` | 尖峰平谷电量 | 能源监控 | 按尖峰平谷分类的电量数据 |
| `energy_statistics` | 能源统计 | 能源监控 | 综合能源统计数据 |
| `energy_indicators` | 能源指标 | 能源监控 | 能源指标录入数据 |
| `alarm_history` | 历史报警 | 告警管理 | 历史报警记录存储 |
| `alarm_item` | 报警设置明细 | 告警管理 | 报警规则配置明细 |
| `alarm_limit_type` | 报警限值类型 | 告警管理 | 报警上下限类型定义 |
| `alarm_realtime` | 实时报警 | 告警管理 | 当前实时报警状态 |
| `energy_storage_station` | 储能场站 | 储能管理 | 储能场站基础信息 |
| `energy_storage_device` | 储能设备 | 储能管理 | 储能设备信息（PCS/BMS等） |
| `energy_storage_device_unit` | 储能设备单元 | 储能管理 | 储能设备内部单元（电池簇等） |
| `energy_storage_strategy` | 储能策略 | 储能管理 | 充放电策略定义 |
| `energy_storage_strategy_item` | 储能策略明细 | 储能管理 | 策略时间段明细 |
| `energy_storage_device_strategy` | 设备策略关联 | 储能管理 | 设备与策略的绑定关系 |
| `energy_storage_data` | 储能实时数据 | 储能管理 | 储能设备实时采集数据 |
| `energy_storage_electricity_data` | 储能电量数据 | 储能管理 | 储能设备电量统计 |
| `energy_storage_instruction_issued_log` | 储能指令日志 | 储能管理 | 策略指令下发执行日志 |
| `cost_price_tactics` | 成本策略 | 成本管理 | 能源单价策略定义 |
| `cost_price_tactics_item` | 成本策略明细 | 成本管理 | 策略下的阶梯/分时单价明细 |
| `cost_price_relevancy` | 单价关联 | 成本管理 | 单价策略与节点的关联 |
| `input_electricity_cost` | 电费手工录入 | 成本管理 | 电费账单手工录入 |
| `benchmark` | 标杆值管理 | 能效分析 | 能效标杆值定义（支持国内/国外，均值/先进值/目标值） |
| `energy_saving_program` | 节能项目 | 节能管理 | 节能项目管理 |
| `policy` | 政策法规 | 节能管理 | 节能政策法规信息 |
| `policy_annex` | 法规附件 | 节能管理 | 政策法规附件文件 |
| `policy_regulations` | 法规明细 | 节能管理 | 政策法规条文明细 |
| `knowledge_base` | 知识库 | 节能管理 | 节能知识库条目 |
| `knowledge_base_file` | 知识库文件 | 节能管理 | 知识库附件文件 |
| `device` | 设备档案 | 设备管理 | 重点设备档案管理 |
| `device_annex` | 设备附件 | 设备管理 | 设备档案附件文件 |
| `meter` | 计量器具 | 设备管理 | 计量器具档案（电表/水表/蒸汽表等） |
| `meter_annex` | 计量器具附件 | 设备管理 | 计量器具附件文件 |
| `meter_point` | 计量器具点位 | 设备管理 | 计量器具关联的采集点位信息 |
| `gateway_setting` | 网关配置 | 设备管理 | 数据采集网关配置 |
| `power_distribution` | 配电室 | 设备管理 | 配电室基础信息 |
| `svg_attach` | 组态图附件 | 设备管理 | 组态图SVG附件 |
| `svg_setting` | 组态图配置 | 设备管理 | 组态图显示配置 |
| `storage_parameter` | 储能参数 | 设备管理 | 储能设备采集参数配置 |
| `product` | 产品管理 | 辅助录入 | 产品信息定义 |
| `product_output` | 产品产量 | 辅助录入 | 产品产量数据录入 |
| `data_supplement` | 数据补录 | 辅助录入 | 点位数据手工补录 |
| `work_order` | 报警工单 | 工单管理 | 报警事件工单（待确认→处理中→完成/失败） |
| `work_order_log` | 工单日志 | 工单管理 | 工单状态流转日志 |
| `sys_user` | 用户信息 | 系统管理 | 系统用户账户信息 |
| `sys_role` | 角色信息 | 系统管理 | 系统角色及权限范围 |
| `sys_menu` | 菜单权限 | 系统管理 | 菜单、按钮、权限标识（M目录/C菜单/F按钮） |
| `sys_dept` | 部门 | 系统管理 | 组织机构部门树 |
| `sys_post` | 岗位 | 系统管理 | 岗位信息 |
| `sys_user_role` | 用户角色关联 | 系统管理 | 用户-角色多对多关联 |
| `sys_role_menu` | 角色菜单关联 | 系统管理 | 角色-菜单多对多关联 |
| `sys_role_dept` | 角色部门关联 | 系统管理 | 角色数据权限-部门关联 |
| `sys_user_post` | 用户岗位关联 | 系统管理 | 用户-岗位多对多关联 |
| `sys_dict_type` | 字典类型 | 系统管理 | 数据字典类型定义（70+类型） |
| `sys_dict_data` | 字典数据 | 系统管理 | 数据字典选项值 |
| `sys_config` | 系统参数 | 系统管理 | 系统全局参数配置 |
| `sys_name_config` | 系统名称配置 | 系统管理 | 系统名称、Logo、版权信息 |
| `sys_energy` | 能源品种 | 系统管理 | 系统选用的能源品种（电/水/蒸汽/天然气等） |
| `sys_energy_template` | 能源品种模板 | 系统管理 | 能源品种类别模板 |
| `sys_enercoefficient` | 折标系数 | 系统管理 | 能源品种折标系数（等价/当量） |
| `sys_price` | 单价设置 | 系统管理 | 能源/原料/产品单价 |
| `sys_job` | 定时任务 | 系统管理 | 定时任务调度配置 |
| `sys_job_log` | 任务日志 | 系统管理 | 定时任务执行日志 |
| `sys_logininfor` | 登录日志 | 系统管理 | 用户登录访问记录 |
| `sys_oper_log` | 操作日志 | 系统管理 | 用户操作审计日志 |
| `sys_notice` | 通知公告 | 系统管理 | 系统通知与公告 |
| `data_auth_role` | 角色数据权限 | 系统管理 | 角色级数据权限（未启用） |
| `data_auth_user` | 用户数据权限 | 系统管理 | 用户级数据权限（未启用） |
| `gen_table` | 代码生成表 | 系统管理 | 代码生成器-表元数据 |
| `gen_table_column` | 代码生成列 | 系统管理 | 代码生成器-列元数据 |

---

## 3. 通用设计规范

### 3.1 主键策略

| 策略 | 适用表 | 类型 |
|------|--------|------|
| UUID | 业务表（alarm_*, device, meter, model_node, cost_*, energy_storage_*, work_order 等） | `varchar(36)` |
| 雪花算法 ID | data_supplement, energy_saving_program 等 | `int8` (bigint) |
| 序列自增 | 系统表（sys_*）、gen_table 等 | `int8` + sequence |
| 业务编码 | model（model_code）| `varchar` |
| 复合主键 | energy_used (point_id, time_code)、node_* 关联表 | 多字段组合 |

### 3.2 审计字段

大部分业务表包含以下审计字段：

| 字段 | 类型 | 说明 |
|------|------|------|
| `create_by` | varchar(64) | 创建人 |
| `create_time` | timestamp(6) | 创建时间 |
| `update_by` | varchar(64) | 更新人 |
| `update_time` | timestamp(6) | 更新时间 |
| `remark` | varchar(500) | 备注 |

### 3.3 软删除

部分表使用软删除标记：

| 字段 | 取值 | 说明 |
|------|------|------|
| `del_flag` | 0 / 2 | 0=存在，2=已删除（部分表为 int2，部分为 char(1)） |
| `del_flag` | Y / N | 部分旧表使用 Y/N 标识 |

### 3.4 状态字段

通用状态约定：`0` = 正常/启用，`1` = 停用/禁用

---

## 4. 核心表结构说明

### 4.1 模型配置模块

#### `model` — 数据模型

定义系统的业务模型，预置 29 个模型（如 YSCJMX 能源使用、BJGL 报警管理等）。

| 字段 | 类型 | 说明 |
|------|------|------|
| `model_code` (PK) | varchar | 模型编码（唯一标识） |
| `model_name` | varchar | 模型名称 |
| `model_type` | varchar | 模型类型（index=指标配置/node=仅节点/storage=储能） |
| `model_describe` | varchar | 模型描述 |
| `status` | char(1) | 状态（0正常 1停用） |

#### `model_node` — 模型节点

模型下的树形结构节点，表示厂部/区域/配电室/设备等层级。

| 字段 | 类型 | 说明 |
|------|------|------|
| `node_id` (PK) | varchar(36) | 节点ID（UUID） |
| `model_code` | varchar | 所属模型编码（FK → model） |
| `node_name` | varchar | 节点名称 |
| `node_code` | varchar | 节点编码 |
| `parent_id` | varchar | 父节点ID |
| `node_type` | varchar | 节点类型（对应 sys_node_category 字典） |
| `node_category` | varchar | 节点分类 |
| `sort` | int4 | 排序号 |
| `del_flag` | char(1) | 删除标志 |

#### `point_template` — 采集点位模板

定义数据采集点位模板，包含 70+ 预置参数（如有功功率、电压、电流、流量等）。

| 字段 | 类型 | 说明 |
|------|------|------|
| `point_id` (PK) | varchar(36) | 点位ID |
| `point_name` | varchar | 点位名称 |
| `point_code` | varchar | 点位编码（如 ActivePow、Uab 等） |
| `unit` | varchar | 计量单位 |
| `data_type` | varchar | 数据类型（1=实时，2=阶段） |
| `point_type` | varchar | 点位类型 |
| `digit` | int4 | 小数位数 |
| `del_flag` | char(1) | 删除标志 |

#### `node_point` / `node_device` / `node_energy` / `node_product` — 节点关联表

节点与点位、设备、能源、产品的多对多关联表，结构类似：

| 字段 | 类型 | 说明 |
|------|------|------|
| `node_id` (PK) | varchar(36) | 节点ID |
| `point_id`/`device_id`/`energy_id`/`product_id` (PK) | varchar | 关联对象ID |

#### `rule_formula` — 计算公式

定义采集点位的计算公式。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 公式ID |
| `point_id` | varchar | 关联点位 |
| `formula` | text | 公式表达式 |
| `function_id` | varchar | 关联计算函数 |
| `time_type` | varchar | 时间类型 |

#### `rule_storage` — 计算结果存储

公式计算后的时序结果存储。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 记录ID |
| `point_id` | varchar | 点位ID |
| `time_type` | varchar | 时间类型 |
| `data_time` | timestamp | 数据时间 |
| `value` | varchar | 计算结果值 |

#### `setting_electricity_price` / `setting_electricity_price_date` — 电价配置

尖峰平谷电价设置与时间段定义。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 记录ID |
| `energy_id` | varchar | 能源ID |
| `price_type` | varchar | 电价类型（SHARP/PEAK/FLAT/VALLEY/DEEP） |
| `price` | numeric | 单价 |
| `start_time` / `end_time` | varchar | 时间段起止 |

---

### 4.2 能源监控模块

#### `energy_used` — 能源使用数据

核心的能源使用时序数据表，数据量大，采用复合主键。

| 字段 | 类型 | 说明 |
|------|------|------|
| `point_id` (PK) | varchar | 采集点位ID |
| `time_code` (PK) | varchar | 时间编码 |
| `time_type` | varchar | 时间类型（HOUR/DAY/MONTH/YEAR） |
| `data_time` | timestamp | 数据时间 |
| `value` | varchar | 采集数值 |
| `energy_id` | varchar | 能源品种ID |
| `model_code` | varchar | 所属模型编码 |

> 索引：`idx1`(point_id, time_code)、`idx2`(point_id, time_type, data_time)

#### `energy_used_electricity` — 尖峰平谷电量

按尖峰平谷分类的电量统计数据。

| 字段 | 类型 | 说明 |
|------|------|------|
| `point_id` (PK) | varchar | 采集点位ID |
| `time_code` (PK) | varchar | 时间编码 |
| `electricity_type` (PK) | varchar | 电价类型（SHARP/PEAK/FLAT/VALLEY/DEEP） |
| `data_time` | timestamp | 数据时间 |
| `value` | varchar | 电量值 |

#### `energy_statistics` — 能源统计

综合能源统计数据表。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 记录ID |
| `node_id` | varchar | 节点ID |
| `energy_id` | varchar | 能源ID |
| `statistical_date` | timestamp | 统计日期 |
| `statistical_type` | varchar | 统计类型（DAY/MONTH/YEAR） |
| `value` | varchar | 统计值 |

#### `energy_indicators` — 能源指标

能源指标录入数据。

| 字段 | 类型 | 说明 |
|------|------|------|
| `energy_indicators_id` (PK) | int8 | 指标ID（序列自增） |
| `node_id` | varchar | 节点ID |
| `index_id` | varchar | 指标ID |
| `indicator_value` | varchar | 指标值 |
| `indicator_date` | timestamp | 指标日期 |
| `indicator_type` | varchar | 指标类型 |

---

### 4.3 告警管理模块

#### `alarm_item` — 报警设置明细

报警规则的配置明细。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 报警项ID |
| `alarm_name` | varchar | 报警名称 |
| `point_id` | varchar | 关联采集点位 |
| `limit_type` | varchar | 限值类型（上限/下限） |
| `limit_value` | varchar | 限值 |
| `alarm_level` | varchar | 报警级别（高/中/低） |
| `alarm_type` | varchar | 报警类型（预警 WARNING / 报警 ALARM） |
| `time_slot` | varchar | 时段类型（LIVE/HOUR/DAY/MONTH） |
| `status` | char(1) | 状态 |
| `del_flag` | char(1) | 删除标志 |

#### `alarm_history` / `alarm_realtime` — 历史报警 / 实时报警

结构相似，分别存储历史报警记录和当前实时报警状态。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 报警记录ID |
| `alarm_id` | varchar | 关联报警项 |
| `point_id` | varchar | 触发点位 |
| `alarm_value` | varchar | 报警触发值 |
| `alarm_time` | timestamp | 报警时间 |
| `alarm_content` | varchar | 报警内容描述 |
| `alarm_level` | varchar | 报警级别 |
| `status` | varchar | 处理状态 |

#### `alarm_limit_type` — 报警限值类型

定义报警上下限类型。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 限值类型ID |
| `name` | varchar | 类型名称 |
| `type` | varchar | 类型标识（1=上限，2=下限） |

---

### 4.4 储能管理模块

> 储能模块采用 **场站 → 设备 → 单元** 的三级层次结构，配合 **策略 → 指令** 的控制链路。

#### `energy_storage_station` — 储能场站

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 场站ID |
| `station_name` | varchar | 场站名称 |
| `station_code` | varchar | 场站编码 |
| `node_id` | varchar | 关联模型节点 |
| `address` | varchar | 场站地址 |
| `capacity` | varchar | 额定容量 |
| `status` | varchar | 运行状态 |

#### `energy_storage_device` — 储能设备

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 设备ID |
| `device_name` | varchar | 设备名称 |
| `device_code` | varchar | 设备编码 |
| `station_id` | varchar | 所属场站ID（FK → energy_storage_station） |
| `device_type` | varchar | 设备类型（PCS/BMS等） |
| `rated_power` | varchar | 额定功率 |
| `rated_capacity` | varchar | 额定容量 |
| `status` | varchar | 设备状态（充电中/放电中/待机中） |

#### `energy_storage_device_unit` — 储能设备单元

设备内部单元（如电池簇），关联到具体设备。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 单元ID |
| `device_id` | varchar | 所属设备ID |
| `unit_name` | varchar | 单元名称 |
| `unit_code` | varchar | 单元编码 |

#### `energy_storage_strategy` / `energy_storage_strategy_item` — 储能策略

策略定义与时间段明细，支持充放电策略配置。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 策略/明细ID |
| `strategy_name` | varchar | 策略名称 |
| `strategy_type` | varchar | 策略类型 |
| `start_time` / `end_time` | varchar | 时段起止 |
| `power` | varchar | 充放电功率 |
| `mode` | varchar | 工作模式 |

#### `energy_storage_device_strategy` — 设备策略关联

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 关联ID |
| `device_id` | varchar | 设备ID |
| `strategy_id` | varchar | 策略ID |

#### `energy_storage_data` — 储能实时数据

| 字段 | 类型 | 说明 |
|------|------|------|
| `point_id` (PK) | varchar | 采集点位ID |
| `time_code` (PK) | varchar | 时间编码 |
| `value` | varchar | 采集值 |
| `device_id` | varchar | 设备ID |

#### `energy_storage_electricity_data` — 储能电量数据

按尖峰平谷分类的储能电量统计。

| 字段 | 类型 | 说明 |
|------|------|------|
| `point_id` (PK) | varchar | 点位ID |
| `time_code` (PK) | varchar | 时间编码 |
| `electricity_type` (PK) | varchar | 电价类型 |
| `value` | varchar | 电量值 |

#### `energy_storage_instruction_issued_log` — 储能指令日志

策略指令下发的执行日志。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 日志ID |
| `device_id` | varchar | 目标设备 |
| `strategy_id` | varchar | 下发策略 |
| `issued_time` | timestamp | 下发时间 |
| `status` | varchar | 执行状态 |
| `result` | varchar | 执行结果 |

---

### 4.5 成本管理模块

#### `cost_price_tactics` — 成本策略

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 策略ID |
| `tactics_name` | varchar | 策略名称 |
| `energy_id` | varchar | 能源品种ID |
| `tactics_type` | varchar | 策略类型 |
| `status` | char(1) | 状态 |

#### `cost_price_tactics_item` — 成本策略明细

策略下的阶梯/分时单价明细。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 明细ID |
| `tactics_id` | varchar | 所属策略ID |
| `price` | numeric | 单价 |
| `start_value` / `end_value` | varchar | 阶梯起止量 |
| `electricity_type` | varchar | 电价类型 |

#### `cost_price_relevancy` — 单价关联

单价策略与计量节点的关联关系。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 关联ID |
| `tactics_id` | varchar | 策略ID |
| `node_id` | varchar | 节点ID |

#### `input_electricity_cost` — 电费手工录入

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 记录ID |
| `node_id` | varchar | 节点ID |
| `cost_date` | timestamp | 费用日期 |
| `total_cost` | numeric | 总费用 |
| `total_usage` | numeric | 总用量 |

---

### 4.6 能效分析模块

#### `benchmark` — 标杆值管理

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 标杆ID |
| `benchmark_name` | varchar | 标杆名称 |
| `benchmark_type` | varchar | 标杆类型（铜冶炼/粗铜/阳极铜/电解） |
| `benchmark_grade` | varchar | 标杆等级（一级~五级） |
| `benchmark_value` | numeric | 标杆值 |
| `benchmark_range` | varchar | 范围（国内/国外） |
| `unit` | varchar | 单位 |

---

### 4.7 节能管理模块

#### `energy_saving_program` — 节能项目

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | int8 | 项目ID（雪花算法） |
| `program_name` | varchar | 项目名称 |
| `program_type` | varchar | 项目类型 |
| `start_date` / `end_date` | timestamp | 项目起止日期 |
| `expected_saving` | varchar | 预期节能量 |
| `actual_saving` | varchar | 实际节能量 |
| `status` | varchar | 项目状态 |

#### `policy` / `policy_annex` / `policy_regulations` — 政策法规

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 记录ID |
| `policy_name` | varchar | 政策名称 |
| `policy_sort` | varchar | 分类（ZCL政策/FLL法律/HJL环境） |
| `content` | text | 内容 |
| `publish_date` | timestamp | 发布日期 |

#### `knowledge_base` / `knowledge_base_file` — 知识库

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 条目/文件ID |
| `title` | varchar | 标题 |
| `content` | text | 内容 |
| `file_path` | varchar | 文件路径 |

---

### 4.8 设备与计量器具模块

#### `device` — 设备档案

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 设备ID |
| `device_name` | varchar | 设备名称 |
| `device_code` | varchar | 设备编码 |
| `device_type` | varchar | 设备类型（空压机/电机/风机/水泵等） |
| `grade` | varchar | 能耗等级（一级/二级/三级/无） |
| `rated_power` | varchar | 额定功率 |
| `manufacturer` | varchar | 制造商 |
| `install_date` | timestamp | 安装日期 |
| `status` | varchar | 状态 |

#### `meter` — 计量器具档案

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 器具ID |
| `code` | varchar | 器具编码（唯一约束） |
| `meter_name` | varchar | 器具名称 |
| `meter_type` | varchar | 器具类型（电表/水表/蒸汽表/温湿度表等） |
| `status` | varchar | 状态（使用中/检修中/备用） |
| `model` | varchar | 型号 |
| `manufacturer` | varchar | 制造商 |

#### `meter_point` — 计量器具点位

| 字段 | 类型 | 说明 |
|------|------|------|
| `point_id` (PK) | varchar(36) | 点位ID |
| `meter_id` | varchar | 所属计量器具ID |
| `point_code` | varchar | 点位编码 |
| `point_name` | varchar | 点位名称 |
| `unit` | varchar | 单位 |

#### `gateway_setting` — 网关配置

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 网关ID |
| `gateway_name` | varchar | 网关名称 |
| `gateway_code` | varchar | 网关编码 |
| `ip` | varchar | IP地址 |
| `port` | int4 | 端口号 |
| `protocol` | varchar | 通信协议 |
| `status` | varchar | 在线状态 |

#### `power_distribution` — 配电室

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 配电室ID |
| `name` | varchar | 配电室名称 |
| `node_id` | varchar | 关联节点 |
| `address` | varchar | 位置 |
| `voltage_level` | varchar | 电压等级 |

#### `svg_attach` / `svg_setting` — 组态图

| 字段 | 类型 | 说明 |
|------|------|------|
| `node_id` (PK) | varchar | 关联节点ID |
| `svg_content` | text | SVG内容 |
| `svg_type` | varchar | 组态图类型（水系统/电系统） |

---

### 4.9 辅助录入模块

#### `product` / `product_output` — 产品与产量

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36)/int8 | 产品ID / 产量ID |
| `product_name` | varchar | 产品名称 |
| `product_type` | varchar | 产品类型 |
| `output_value` | numeric | 产量值 |
| `output_date` | timestamp | 产量日期 |
| `node_id` | varchar | 关联节点 |

#### `data_supplement` — 数据补录

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | int8 | 记录ID（雪花算法） |
| `point_id` | varchar | 点位ID |
| `value` | varchar | 补录值 |
| `data_time` | timestamp | 数据时间 |
| `time_type` | varchar | 时间类型 |

---

### 4.10 工单管理模块

#### `work_order` — 报警工单

报警事件产生的工单，支持完整生命周期管理。

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(32) | 工单ID |
| `alarm_id` | varchar(64) | 关联报警ID |
| `alarm_content` | varchar(255) | 报警内容 |
| `alarm_time` | timestamp | 报警时间 |
| `device_id` | varchar(36) | 关联设备 |
| `device_name` | varchar(64) | 设备名称 |
| `status` | int2 | 工单状态（0=待确认，1=处理中，2=解决完成，3=解决失败） |
| `charge_user_id` | varchar(64) | 负责人ID |
| `charge_user` | varchar(50) | 负责人 |
| `execute_user_id` | varchar(64) | 执行人ID |
| `execute_user` | varchar(50) | 执行人 |
| `expectation_start_time` | timestamp | 期望开始时间 |
| `expectation_end_time` | timestamp | 要求完成时间 |

#### `work_order_log` — 工单日志

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(32) | 日志ID |
| `work_order_id` | varchar(32) | 工单ID（FK → work_order） |
| `status` | varchar(50) | 流转状态 |
| `remark` | varchar(255) | 备注 |

---

### 4.11 系统管理模块

#### `sys_user` — 用户信息

| 字段 | 类型 | 说明 |
|------|------|------|
| `user_id` (PK) | int8 | 用户ID |
| `dept_id` | int8 | 部门ID（FK → sys_dept） |
| `user_name` | varchar(30) | 用户账号 |
| `nick_name` | varchar(30) | 用户昵称 |
| `email` | varchar(50) | 邮箱 |
| `phone_number` | varchar(11) | 手机号 |
| `sex` | char(1) | 性别（0男 1女 2未知） |
| `password` | varchar(100) | 密码（BCrypt加密） |
| `status` | char(1) | 状态（0正常 1停用） |
| `del_flag` | char(1) | 删除标志 |
| `single_user` | varchar(32) | 第三方登录ID |
| `trial_expire_time` | timestamp | 体验账户到期时间 |

#### `sys_role` — 角色信息

| 字段 | 类型 | 说明 |
|------|------|------|
| `role_id` (PK) | int8 | 角色ID |
| `role_name` | varchar(30) | 角色名称 |
| `role_key` | varchar(100) | 权限字符串 |
| `role_sort` | int4 | 排序 |
| `data_scope` | varchar(16) | 数据范围（1=全部，2=自定，3=本部门，4=本部门及以下） |
| `status` | varchar(16) | 状态 |
| `menu_check_strictly` | varchar(16) | 菜单树是否关联显示 |
| `dept_check_strictly` | varchar(16) | 部门树是否关联显示 |

#### `sys_menu` — 菜单权限

| 字段 | 类型 | 说明 |
|------|------|------|
| `menu_id` (PK) | int8 | 菜单ID |
| `menu_name` | varchar(50) | 菜单名称 |
| `parent_id` | int8 | 父菜单ID |
| `order_num` | int4 | 排序 |
| `path` | varchar(200) | 路由地址 |
| `component` | varchar(255) | 前端组件路径 |
| `is_frame` | varchar(32) | 是否外链（0是 1否） |
| `menu_type` | char(1) | 类型（M=目录，C=菜单，F=按钮） |
| `visible` | char(1) | 显示状态（0显示 1隐藏） |
| `perms` | varchar(100) | 权限标识 |
| `icon` | varchar(100) | 图标 |
| `is_cache` | char(1) | 是否缓存 |

#### `sys_dept` — 部门

| 字段 | 类型 | 说明 |
|------|------|------|
| `dept_id` (PK) | int8 | 部门ID |
| `parent_id` | int8 | 父部门ID |
| `ancestors` | varchar | 祖级列表 |
| `dept_name` | varchar | 部门名称 |
| `order_num` | int4 | 排序 |
| `leader` | varchar | 负责人 |
| `phone` | varchar | 联系电话 |
| `status` | char(1) | 状态 |

#### `sys_dict_type` / `sys_dict_data` — 数据字典

字典类型表定义字典分类，字典数据表存储具体选项值。系统预置 70+ 字典类型，覆盖单位、设备类型、报警级别、电价类型等。

| 字段 | 类型 | 说明 |
|------|------|------|
| `dict_id` / `dict_code` (PK) | int8 | 类型ID / 数据ID |
| `dict_name` | varchar(100) | 字典名称 |
| `dict_type` | varchar(100) | 字典类型编码 |
| `dict_label` | varchar(100) | 选项标签 |
| `dict_value` | varchar(100) | 选项值 |
| `dict_sort` | int4 | 排序 |
| `is_default` | char(1) | 是否默认（Y/N） |

#### `sys_energy` — 系统选用能源品种

| 字段 | 类型 | 说明 |
|------|------|------|
| `enerid` (PK) | int4 | 能源ID |
| `enername` | varchar(50) | 能源名称 |
| `muid` | varchar(32) | 计量单位 |
| `enerclassid` | int4 | 能源类别ID |
| `enersno` | varchar(20) | 能源编号（electric/water/steam等） |
| `coefficient` | numeric(18,4) | 等价折标系数 |
| `price` | numeric(18,2) | 单价 |
| `emission_factors` | numeric(18,4) | 碳排放因子 |

> 预置数据：国网电（1.229 tce/MWh，0.5703 tCO2/MWh）、自来水、蒸汽、压缩空气、天然气

#### `sys_enercoefficient` — 折标系数

| 字段 | 类型 | 说明 |
|------|------|------|
| `ecid` (PK) | int4 | 记录ID |
| `enerid` | int4 | 能源ID |
| `coefficient` | numeric(18,4) | 等价折标系数 |
| `coefficient2` | numeric(18,4) | 当量折标系数 |
| `execdate` | date | 执行日期 |

#### `sys_price` — 单价设置

| 字段 | 类型 | 说明 |
|------|------|------|
| `priceid` (PK) | int4 | 单价ID |
| `objectid` | int4 | 对象ID（能源/原料/产品ID） |
| `objecttype` | int4 | 对象类型（1=能源，2=原料，3=产品） |
| `price` | numeric(18,4) | 单价 |
| `execdate` | date | 执行日期 |

#### `sys_config` — 系统参数

| 字段 | 类型 | 说明 |
|------|------|------|
| `config_id` (PK) | int8 | 参数ID |
| `config_name` | varchar | 参数名称 |
| `config_key` | varchar | 参数键名 |
| `config_value` | varchar | 参数键值 |
| `config_type` | char(1) | 系统内置（Y/N） |

#### `sys_name_config` — 系统名称配置

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` (PK) | varchar(36) | 主键 |
| `system_name` | varchar | 系统名称 |
| `left_logo` | varchar | 左上角Logo URL |
| `home_logo` | varchar | 首页Logo URL |
| `copy_right` | varchar | 底部版权信息 |
| `admin_wechat_qr_code` | varchar | 管理员微信二维码 |

#### 日志表

| 表名 | 主键 | 核心字段 | 说明 |
|------|------|----------|------|
| `sys_oper_log` | oper_id | title, method, oper_url, oper_ip, status, oper_time, cost_time | 操作审计日志 |
| `sys_logininfor` | info_id | user_name, ipaddr, browser, os, status, login_time | 登录访问记录 |
| `sys_job_log` | job_log_id | job_name, job_group, job_message, status, exception_info | 定时任务执行日志 |

#### 关联表

| 表名 | 主键 | 说明 |
|------|------|------|
| `sys_user_role` | (user_id, role_id) | 用户-角色关联 |
| `sys_role_menu` | (role_id, menu_id) | 角色-菜单关联 |
| `sys_role_dept` | (role_id, dept_id) | 角色-部门关联（数据权限） |
| `sys_user_post` | (user_id, post_id) | 用户-岗位关联 |

---

## 附录：核心数据字典类型

| 字典类型 | 中文名称 | 典型取值 |
|----------|----------|----------|
| `sys_node_category` | 节点类型 | 0=公司, 1=厂部, 2=配电室, 3=区域, 4=设备, 10=储能系统, 11=储能场站, 12=储能设备 |
| `sys_model_type` | 模型类型 | index=指标配置, node=仅节点, storage=储能 |
| `electricity_price` | 电价类型 | SHARP=尖, PEAK=峰, FLAT=平, VALLEY=谷, DEEP=深谷 |
| `sys_device_type` | 计量器具类型 | 1=电表, 2=水表, 3=变频器, 4=温湿度表, 5=压力表, 6=蒸汽表, 7=氮气表, 10=天然气表, 12=储能设备 |
| `sys_unit` | 计量单位 | kWh, m³, t, A, V, KW, ℃, MPa, Hz 等 |
| `alarm_type` | 报警类型 | WARNING=预警, ALARM=报警 |
| `alarm_level` | 报警级别 | 1=高, 2=中, 3=低 |
| `limit_type` | 限值类型 | 1=上限, 2=下限 |
| `sys_index_category` | 指标分类 | 1=能源类, 2=产品类, 3=能效类, 4=经营类, 5=其他, 6=储能 |
| `period` | 期间 | DAY=天, MONTH=月, YEAR=年 |
| `sys_is_enable` | 启用状态 | Y=启用, P=停用, N=未设置 |
| `energy_storage_device_status` | 储能设备状态 | 1=充电中, 2=放电中, 3=待机中 |
| `benchmark_type` | 标杆类型 | 1=铜冶炼, 2=粗铜, 3=阳极铜, 4=电解 |
| `benchmark_grade` | 标杆等级 | 1~5级 |
| `policy_sort` | 法规分类 | ZCL=政策类, FLL=法律类, HJL=环境类 |
