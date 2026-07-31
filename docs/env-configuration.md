# 环境配置说明

> 本文档详细说明智碳能源管理系统中各类环境变量与配置项的作用、默认值及注意事项，覆盖根目录 `.env.file`（Docker / 运维模板）、后端 `application*.yml` 以及前端 `zhitan-vue/.env.*`。

---

## 目录

- [一、配置文件总览](#一配置文件总览)
- [二、如何使用 .env.file](#二如何使用-envfile)
- [三、数据库配置](#三数据库配置)
- [四、Redis 配置](#四redis-配置)
- [五、Druid 监控配置](#五druid-监控配置)
- [六、RTDB（InfluxDB）配置](#六rtdbinfluxdb-配置)
- [七、MQTT 配置](#七mqtt-配置)
- [八、Token（JWT）配置](#八tokenjwt-配置)
- [九、SSO 与单点登录](#九sso-与单点登录)
- [十、阿里云短信配置](#十阿里云短信配置)
- [十一、前端环境变量](#十一前端环境变量)
- [十二、与 application.yml 的对应关系](#十二与-applicationyml-的对应关系)
- [十三、安全注意事项](#十三安全注意事项)
- [十四、常见问题](#十四常见问题)
- [十五、相关文档](#十五相关文档)

---

## 一、配置文件总览

| 文件 | 用途 | 适用场景 |
|------|------|----------|
| `.env.file` | Docker / 运维环境变量模板 | 容器编排、统一注入后端外部依赖 |
| `zhitan-admin/src/main/resources/application.yml` | 后端主配置 | Token、Redis、RTDB、MQTT、Swagger 等 |
| `zhitan-admin/src/main/resources/application-dev.yml` | 开发环境数据源等 | 本地开发（`spring.profiles.active=dev`） |
| `zhitan-admin/src/main/resources/application-prod.yml` | 生产环境数据源等 | 生产部署（`spring.profiles.active=prod`） |
| `zhitan-vue/.env.development` | 前端开发环境变量 | `yarn run dev` |
| `zhitan-vue/.env.production` | 前端生产环境变量 | `yarn build` |
| `zhitan-vue/.env.staging` | 前端预发布环境变量 | `yarn build:stage` |

> **说明**：源码直接启动时，后端以 `application*.yml` 为准；使用 Docker / 外部注入时，优先按 `.env.file`（或同名环境变量）覆盖依赖地址与密钥类配置。

---

## 二、如何使用 .env.file

### 2.1 获取模板

仓库根目录提供 `.env.file` 作为模板。首次部署建议：

```bash
# 复制一份本地配置（勿将含真实密钥的文件提交到公开仓库）
cp .env.file .env.local
# 按实际环境修改 .env.local 或直接修改 .env.file
```

### 2.2 Docker 方式加载（示例）

```bash
# docker run 注入
docker run --env-file .env.file ... zhitan-api

# docker compose 示例片段
# services:
#   api:
#     env_file:
#       - .env.file
```

### 2.3 源码方式对照修改

若不使用环境变量注入，请将下文各变量的值同步到对应 yml 节点（见[第十二节](#十二与-applicationyml-的对应关系)），然后启动：

```bash
mvn clean install
cd zhitan-admin
mvn spring-boot:run
```

### 2.4 推荐启动顺序

PostgreSQL → Redis → MQTT（可选）→ InfluxDB（可选）→ 后端 API → 前端 Web。

---

## 三、数据库配置

| 变量名 | 默认值（模板） | 必填 | 说明 |
|--------|----------------|------|------|
| `DB_URL` | `jdbc:postgresql://127.0.0.1:5432/zhitan_ems` | **是** | PostgreSQL JDBC 连接串 |
| `DB_USERNAME` | `postgres` | **是** | 数据库用户名 |
| `DB_PASSWORD` | `postgres` | **是** | 数据库密码 |
| `DB_SLAVE_ENABLED` | `false` | 否 | 是否启用从库；默认关闭 |
| `DB_SLAVE_URL` | （空） | 条件必填 | 从库 JDBC URL；仅当从库开启时需要 |
| `DB_SLAVE_USERNAME` | （空） | 条件必填 | 从库用户名 |
| `DB_SLAVE_PASSWORD` | （空） | 条件必填 | 从库密码 |

### 注意事项

- 数据库名需与初始化脚本一致，社区版常用库名 `zhitan_ems`，初始化 SQL 见 `sql/public-v3.sql`。
- JDBC URL 主机/端口须与实际 PostgreSQL 监听地址一致；容器网络内请使用服务名而非 `127.0.0.1`。
- 生产环境务必修改默认密码，并限制数据库仅内网可达。
- 从库仅在读写分离场景开启；未配置从库时保持 `DB_SLAVE_ENABLED=false`。

### 对应 yml（开发环境示例）

```yaml
# application-dev.yml
spring:
  datasource:
    druid:
      master:
        url: jdbc:postgresql://localhost:5432/zhitan_ems
        username: postgres
        password: postgres
```

---

## 四、Redis 配置

| 变量名 | 默认值（模板） | 必填 | 说明 |
|--------|----------------|------|------|
| `REDIS_HOST` | `127.0.0.1` | **是** | Redis 主机地址 |
| `REDIS_PORT` | `6379` | **是** | Redis 端口 |
| `REDIS_DATABASE` | `0` | 否 | 逻辑库索引（0–15） |
| `REDIS_PASSWORD` | （空） | 条件必填 | 未设置密码时留空；生产建议设置密码 |

### 注意事项

- Redis 用于登录会话、缓存等；不可用时登录与多数需鉴权接口会失败。
- 多实例部署时，各节点应指向同一 Redis，并注意 `REDIS_DATABASE` 不要与其他系统冲突。
- 密码中若含特殊字符，在 shell / compose 中注意转义。

### 对应 yml

```yaml
# application.yml
spring:
  redis:
    host: localhost
    port: 6379
    database: 0
    password:
```

---

## 五、Druid 监控配置

| 变量名 | 默认值（模板） | 必填 | 说明 |
|--------|----------------|------|------|
| `DRUID_USERNAME` | `admin` | 否 | Druid 监控控制台登录用户名 |
| `DRUID_PASSWORD` | `123456` | 否 | Druid 监控控制台登录密码 |

### 注意事项

- 控制台路径一般为 `/druid/*`（以实际 `application-*.yml` 为准）。
- **生产环境必须修改默认账号密码**，并建议通过防火墙 / 网关限制访问来源。
- 可将 `statViewServlet.allow` 配置为运维 IP 白名单，降低暴露面。

---

## 六、RTDB（InfluxDB）配置

系统通过 `rtdb` 配置访问 InfluxDB 2.x，存储实时采集点数据。

| 变量名 | 默认值（模板） | 必填 | 说明 |
|--------|----------------|------|------|
| `RTDB_HOST` | `http://127.0.0.1:8086` | 条件必填 | InfluxDB HTTP API 地址 |
| `RTDB_TOKEN` | `your-influxdb-token` | 条件必填 | InfluxDB API Token |
| `RTDB_ORG` | `org` | 条件必填 | 组织名称，须与 Influx 初始化一致 |
| `RTDB_BUCKET` | `bucket` | 条件必填 | 存储桶名称 |
| `RTDB_MEASUREMENT` | `data` | 否 | measurement 名称，默认 `data` |

### 注意事项

- 不部署 InfluxDB 时，后端通常仍可启动，但「实时数据监测」等能力不可用。
- `token` / `org` / `bucket` 必须与 InfluxDB 初始化时设置的值完全一致。
- Token 属于高敏感凭证，禁止提交到公开仓库或写入文档截图。
- 使用 HTTPS 时，将 `RTDB_HOST` 改为 `https://...`，并确认证书可信。

### 对应 yml

```yaml
# application.yml
rtdb:
  host: http://127.0.0.1:8086
  token: your-influxdb-token
  org: org
  bucket: bucket
  measurement: data
```

---

## 七、MQTT 配置

| 变量名 | 默认值（模板） | 必填 | 说明 |
|--------|----------------|------|------|
| `MQTT_HOST` | `tcp://127.0.0.1:1883` | 条件必填 | Broker 地址，需含协议前缀 `tcp://` |
| `MQTT_CLIENT_ID` | `MQTT_WK` | **是** | 客户端 ID，**同一 Broker 上需唯一** |
| `MQTT_TOPICS` | `topic1` | **是** | 订阅主题；多个用英文逗号分隔，支持 `#` 通配 |
| `MQTT_USERNAME` | （空） | 条件必填 | Broker 认证用户名 |
| `MQTT_PASSWORD` | （空） | 条件必填 | Broker 认证密码 |
| `MQTT_TIMEOUT` | `30` | 否 | 连接超时（秒） |
| `MQTT_KEEPALIVE` | `60` | 否 | 心跳间隔（秒） |
| `MQTT_QOS` | `1` | 否 | QoS：`0` 最多一次 / `1` 至少一次 / `2` 恰好一次 |
| `MQTT_CLEAN_SESSION` | `false` | 否 | `false` 表示持久会话 |
| `MQTT_AUTO_RECONNECT` | `true` | 否 | 断线后是否自动重连 |

### 注意事项

- 不启动 MQTT 时，后端一般可启动，日志可能出现 `mqtt服务链接异常!`，实时采集相关功能不可用。
- 模板中若曾使用公共 Broker（如 `broker.emqx.io`），**仅适合联调演示**，生产请使用自建 EMQX / Mosquitto。
- 多实例部署时，务必为每个实例配置不同的 `MQTT_CLIENT_ID`，避免互踢。
- `MQTT_TOPICS` 与网关发布主题必须一致，否则收不到数据。

### 对应 yml

```yaml
# application.yml
mqtt:
  host: tcp://127.0.0.1:1883
  clientId: MQTT_WK
  topics: topic1
  username:
  password:
  timeout: 30
  keepalive: 60
  qos: 1
  cleanSession: false
  automaticReconnect: true
```

---

## 八、Token（JWT）配置

| 变量名 | 默认值（模板） | 必填 | 说明 |
|--------|----------------|------|------|
| `TOKEN_HEADER` | `Authorization` | **是** | 请求头名称，前端携带 `Bearer <token>` |
| `TOKEN_SECRET` | `abcdefghijklmnopqrstuvwxyzzhitancloud` | **是** | JWT 签名密钥 |
| `TOKEN_EXPIRE_TIME` | `300` | **是** | 令牌有效期（分钟）；模板默认 300 分钟 |

### 注意事项

- **生产环境必须更换 `TOKEN_SECRET`**，使用足够长的随机串，且各环境密钥隔离。
- 会话信息同时落 Redis；仅改 JWT 配置而不保证 Redis 可用，登录态仍会异常。
- 缩短 `TOKEN_EXPIRE_TIME` 可降低令牌泄露窗口，但会增加用户重新登录频率。
- 配置中若残留 `shiro.session` 等历史项，**实际以 Spring Security + JWT 为准**。

### 对应 yml

```yaml
# application.yml
token:
  header: Authorization
  secret: abcdefghijklmnopqrstuvwxyzzhitancloud
  expireTime: 300
```

---

## 九、SSO 与单点登录

| 变量名 | 默认值（模板） | 必填 | 说明 |
|--------|----------------|------|------|
| `SINGLE_LOGIN_URL` | `localhost:8090/singleLogin/getInfo` | 否 | 单点登录拉取用户信息的地址 |
| `SSO_TICKET` | （空） | 否 | SSO 票据 / 校验相关配置 |
| `SSO_USERNAME` | （空） | 否 | SSO 关联用户名（按对接方案填写） |

### 注意事项

- 未对接外部 SSO 时，可保持默认或留空，不影响账号密码登录。
- 对接时需与身份提供方约定票据校验流程，并确认回调地址、HTTPS 与时钟同步。
- `SINGLE_LOGIN_URL` 在容器网络中应写可解析的主机名，而非仅本机 `localhost`（视部署拓扑而定）。

---

## 十、阿里云短信配置

用于短信登录 / 验证码等能力，均为可选。

| 变量名 | 默认值（模板） | 必填 | 说明 |
|--------|----------------|------|------|
| `ALIYUN_ACCESS_KEY_ID` | （空） | 条件必填 | 阿里云 AccessKey ID |
| `ALIYUN_ACCESS_KEY_SECRET` | （空） | 条件必填 | 阿里云 AccessKey Secret |
| `ALIYUN_SMS_ENDPOINT` | `dysmsapi.aliyuncs.com` | 否 | 短信服务 Endpoint |
| `ALIYUN_SMS_SIGN_NAME` | （空） | 条件必填 | 短信签名 |
| `ALIYUN_SMS_TEMPLATE_CODE` | （空） | 条件必填 | 短信模板 Code |
| `ALIYUN_USER_ROLE_ID` | （空） | 否 | 业务侧关联角色 ID（按实现使用） |
| `ALIYUN_SMS_TIME_MINUTES` | `40` | 否 | 短信相关时间窗口（分钟，以业务实现为准） |
| `ALIYUN_SMS_MAX_COUNT` | `1` | 否 | 频控相关上限（以业务实现为准） |

### 注意事项

- 不启用短信登录时，相关项可全部留空。
- AccessKey、签名、模板需在阿里云控制台提前开通并审核通过。
- **禁止**将真实 AccessKey 提交到 Git；建议用密钥管理或部署平台私密变量注入。

### 对应 yml（开发环境示例）

```yaml
# application-dev.yml
aliyun:
  sms:
    access-key-id: ""
    access-key-secret: ""
    endpoint: dysmsapi.aliyuncs.com
    sign-name: ""
    template-code: ""
    user-role-id: ""
    time-minutes: 40
    max-sms-count: 1
```

---

## 十一、前端环境变量

前端工程位于 `zhitan-vue/`，变量必须以 `VITE_` 开头才能在客户端代码中访问。

### 11.1 `.env.development`

| 变量名 | 默认值 | 说明 |
|--------|--------|------|
| `VITE_APP_TITLE` | `能源管理系统` | 页面标题 |
| `VITE_APP_ENV` | `development` | 环境标识 |
| `VITE_APP_BASE_API` | `/dev-api` | 开发态 API 前缀（由 Vite 代理转发到后端） |

### 11.2 `.env.production`

| 变量名 | 默认值 | 说明 |
|--------|--------|------|
| `VITE_APP_TITLE` | `能源管理系统` | 页面标题 |
| `VITE_APP_ENV` | `production` | 环境标识 |
| `VITE_APP_BASE_API` | `/prod-api` | 生产 API 前缀（Nginx 反代到后端） |
| `VITE_BUILD_COMPRESS` | `gzip` | 构建压缩方式（gzip / brotli） |

### 11.3 `.env.staging`

| 变量名 | 默认值 | 说明 |
|--------|--------|------|
| `VITE_APP_TITLE` | `后台管理系统` | 页面标题 |
| `VITE_APP_ENV` | `staging` | 环境标识 |
| `VITE_APP_BASE_API` | `/stage-api` | 预发布 API 前缀 |
| `VITE_BUILD_COMPRESS` | `gzip` | 构建压缩方式 |

### 注意事项

- 生产 Nginx 需将 `VITE_APP_BASE_API` 对应路径（如 `/prod-api/`）反代到后端 `8080`。
- 修改环境变量后需重新构建前端；仅改 Nginx 配置则不必重建，但前缀须与构建时一致。
- 详细构建与 Nginx 示例见 [前端部署文档](./frontend-deployment.md)。

---

## 十二、与 application.yml 的对应关系

| `.env.file` 变量 | 典型 yml 路径 |
|------------------|---------------|
| `DB_URL` / `DB_USERNAME` / `DB_PASSWORD` | `spring.datasource.druid.master.*`（profile 文件） |
| `DB_SLAVE_*` | `spring.datasource.druid.slave.*` |
| `REDIS_*` | `spring.redis.*` |
| `DRUID_USERNAME` / `DRUID_PASSWORD` | `spring.datasource.druid.statViewServlet.login-*` |
| `RTDB_*` | `rtdb.*` |
| `MQTT_*` | `mqtt.*`（注意 `MQTT_AUTO_RECONNECT` ↔ `automaticReconnect`，`MQTT_CLEAN_SESSION` ↔ `cleanSession`） |
| `TOKEN_*` | `token.*` |
| `SINGLE_LOGIN_URL` | `singleLoginUrl` |
| `SSO_*` | `sso.*` |
| `ALIYUN_*` | `aliyun.sms.*` |

> 当前分支部分 yml 仍为字面量配置。源码部署可直接改 yml；Docker / 运维侧则以 `.env.file` 为统一模板，按部署脚本做映射或覆盖。

---

## 十三、安全注意事项

1. **切勿**将含真实密码、Token、AccessKey 的配置提交到公开仓库。
2. 生产环境至少轮换：`DB_PASSWORD`、`REDIS_PASSWORD`、`TOKEN_SECRET`、`RTDB_TOKEN`、`DRUID_PASSWORD`。
3. Druid、Swagger（`swagger.enabled`）在生产建议关闭或限制访问。
4. 对外仅暴露 Nginx 80/443；数据库、Redis、Influx、MQTT 保持内网。
5. 定期审计 `.env.file` / yml 中的演示地址与弱口令。

---

## 十四、常见问题

### Q1：修改了 `.env.file` 但源码启动未生效？

源码本地启动默认读取 `application*.yml`。请同步修改 yml，或确认启动方式确实通过 `--env-file` / 容器环境注入了变量。

### Q2：数据库连接失败？

检查 PostgreSQL 已启动、库已用 `sql/public-v3.sql` 初始化，以及 `DB_URL` 主机、端口、库名、账号密码是否正确；容器场景确认网络与服务名。

### Q3：能登录但实时监测无数据？

优先检查 InfluxDB（`RTDB_*`）与 MQTT（`MQTT_*`）是否可达，主题与网关发布是否一致，Token/Org/Bucket 是否匹配初始化值。

### Q4：多实例互相掉线 / MQTT 异常？

为每个后端实例配置不同的 `MQTT_CLIENT_ID`，并保证 Redis 为共享会话存储。

### Q5：前端请求 404 或跨域？

确认 `VITE_APP_BASE_API` 与 Nginx / Vite 代理前缀一致，后端 `server.port` 默认为 `8080`。

---

## 十五、相关文档

| 文档 | 说明 |
|------|------|
| [快速开始指南](./快速开始指南文档.md) | 5 分钟上手 |
| [源码部署文档](./source-deployment.md) | 非 Docker 全量部署与 yml 修改说明 |
| [前端部署文档](./frontend-deployment.md) | Vue 构建、环境变量与 Nginx |
| [系统架构文档](./architecture.md) | 模块职责与部署拓扑 |
| [数据库设计文档](./database-design.md) | 核心表结构 |
| [持续更新计划](./UPDATE_PLAN.md) | 测试与文档迭代计划 |
| 根目录 [README.md](../README.md) | 产品介绍与文档导航 |

---

*文档对应计划 Day 14；内容依据仓库 `.env.file` 模板及 `application*.yml`、`zhitan-vue/.env.*` 整理。*
