# zhitan-ems Docker 一键构建与部署

## 包含服务

| 服务 | 镜像 | 端口 | 说明 |
|------|------|------|------|
| postgres | bitnami/postgresql:14 | 5432 | 业务库，首次启动自动执行 `../sql` |
| redis | redis:6.2.21 | 6379 | 缓存 |
| influxdb | influxdb:2.7 | 8086 | 时序库 |
| emqx | emqx/emqx:5.0 | 1883 / 18083 | MQTT（Dashboard: 18083） |
| zhitan-api | 本地构建 | 8080 | 后端 |
| zhitan-web | 本地构建 | 80 | 前端 |
| zhitan-gateway | 本地构建 | 8081 | MQTT 采集网关 |

## 一键构建并启动

在仓库根目录或本目录执行均可：

```bash
cd docker
docker compose build
docker compose up -d
```

或一条命令：

```bash
cd docker
docker compose up -d --build
```

## 常用命令

```bash
# 查看状态
docker compose ps

# 查看日志
docker compose logs -f zhitan-api
docker compose logs -f zhitan-gateway
docker compose logs -f zhitan-web

# 仅重建某个服务
docker compose build zhitan-api
docker compose up -d zhitan-api

# 停止并删除容器（保留数据卷）
docker compose down

# 停止并清除数据卷（会清空数据库，下次会重新执行 sql 初始化）
docker compose down -v
```

## 访问地址

- 前端：http://localhost
- 后端：http://localhost:8080
- 网关：http://localhost:8081
- EMQX Dashboard：http://localhost:18083
- InfluxDB：http://localhost:8086

## 说明

1. 应用镜像默认标签为 `*:local`，由本仓库 Dockerfile 构建，不再依赖远端预构建镜像。
2. 数据库初始化脚本为仓库根下 `sql/public-v3.sql`（Compose 首次启动自动导入）。`sql/00-create-db.sql` 仅用于非 Compose 手工建库。
3. InfluxDB 初始 Admin Token 在 `docker-compose.yml` 的 `x-influx-token`（已内置随机默认值），api / gateway 共用；生产环境请自行更换。
4. 首次构建后端/网关需下载 Maven 依赖，耗时较长，属正常现象。
5. EMQX 使用 `service_started` 依赖（健康检查为 `emqx ping`），避免 Dashboard 未就绪导致 api/gateway 长时间等待。
