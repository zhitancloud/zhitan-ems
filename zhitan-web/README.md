# zhitan-web

## 1. 环境要求

- Node.js：**>= 18**（推荐与 Docker 构建保持一致）
- 包管理器：建议使用 **Yarn**（请勿同时混用 npm/yarn 以避免 lockfile 不一致）

> Windows 建议使用 PowerShell / Git Bash 执行下述命令。

## 2. 安装依赖

请在 **zhitan-web** 目录中执行：

### 2.1 安装 Yarn（如已安装可跳过）

```bash
npm install -g yarn
```

### 2.2 安装依赖

```bash
yarn install
```

## 3. 启动开发服务

```bash
yarn dev
```

- 默认地址：`http://localhost:5173/`（如有变更以控制台输出为准）

## 4. 构建与本地预览

### 4.1 构建生产包

```bash
yarn build
```

- 构建产物：`dist/`

### 4.2 本地预览（模拟生产静态服务）

```bash
yarn preview
```

## 5. 配置说明（接口地址等）

如果项目使用 Vite 环境变量，请在以下文件中配置（按项目实际情况调整）：

- `.env.development`
- `.env.production`

示例（如项目使用 VITE_ 前缀）：

```ini
VITE_API_BASE_URL=/prod-api
```

> 如使用 Docker/Nginx 运行，请确认与容器环境变量注入逻辑一致（例如 API_BASE_URL、BACKEND_URL 等）。

## 6. Docker 构建（可选）

本项目已支持容器化构建以及部署，在 `zhitan-web` 目录执行：

```bash
docker build -t zhitan-web .
```

## 7. 常见问题

### 7.1 依赖安装慢/失败（国内网络）

可配置 registry：

```bash
npm config set registry https://registry.npmmirror.com
# 或 yarn
yarn config set registry https://registry.npmmirror.com
```

### 7.2 Linux 下构建报 “Could not resolve / Could not load”

请检查 `src/views/**.vue` 中 import 路径与真实文件名是否 **大小写一致**（Linux 文件系统大小写敏感）。