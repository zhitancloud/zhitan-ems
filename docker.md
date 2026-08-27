用 Docker 部署若依（Ruoyi）前后端分离版（Vue + SpringBoot + MySQL + Redis），核心是通过 **Docker Compose** 管理多容器（后端、前端、数据库、缓存），实现一键部署和环境隔离。以下是详细步骤，适用于 Ruoyi-Vue 稳定版（如 v4.7.0）。


### 一、前提条件
1. 安装 Docker（版本 ≥ 20.10）和 Docker Compose（版本 ≥ v2）：
    - 参考官方文档：[Docker 安装](https://docs.docker.com/get-docker/)、[Docker Compose 安装](https://docs.docker.com/compose/install/)
    - 验证安装：`docker --version`、`docker compose version`
2. 克隆 zhitan-ems 源码：
   ```bash
   git clone https://gitee.com/liulingling1993/zhitan-ems.git
   cd zhitan-ems
   ```


### 二、目录结构规划
为了统一管理配置和数据，建议在源码外创建独立部署目录（如 `ruoyi-docker`），最终结构如下：
```
ruoyi-docker/
├── docker-compose.yml       # 总编排文件
├── mysql/                   # MySQL 配置和数据
│   ├── data/                # 数据持久化目录
│   └── init/                # 初始化脚本目录（放 Ruoyi 数据库脚本）
├── redis/                   # Redis 数据持久化目录
│   └── data/
├── ruoyi-admin/             # 后端服务配置
│   ├── Dockerfile           # 后端 Dockerfile
│   └── ruoyi-admin.jar      # 后端打包后的 Jar 包
└── ruoyi-ui/                # 前端服务配置
    ├── Dockerfile           # 前端 Dockerfile
    ├── nginx.conf           # Nginx 反向代理配置
    └── dist/                # 前端打包后的静态文件
```


### 三、步骤 1：准备后端（SpringBoot）
#### 1.1 修改后端配置文件
进入源码的 `zhitan-admin/src/main/resources` 目录，修改以下配置（适配 Docker 容器通信）：
- **application-dev.yml**（pgsql 连接）：
  ```yaml
  spring:
    datasource:
      druid:
        # 容器间用服务名通信（docker-compose 中 MySQL 服务名是 mysql）
        url: jdbc:postgresql://localhost:5432/zhitan_ems
        username: postgres
        password: postgres  # 与 docker-compose 中 pgsql 密码一致
  ```
- **application.yml**（Redis 连接）：
  ```yaml
  spring:
    redis:
      # 容器间用服务名通信（docker-compose 中 Redis 服务名是 redis）
      host: localhost
      port: 6379
      password:  # 若需密码，可在 docker-compose 中配置
  ```
- **application.yml**（influxDB 连接）：
  ```yaml
  rtdb:
    host: http://127.0.0.1:8086
    token: ==
    org: org
    bucket: bucket
    measurement: data
  ```

#### 1.2 打包后端 Jar 包
在源码根目录执行 Maven 打包命令（需提前安装 JDK 8+ 和 Maven）：
```bash
# 跳过测试，打包 zhitan-admin 模块
mvn clean package -Dmaven.test.skip=true -pl zhitan-admin -am
```
打包成功后，将 `zhitan-admin/target/zhitan-admin-xxx.jar` 复制到 `ruoyi-docker/ruoyi-admin/` 目录，并改名为 `zhitan-admin.jar`（简化配置）。

#### 1.3 编写后端 Dockerfile
在 `ruoyi-docker/ruoyi-admin/` 下创建 `Dockerfile`：
```dockerfile
# 基础镜像：JDK 8（Ruoyi 基于 JDK 8 开发）
FROM openjdk:8-jdk-slim

# 维护者信息（可选）
LABEL maintainer="ruoyi"

# 复制 Jar 包到容器
COPY ruoyi-admin.jar /app.jar

# 暴露后端端口（与 Ruoyi 配置一致，默认 8080）
EXPOSE 8080

# 启动命令：后台运行 Jar 包
ENTRYPOINT ["java", "-jar", "/app.jar", "--spring.profiles.active=prod"]
```


### 四、步骤 2：准备前端（Vue）
#### 2.1 修改前端 API 地址
进入源码的 `ruoyi-ui/` 目录，修改环境配置文件 `.env.production`：
```env
# 后端接口地址（Docker 中前端通过 Nginx 反向代理到后端服务）
VUE_APP_BASE_API = '/prod-api'
```

#### 2.2 打包前端静态文件
需提前安装 Node.js（≥ 14）和 npm，执行以下命令：
```bash
# 进入前端目录
cd ruoyi-ui

# 安装依赖（国内可加 --registry=https://registry.npm.taobao.org）
npm install

# 打包生产环境静态文件（输出到 dist 目录）
npm run build:prod
```
打包成功后，将 `ruoyi-ui/dist/` 目录复制到 `ruoyi-docker/ruoyi-ui/` 下。

#### 2.3 编写前端 Nginx 配置
前端需要 Nginx 托管静态文件，并反向代理后端接口（解决跨域）。在 `ruoyi-docker/ruoyi-ui/` 下创建 `nginx.conf`：
```nginx
worker_processes  1;

events {
    worker_connections  1024;
}

http {
    include       mime.types;
    default_type  application/octet-stream;
    sendfile        on;
    keepalive_timeout  65;

    server {
        listen       80;  # 前端暴露端口
        server_name  localhost;

        # 托管前端静态文件
        location / {
            root   /usr/share/nginx/html;
            index  index.html index.htm;
            try_files $uri $uri/ /index.html;  # 解决 Vue 路由刷新 404
        }

        # 反向代理后端接口（/prod-api 转发到后端服务）
        location /prod-api/ {
            proxy_pass http://ruoyi-admin:8080/;  # 后端服务名+端口
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
        }

        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }
    }
}
```

#### 2.4 编写前端 Dockerfile
在 `ruoyi-docker/ruoyi-ui/` 下创建 `Dockerfile`：
```dockerfile
# 基础镜像：Nginx 轻量版
FROM nginx:alpine

# 删除默认 Nginx 配置
RUN rm /etc/nginx/conf.d/default.conf

# 复制自定义 Nginx 配置
COPY nginx.conf /etc/nginx/

# 复制前端打包后的静态文件到 Nginx 托管目录
COPY dist/ /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx（前台运行，避免容器退出）
CMD ["nginx", "-g", "daemon off;"]
```


### 五、步骤 3：准备数据库（MySQL）
#### 3.1 复制初始化脚本
Ruoyi 自带数据库脚本，从源码 `sql/` 目录复制以下文件到 `ruoyi-docker/mysql/init/`：
- `ry-vue.sql`（主数据库脚本）
- `ry_config.sql`（配置表脚本）

#### 3.2 配置数据持久化
创建 `ruoyi-docker/mysql/data/` 目录，用于挂载 MySQL 数据卷（避免容器删除后数据丢失）：
```bash
mkdir -p ruoyi-docker/mysql/data
```


### 六、步骤 4：编写 Docker Compose 编排文件
在 `ruoyi-docker/` 下创建 `docker-compose.yml`，整合所有服务：
```yaml
version: '3.8'  # Compose 文件版本（兼容 Docker 20.10+）

services:
  # 1. MySQL 服务
  mysql:
    image: mysql:5.7  # Ruoyi 推荐 MySQL 5.7（避免 8.0 权限兼容问题）
    container_name: ruoyi-mysql
    restart: always  # 容器退出后自动重启
    environment:
      MYSQL_ROOT_PASSWORD: root123456  # 根密码（与后端配置一致）
      MYSQL_DATABASE: ry-vue  # 初始化数据库名
      MYSQL_CHARSET: utf8mb4
      MYSQL_COLLATION: utf8mb4_general_ci
    ports:
      - "3306:3306"  # 端口映射（主机:容器）
    volumes:
      - ./mysql/data:/var/lib/mysql  # 数据持久化
      - ./mysql/init:/docker-entrypoint-initdb.d  # 初始化脚本目录
    networks:
      - ruoyi-network  # 加入自定义网络（容器间通信）

  # 2. Redis 服务
  redis:
    image: redis:6.2-alpine  # 轻量版 Redis 6.2
    container_name: ruoyi-redis
    restart: always
    ports:
      - "6379:6379"
    volumes:
      - ./redis/data:/data  # 数据持久化
    command: redis-server --appendonly yes  # 开启 AOF 持久化
    networks:
      - ruoyi-network

  # 3. 后端服务（Ruoyi-Admin）
  ruoyi-admin:
    build: ./ruoyi-admin  # 基于本地 Dockerfile 构建
    container_name: ruoyi-admin
    restart: always
    depends_on:
      - mysql  # 依赖 MySQL 启动后再启动
      - redis  # 依赖 Redis 启动后再启动
    ports:
      - "8080:8080"
    environment:
      - SPRING_DATASOURCE_URL=jdbc:mysql://mysql:3306/ry-vue?useUnicode=true&characterEncoding=utf-8&serverTimezone=Asia/Shanghai
      - SPRING_DATASOURCE_USERNAME=root
      - SPRING_DATASOURCE_PASSWORD=root123456
      - SPRING_REDIS_HOST=redis
      - SPRING_REDIS_PORT=6379
    networks:
      - ruoyi-network

  # 4. 前端服务（Ruoyi-UI）
  ruoyi-ui:
    build: ./ruoyi-ui  # 基于本地 Dockerfile 构建
    container_name: ruoyi-ui
    restart: always
    depends_on:
      - ruoyi-admin  # 依赖后端启动后再启动
    ports:
      - "80:80"  # 前端默认 80 端口
    networks:
      - ruoyi-network

# 自定义网络（所有服务在同一网络，支持服务名通信）
networks:
  ruoyi-network:
    driver: bridge
```


### 七、步骤 5：启动部署
#### 7.1 启动所有服务
进入 `ruoyi-docker/` 目录，执行以下命令（后台启动）：
```bash
docker compose up -d
```
- 命令说明：`up` 启动服务，`-d` 后台运行。

#### 7.2 查看启动状态
```bash
# 查看容器状态
docker compose ps

# 查看日志（排查启动失败问题）
docker compose logs -f  # -f 实时滚动日志
# 单独查看某个服务日志（如后端）
docker compose logs -f ruoyi-admin
```

#### 7.3 验证部署成功
1. 前端访问：浏览器输入 `http://localhost`（默认 80 端口），出现 Ruoyi 登录页。
2. 登录测试：默认账号 `admin`，密码 `123456`，登录后能正常访问菜单和接口。
3. 数据库验证：用工具（如 Navicat）连接 `localhost:3306`，账号 `root`，密码 `root123456`，能看到 `ry-vue` 数据库和表。


### 八、常见问题排查
1. **后端连接 MySQL 失败**：
    - 检查 `docker-compose.yml` 中 MySQL 密码与后端配置是否一致。
    - 查看 MySQL 日志：`docker compose logs -f mysql`，确认初始化脚本是否执行成功。
    - 若 MySQL 8.0 兼容性问题，切换为 `mysql:5.7` 镜像。

2. **前端访问 404 或接口跨域**：
    - 检查 Nginx 配置 `nginx.conf` 中 `proxy_pass` 是否指向 `http://ruoyi-admin:8080/`（末尾需加 `/`）。
    - 查看前端日志：`docker compose logs -f ruoyi-ui`，确认 Nginx 是否正常启动。

3. **容器启动后立即退出**：
    - 查看服务日志，通常是配置错误（如端口冲突、依赖服务未就绪）。
    - 检查端口是否被占用：`netstat -tuln | grep 80`（前端）、`grep 8080`（后端）。

4. **数据持久化失败**：
    - 确保挂载目录权限正确：`chmod -R 777 ruoyi-docker/mysql/data ruoyi-docker/redis/data`（开发环境临时授权，生产环境需细化权限）。


### 九、停止和卸载
1. 停止所有服务：
   ```bash
   docker compose down
   ```
2. 停止并删除数据卷（谨慎！会删除数据库和 Redis 数据）：
   ```bash
   docker compose down -v
   ```


通过以上步骤，即可快速用 Docker 部署 Ruoyi 前后端分离版，实现环境一致性和快速迁移。生产环境可在此基础上优化（如添加 Nginx HTTPS、Redis 密码、MySQL 主从等）。