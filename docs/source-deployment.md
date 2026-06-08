# 源码部署文档

> 本文档详细介绍如何在**不使用 Docker** 的情况下，从源码编译并部署智碳能源管理系统。适用于 Linux（CentOS/Ubuntu）和 Windows 服务器环境。

---

## 目录

- [一、环境要求](#一环境要求)
- [二、安装 JDK 8](#二安装-jdk-8)
- [三、安装 Maven](#三安装-maven)
- [四、安装 PostgreSQL](#四安装-postgresql)
- [五、安装 Redis](#五安装-redis)
- [六、安装 InfluxDB](#六安装-influxdb)
- [七、安装 MQTT Broker（可选）](#七安装-mqtt-broker可选)
- [八、获取源码](#八获取源码)
- [九、初始化数据库](#九初始化数据库)
- [十、后端配置与编译](#十后端配置与编译)
- [十一、前端编译与部署](#十一前端编译与部署)
- [十二、Nginx 反向代理配置](#十二nginx-反向代理配置)
- [十三、使用 systemd 管理服务（Linux）](#十三使用-systemd-管理服务linux)
- [十四、部署验证](#十四部署验证)
- [十五、常见问题](#十五常见问题)

---

## 一、环境要求

| 软件 | 最低版本 | 推荐版本 | 用途 | 是否必须 |
|------|---------|---------|------|----------|
| JDK | 1.8 | 1.8 (JDK 8) | 后端编译与运行环境 | **是** |
| Maven | 3.0+ | 3.6+ | 后端依赖管理与构建 | **是** |
| PostgreSQL | 14+ | 14+ | 主数据库（关系型） | **是** |
| Redis | 5.0+ | 6.0+ | 缓存中间件 | **是** |
| InfluxDB | 2.7+ | 2.7+ | 时序数据库（实时采集数据） | 否（影响实时监测） |
| MQTT Broker | - | EMQX / Mosquitto | 数据采集消息中间件 | 否（影响数据采集） |
| Node.js | 18+ | 18+ | 前端构建运行环境 | **是** |
| Yarn | 1.22+ | 1.22+ | 前端包管理器 | **是** |
| Nginx | 1.20+ | 1.24+ | 前端静态资源 + 反向代理 | 生产部署需要 |

### 端口规划

| 服务 | 端口 | 说明 |
|------|------|------|
| PostgreSQL | 5432 | 数据库连接端口 |
| Redis | 6379 | 缓存服务端口 |
| InfluxDB | 8086 | 时序数据库 API 端口 |
| MQTT Broker | 1883 | MQTT 协议通信端口 |
| 后端应用 | 8080 | Spring Boot HTTP 端口 |
| 前端（开发模式） | 80 | Vite 开发服务器端口 |
| Nginx | 80/443 | 生产环境 Web 服务端口 |

---

## 二、安装 JDK 8

> **重要**：本项目**必须使用 JDK 8** 编译。JDK 9+ 移除了 `rt.jar`，会导致 Maven 编译失败。

### Linux（CentOS/RHEL）

```bash
# 方式一：使用 yum 安装
sudo yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel

# 方式二：手动安装（推荐，更灵活）
# 1. 下载 JDK 8（从 Oracle 官网或 Adoptium）
wget https://adoptium.net/temurin/releases/?version=8  # 访问页面下载对应版本

# 2. 解压到 /usr/local/
sudo tar -zxvf OpenJDK8U-jdk_x64_linux_hotspot_8uXXXbXX.tar.gz -C /usr/local/

# 3. 配置环境变量
sudo vim /etc/profile.d/java.sh
```

在 `/etc/profile.d/java.sh` 中添加：

```bash
export JAVA_HOME=/usr/local/jdk8uXXX-bXX
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
```

```bash
# 使配置生效
source /etc/profile.d/java.sh
```

### Linux（Ubuntu/Debian）

```bash
sudo apt update
sudo apt install -y openjdk-8-jdk

# 如果系统安装了多个 JDK 版本，使用以下命令切换
sudo update-alternatives --config java
```

### Windows

1. 下载 JDK 8 安装包（Oracle JDK 或 Adoptium Temurin）
2. 运行安装程序，建议安装到 `C:\Program Files\Java\jdk1.8.0_xxx`
3. 配置环境变量：
   - 新建系统变量 `JAVA_HOME`，值为 JDK 安装路径
   - 编辑 `Path` 变量，添加 `%JAVA_HOME%\bin`

### 验证安装

```bash
java -version
# 期望输出：java version "1.8.0_xxx"

javac -version
# 期望输出：javac 1.8.0_xxx

echo $JAVA_HOME
# 期望输出：JDK 安装路径
```

---

## 三、安装 Maven

### Linux

```bash
# 方式一：使用包管理器（版本可能较旧）
sudo yum install -y maven      # CentOS
sudo apt install -y maven      # Ubuntu

# 方式二：手动安装（推荐）
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
sudo tar -zxvf apache-maven-3.9.6-bin.tar.gz -C /usr/local/

# 配置环境变量
sudo vim /etc/profile.d/maven.sh
```

在 `/etc/profile.d/maven.sh` 中添加：

```bash
export MAVEN_HOME=/usr/local/apache-maven-3.9.6
export PATH=$MAVEN_HOME/bin:$PATH
```

```bash
source /etc/profile.d/maven.sh
```

### 配置国内镜像（推荐）

编辑 Maven 配置文件 `conf/settings.xml`（或 `~/.m2/settings.xml`），在 `<mirrors>` 节点中添加阿里云镜像：

```xml
<mirrors>
    <mirror>
        <id>aliyunmaven</id>
        <mirrorOf>*</mirrorOf>
        <name>阿里云公共仓库</name>
        <url>https://maven.aliyun.com/repository/public</url>
    </mirror>
</mirrors>
```

> **说明**：项目 `pom.xml` 已配置阿里云仓库，但配置 Maven 全局镜像可以加速所有依赖下载。

### Windows

1. 下载 Maven 压缩包：https://maven.apache.org/download.cgi
2. 解压到 `C:\apache-maven-3.9.6`
3. 配置环境变量：
   - 新建系统变量 `MAVEN_HOME`，值为 Maven 解压路径
   - 编辑 `Path` 变量，添加 `%MAVEN_HOME%\bin`

### 验证安装

```bash
mvn -version
# 期望输出：Apache Maven 3.x.x
```

---

## 四、安装 PostgreSQL

### Linux（CentOS/RHEL）

```bash
# 安装 PostgreSQL 14
sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum install -y postgresql14-server

# 初始化数据库
sudo /usr/pgsql-14/bin/postgresql-14-setup initdb

# 启动并设置开机自启
sudo systemctl start postgresql-14
sudo systemctl enable postgresql-14
```

### Linux（Ubuntu/Debian）

```bash
sudo apt update
sudo apt install -y postgresql postgresql-contrib

# 启动并设置开机自启
sudo systemctl start postgresql
sudo systemctl enable postgresql
```

### Windows

1. 下载 PostgreSQL 14 安装包：https://www.postgresql.org/download/windows/
2. 运行安装程序，安装过程中设置 `postgres` 用户密码
3. 安装完成后，PostgreSQL 会自动作为 Windows 服务启动

### 配置远程访问（如需）

编辑 `postgresql.conf`（通常位于 `/var/lib/pgsql/14/data/` 或 `/etc/postgresql/14/main/`）：

```ini
# 监听所有地址
listen_addresses = '*'
```

编辑 `pg_hba.conf`，添加访问规则：

```
# 允许所有 IP 使用密码认证连接（生产环境请限制 IP）
host    all    all    0.0.0.0/0    md5
```

```bash
# 重启 PostgreSQL 使配置生效
sudo systemctl restart postgresql-14   # CentOS
sudo systemctl restart postgresql      # Ubuntu
```

### 创建数据库

```bash
# 切换到 postgres 用户
sudo -u postgres psql
```

```sql
-- 创建数据库
CREATE DATABASE zhitan_ems ENCODING 'UTF8' LC_COLLATE='en_US.UTF-8' LC_CTYPE='en_US.UTF-8' TEMPLATE=template0;

-- 设置 postgres 用户密码（如尚未设置）
ALTER USER postgres WITH PASSWORD 'your_password';

-- 退出
\q
```

---

## 五、安装 Redis

### Linux（CentOS/RHEL）

```bash
# 安装 EPEL 源
sudo yum install -y epel-release

# 安装 Redis
sudo yum install -y redis

# 启动并设置开机自启
sudo systemctl start redis
sudo systemctl enable redis
```

### Linux（Ubuntu/Debian）

```bash
sudo apt update
sudo apt install -y redis-server

# 启动并设置开机自启
sudo systemctl start redis-server
sudo systemctl enable redis-server
```

### 手动编译安装（推荐，可控制版本）

```bash
# 下载 Redis 6.2
wget https://download.redis.io/releases/redis-6.2.14.tar.gz
tar -zxvf redis-6.2.14.tar.gz
cd redis-6.2.14

# 编译
make

# 安装到指定目录
sudo make install PREFIX=/usr/local/redis

# 创建配置文件目录
sudo mkdir -p /etc/redis
sudo cp redis.conf /etc/redis/redis.conf
```

### 配置 Redis

编辑 `/etc/redis/redis.conf`（或系统默认的 redis.conf 路径）：

```ini
# 绑定地址（生产环境建议绑定具体 IP，不要使用 0.0.0.0）
bind 127.0.0.1

# 端口
port 6379

# 后台运行
daemonize yes

# PID 文件路径
pidfile /var/run/redis/redis-server.pid

# 日志文件
logfile /var/log/redis/redis-server.log

# 设置密码（生产环境强烈建议设置）
requirepass your_redis_password

# 最大内存
maxmemory 512mb
maxmemory-policy allkeys-lru
```

```bash
# 使用配置文件启动
redis-server /etc/redis/redis.conf
```

### Windows

1. 下载 Redis Windows 版本：https://github.com/tporadowski/redis/releases
2. 解压后在命令行运行 `redis-server.exe redis.windows.conf`
3. 或安装为 Windows 服务：`redis-server.exe --service-install redis.windows.conf`

### 验证安装

```bash
redis-cli ping
# 期望输出：PONG

# 如果设置了密码
redis-cli -a your_redis_password ping
```

---

## 六、安装 InfluxDB

> **说明**：InfluxDB 用于存储实时采集数据。如果不启动 InfluxDB，后端仍可正常启动，但"实时数据监测"等功能将不可用。

### Linux

```bash
# 下载 InfluxDB 2.7
wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.7.6-amd64.deb   # Ubuntu
# 或
wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.7.6.x86_64.rpm  # CentOS

# Ubuntu 安装
sudo dpkg -i influxdb2-2.7.6-amd64.deb

# CentOS 安装
sudo yum install -y influxdb2-2.7.6.x86_64.rpm

# 启动并设置开机自启
sudo systemctl start influxdb
sudo systemctl enable influxdb
```

### 初始化 InfluxDB

InfluxDB 2.x 首次启动后需要进行初始化设置：

```bash
# 方式一：通过 Web UI 初始化
# 浏览器访问 http://localhost:8086，按提示创建管理员账号

# 方式二：通过命令行初始化
influx setup \
  --username admin \
  --password your_influxdb_password \
  --org org \
  --bucket bucket \
  --token your_api_token \
  --force
```

> **重要**：初始化时设置的 `org`（组织名称）、`bucket`（存储桶名称）和 `token`（API Token）需要与后端 `application.yml` 中的 `rtdb` 配置保持一致。

### Windows

1. 下载 InfluxDB 2.7 Windows 版本：https://portal.influxdata.com/downloads/
2. 解压后在命令行运行 `influxd.exe`
3. 浏览器访问 `http://localhost:8086` 进行初始化

### 验证安装

```bash
# 检查服务状态
curl http://localhost:8086/ping
# 期望返回 HTTP 204

# 或使用 influx CLI
influx ping
```

---

## 七、安装 MQTT Broker（可选）

> **说明**：MQTT Broker 用于实时数据采集。如果不启动 MQTT 服务，后端仍可正常启动，但"实时数据监测"等功能将不可用。启动日志中会输出 `mqtt服务链接异常!` 警告，可忽略。

### 使用 Mosquitto（轻量级）

```bash
# Ubuntu
sudo apt install -y mosquitto mosquitto-clients

# CentOS
sudo yum install -y mosquitto

# 启动
sudo systemctl start mosquitto
sudo systemctl enable mosquitto
```

### 使用 EMQX（企业级，推荐）

```bash
# Ubuntu
curl -s https://assets.emqx.com/scripts/install-emqx-deb.sh | sudo bash
sudo apt install -y emqx
sudo systemctl start emqx

# CentOS
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://packages.emqx.com/emqx-ce/rhel/7/x86_64
sudo yum install -y emqx
sudo systemctl start emqx
```

EMQX 管理面板：`http://localhost:18083`（默认账号 `admin` / `public`）

---

## 八、获取源码

```bash
# 从 Gitee 克隆
git clone https://gitee.com/liulingling1993/zhitan-ems.git

# 进入项目目录
cd zhitan-ems
```

项目目录结构：

```
zhitan-ems/
├── zhitan-admin/        # 后端主模块（Spring Boot 启动入口）
├── zhitan-common/       # 公共工具与共享组件
├── zhitan-framework/    # 框架组件（Security、MQTT、拦截器等）
├── zhitan-system/       # 业务模块（31 个子模块）
├── zhitan-quartz/       # 定时任务模块
├── zhitan-generator/    # 代码生成模块
├── zhitan-vue/          # 前端工程（Vue 3 + Vite）
├── sql/                 # 数据库初始化脚本
└── bin/                 # 批处理脚本
```

---

## 九、初始化数据库

### 9.1 导入数据库脚本

使用 `psql` 命令行或数据库管理工具（Navicat / DBeaver）导入：

```bash
# 命令行方式
psql -h localhost -U postgres -d zhitan_ems -f sql/public-v3.sql
```

或在 Navicat / DBeaver 中打开 `sql/public-v3.sql` 文件并执行。

> **说明**：`sql/public-v3.sql` 是 V3 版本的完整数据库脚本，包含所有表结构、序列、初始数据（菜单、角色、字典等），基于 PostgreSQL 14 导出。

### 9.2 验证数据导入

```sql
-- 连接到数据库
\c zhitan_ems

-- 查看表数量
SELECT count(*) FROM information_schema.tables WHERE table_schema = 'public';

-- 查看核心表是否存在
SELECT tablename FROM pg_tables WHERE schemaname = 'public' ORDER BY tablename;
```

---

## 十、后端配置与编译

### 10.1 数据库配置

编辑 `zhitan-admin/src/main/resources/application-dev.yml`（开发环境）或 `application-prod.yml`（生产环境）：

**开发环境** `application-dev.yml`：

```yaml
spring:
  datasource:
    type: com.alibaba.druid.pool.DruidDataSource
    driverClassName: org.postgresql.Driver
    druid:
      master:
        # 数据库连接（按实际环境修改）
        url: jdbc:postgresql://localhost:5432/zhitan_ems
        username: postgres
        password: postgres
      slave:
        enabled: false
```

**生产环境** `application-prod.yml`：

```yaml
spring:
  datasource:
    type: com.alibaba.druid.pool.DruidDataSource
    driverClassName: org.postgresql.Driver
    druid:
      master:
        # 生产环境数据库连接（按实际环境修改）
        # 注意：项目默认 prod 配置中数据库名为 energy_ml，请根据实际创建的数据库名修改
        url: jdbc:postgresql://127.0.0.1:5432/zhitan_ems
        username: your_db_user
        password: your_db_password
      slave:
        enabled: false
```

### 10.2 Redis 配置

编辑 `zhitan-admin/src/main/resources/application.yml`：

```yaml
spring:
  redis:
    host: localhost       # Redis 地址
    port: 6379            # Redis 端口
    database: 0           # 数据库索引（0-15）
    password:             # Redis 密码（未设置密码留空）
    timeout: 10s          # 连接超时时间
    lettuce:
      pool:
        min-idle: 0       # 最小空闲连接
        max-idle: 8       # 最大空闲连接
        max-active: 8     # 最大连接数
        max-wait: -1ms    # 最大阻塞等待时间
```

### 10.3 InfluxDB 配置

编辑 `zhitan-admin/src/main/resources/application.yml`：

```yaml
rtdb:
  host: http://127.0.0.1:8086    # InfluxDB 地址
  token: ==                       # InfluxDB API Token（初始化时设置的 token）
  org: org                        # InfluxDB 组织名称
  bucket: bucket                  # InfluxDB 存储桶名称
  measurement: data               # 测量数据表名
```

> **提示**：`token`、`org`、`bucket` 的值必须与 InfluxDB 初始化时设置的值一致。

### 10.4 MQTT 配置（可选）

编辑 `zhitan-admin/src/main/resources/application.yml`：

```yaml
mqtt:
  host: tcp://127.0.0.1:1883     # MQTT Broker 地址
  clientId: MQTT_WK              # 客户端 ID（需唯一）
  topics: topic1                 # 订阅主题（多个用逗号分隔）
  username: admin                # MQTT 用户名
  password: 1q2w3e4r.            # MQTT 密码
  timeout: 30                    # 连接超时（秒）
  keepalive: 60                  # 心跳间隔（秒）
  qos: 1                         # 消息质量等级（0/1/2）
  cleanSession: false            # 是否清除会话
  automaticReconnect: true       # 断开后自动重连
```

### 10.5 其他重要配置

编辑 `zhitan-admin/src/main/resources/application.yml`：

```yaml
server:
  port: 8080                     # 后端 HTTP 端口

# Token 配置
token:
  header: Authorization          # Token 请求头名称
  secret: abcdefghijklmnopqrstuvwxyzzhitancloud  # JWT 密钥（生产环境务必修改）
  expireTime: 300                # Token 有效期（分钟）

# 密码安全配置
user:
  password:
    maxRetryCount: 5             # 密码最大错误次数
    lockTime: 10                 # 锁定时间（分钟）

# Druid 监控控制台（生产环境建议关闭）
spring:
  datasource:
    druid:
      statViewServlet:
        enabled: true
        login-username: admin
        login-password: 123456   # Druid 监控密码（生产环境请修改）
```

### 10.6 选择环境 Profile

项目支持 `dev`（开发）和 `prod`（生产）两种环境配置，通过 Maven Profile 切换：

```bash
# 使用开发环境（默认）
mvn clean package -Dmaven.test.skip=true

# 使用生产环境
mvn clean package -Dmaven.test.skip=true -Pprod
```

> **说明**：`dev` 环境读取 `application-dev.yml`，`prod` 环境读取 `application-prod.yml`。两者的主要区别是数据库连接配置。

### 10.7 编译打包

在项目**根目录**执行：

```bash
# 首次编译（安装所有模块到本地仓库）
mvn clean install -Dmaven.test.skip=true

# 或仅打包（生成可执行 JAR）
mvn clean package -Dmaven.test.skip=true
```

> **说明**：
> - `-Dmaven.test.skip=true` 跳过测试以加快编译速度
> - 首次编译需要下载大量依赖，可能需要 5-10 分钟
> - 项目使用阿里云 Maven 仓库，国内下载速度较快
> - 编译成功后在 `zhitan-admin/target/` 目录下生成 `zhitan-admin.jar`

### 10.8 启动后端

```bash
# 方式一：使用 Maven 插件启动（推荐开发时使用）
cd zhitan-admin
mvn spring-boot:run

# 方式二：使用 Java 命令启动（生产部署推荐）
cd zhitan-admin/target
java -jar zhitan-admin.jar

# 方式三：指定 JVM 参数启动（生产部署推荐）
java -Xms256m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m \
  -jar zhitan-admin.jar

# 方式四：后台运行（Linux）
nohup java -Xms256m -Xmx1024m -jar zhitan-admin.jar > /dev/null 2>&1 &
```

### 10.9 验证后端启动

```bash
# 检查端口是否监听
curl http://localhost:8080

# 查看日志
tail -f logs/sys-info.log
```

启动成功后日志输出：

```
Application Version: 2.5.2
Spring Boot Version: 2.5.15
项目启动成功
```

> **注意**：如果未启动 MQTT 或 InfluxDB 服务，启动日志中会出现连接异常警告，不影响系统核心功能使用。

---

## 十一、前端编译与部署

### 11.1 安装 Node.js 和 Yarn

```bash
# 使用 nvm 安装 Node.js（推荐）
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install 18
nvm use 18

# 安装 Yarn
npm install -g yarn
```

### 11.2 安装前端依赖

```bash
cd zhitan-vue

# 配置国内镜像（加速下载）
yarn config set registry https://registry.npmmirror.com

# 安装依赖
yarn install
```

### 11.3 生产环境构建

```bash
# 构建生产版本
yarn build
```

构建产物输出在 `dist/` 目录，包含：

```
dist/
├── index.html          # 入口 HTML
├── assets/             # 静态资源（JS、CSS、图片等）
└── logo.png            # Logo 文件
```

### 11.4 部署到 Nginx

将 `dist/` 目录内容复制到 Nginx 的 Web 根目录：

```bash
# 创建部署目录
sudo mkdir -p /var/www/zhitan-ems

# 复制构建产物
sudo cp -r dist/* /var/www/zhitan-ems/
```

---

## 十二、Nginx 反向代理配置

### 安装 Nginx

```bash
# CentOS
sudo yum install -y epel-release
sudo yum install -y nginx

# Ubuntu
sudo apt install -y nginx

# 启动并设置开机自启
sudo systemctl start nginx
sudo systemctl enable nginx
```

### 配置 Nginx

创建站点配置文件 `/etc/nginx/conf.d/zhitan-ems.conf`：

```nginx
server {
    listen       80;
    server_name  your-domain.com;  # 替换为实际域名或 IP

    # 前端静态资源
    location / {
        root   /var/www/zhitan-ems;
        try_files $uri $uri/ /index.html;
        index  index.html index.htm;
    }

    # 后端 API 反向代理
    location /prod-api/ {
        proxy_set_header Host $http_host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header REMOTE-HOST $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_pass http://127.0.0.1:8080/;
    }

    # 文件上传路径
    # 注意：uploadPath 目录位置由 application.yml 中 base.profile 配置决定（默认 ./uploadPath），
    # 该路径是相对于后端 JAR 运行目录的。请根据实际部署路径修改此处 alias。
    # 例如后端运行在 /opt/zhitan-ems/ 下，则实际路径为 /opt/zhitan-ems/uploadPath/
    location /profile/ {
        alias /opt/zhitan-ems/uploadPath/;
    }

    # Gzip 压缩（提升加载速度）
    gzip on;
    gzip_min_length 1k;
    gzip_comp_level 6;
    gzip_types text/plain application/javascript application/x-javascript text/css application/xml text/javascript;
    gzip_vary on;

    # 静态资源缓存
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        root /var/www/zhitan-ems;
        expires 30d;
        add_header Cache-Control "public, immutable";
    }
}
```

```bash
# 检查配置语法
sudo nginx -t

# 重载 Nginx 配置
sudo nginx -s reload
```

> **说明**：前端生产环境的 API 请求前缀为 `/prod-api`（在 `.env.production` 中配置），Nginx 会将其代理到后端 `http://127.0.0.1:8080/`。

---

## 十三、使用 systemd 管理服务（Linux）

### 后端服务

创建 `/etc/systemd/system/zhitan-ems.service`：

```ini
[Unit]
Description=Zhitan Energy Management System
# 注意：服务名称因发行版而异，CentOS 上 PostgreSQL 14 服务名为 postgresql-14.service
After=network.target postgresql.service redis.service

[Service]
Type=simple
User=www
Group=www
WorkingDirectory=/opt/zhitan-ems
# 注意：/usr/bin/java 需替换为实际 JDK 8 的 java 可执行文件路径
# 可通过 which java 命令查看实际路径
ExecStart=/usr/local/jdk8/bin/java -Xms256m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m -jar /opt/zhitan-ems/zhitan-admin.jar
ExecStop=/bin/kill -15 $MAINPID
Restart=on-failure
RestartSec=10

# 环境变量
Environment="JAVA_HOME=/usr/local/jdk8"
Environment="SPRING_PROFILES_ACTIVE=prod"

# 日志
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
```

```bash
# 重载 systemd 配置
sudo systemctl daemon-reload

# 启动服务
sudo systemctl start zhitan-ems

# 设置开机自启
sudo systemctl enable zhitan-ems

# 查看服务状态
sudo systemctl status zhitan-ems

# 查看日志
sudo journalctl -u zhitan-ems -f
```

### 服务管理命令汇总

```bash
# 启动所有服务
sudo systemctl start postgresql redis influxdb nginx zhitan-ems

# 停止所有服务
sudo systemctl stop zhitan-ems nginx influxdb redis postgresql

# 查看所有服务状态
sudo systemctl status postgresql redis influxdb nginx zhitan-ems
```

---

## 十四、部署验证

### 14.1 服务状态检查

```bash
# 检查 PostgreSQL
pg_isready -h localhost -p 5432

# 检查 Redis
redis-cli ping

# 检查 InfluxDB
curl -s http://localhost:8086/ping

# 检查后端应用
curl -s http://localhost:8080

# 检查 Nginx
curl -s -o /dev/null -w "%{http_code}" http://localhost
```

### 14.2 访问地址汇总

| 地址 | 说明 |
|------|------|
| `http://your-server-ip` | 前端页面（Nginx） |
| `http://your-server-ip:8080` | 后端 API 直接访问 |
| `http://your-server-ip:8080/swagger-ui/index.html` | Swagger 接口文档 |
| `http://your-server-ip:8080/druid/` | Druid 数据库监控面板 |

### 14.3 默认登录账号

| 用户名 | 密码 | 角色 |
|--------|------|------|
| admin | 123456 | 超级管理员 |

---

## 十五、常见问题

### Q1：Maven 编译失败提示找不到 rt.jar

**原因**：使用了 JDK 9+ 编译项目。本项目 `pom.xml` 中配置了 `<bootclasspath>${java.home}/lib/rt.jar`，JDK 9+ 已移除该文件。

**解决**：确保使用 JDK 8 编译，执行 `java -version` 确认输出为 `1.8.x`。如果系统存在多个 JDK，请正确设置 `JAVA_HOME`。

### Q2：启动时数据库连接失败

**排查步骤**：

1. 确认 PostgreSQL 已启动：`pg_isready -h localhost -p 5432`
2. 确认数据库 `zhitan_ems` 已创建
3. 检查 `application-dev.yml`（或 `application-prod.yml`）中的连接地址、用户名、密码
4. 确认 `pg_hba.conf` 中的认证配置允许当前用户连接

### Q3：Redis 连接被拒绝

**排查步骤**：

1. 确认 Redis 已启动：`redis-cli ping`
2. 如果 Redis 设置了密码，必须在 `application.yml` 中配置 `spring.redis.password`
3. 检查 Redis `bind` 配置是否允许当前地址连接

### Q4：InfluxDB Token 认证失败

**排查步骤**：

1. 确认 InfluxDB 已完成初始化设置
2. 检查 `application.yml` 中 `rtdb.token` 是否与 InfluxDB 初始化时设置的 API Token 一致
3. 确认 `rtdb.org` 和 `rtdb.bucket` 与 InfluxDB 中的组织和存储桶名称一致
4. 可通过 InfluxDB Web UI（`http://localhost:8086`）查看和重新生成 Token

### Q5：前端页面空白或接口 404

**排查步骤**：

1. 确认后端服务已启动并运行在 `8080` 端口
2. 检查 Nginx 反向代理配置中 `/prod-api/` 是否正确代理到后端地址
3. 确认前端 `.env.production` 中 `VITE_APP_BASE_API = '/prod-api'` 配置正确
4. 查看浏览器开发者工具 Network 面板，确认请求路径和响应状态

### Q6：日志文件在哪里

后端日志路径在 `application.yml` 同级的 `./logs/` 目录下（由 `logback.xml` 配置）：

| 日志文件 | 说明 |
|----------|------|
| `logs/sys-info.log` | 系统 INFO 级别日志 |
| `logs/sys-error.log` | 系统 ERROR 级别日志 |
| `logs/sys-user.log` | 用户操作日志 |

> 日志文件按天滚动，保留最近 60 天。

### Q7：生产环境安全建议

1. **修改默认密码**：修改 admin 账号密码、Druid 监控密码、Token Secret
2. **关闭 Swagger**：生产环境可在 `application.yml` 中设置 `swagger.enabled: false`
3. **限制 Druid 访问**：配置 `statViewServlet.allow` 白名单 IP
4. **Redis 设置密码**：避免未授权访问
5. **PostgreSQL 限制连接**：在 `pg_hba.conf` 中限制允许连接的 IP 范围
6. **使用 HTTPS**：在 Nginx 中配置 SSL 证书，启用 HTTPS 访问
7. **关闭不必要的端口**：仅开放 80/443 端口，后端 8080 端口不对外暴露

---

> **社区交流**：如有问题，欢迎加入 QQ 群 **1037733518**（备注：ems+姓名）或前往 [Gitee Issues](https://gitee.com/liulingling1993/zhitan-ems/issues) 反馈。
