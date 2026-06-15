# 前端部署文档

> 本文档详细介绍智碳能源管理系统前端（Vue3 + Vite）的环境搭建、依赖安装、构建配置和部署流程。适用于开发环境搭建和生产环境部署。

---

## 目录

- [一、环境要求](#一环境要求)
- [二、安装 Node.js](#二安装-nodejs)
- [三、安装包管理器](#三安装包管理器)
- [四、获取前端源码](#四获取前端源码)
- [五、安装前端依赖](#五安装前端依赖)
- [六、Vite 配置详解](#六vite-配置详解)
- [七、环境变量配置](#七环境变量配置)
- [八、开发模式运行](#八开发模式运行)
- [九、生产环境构建](#九生产环境构建)
- [十、Nginx 部署配置](#十nginx-部署配置)
- [十一、HTTPS 配置（可选）](#十一https-配置可选)
- [十二、部署验证](#十二部署验证)
- [十三、常见问题](#十三常见问题)

---

## 一、环境要求

### 软件版本要求

| 软件 | 最低版本 | 推荐版本 | 用途 |
|------|---------|---------|------|
| Node.js | 18.0+ | 18.x LTS | JavaScript 运行时环境 |
| npm | 8.0+ | 9.x+ | Node.js 包管理器 |
| Yarn | 1.22+ | 1.22+ | 替代 npm 的包管理器（推荐） |
| Git | 2.0+ | 最新版本 | 源码管理 |

### 系统兼容性

- **Windows**: Windows 10/11, Windows Server 2016+
- **Linux**: Ubuntu 20.04+, CentOS 7+, Debian 10+
- **macOS**: macOS 12+

> **重要提示**：项目使用 Vue 3 + Vite 构建，必须使用 Node.js 18+ 版本，Node.js 16 及以下版本可能无法正常编译。

---

## 二、安装 Node.js

### Windows 安装

1. 访问 [Node.js 官方网站](https://nodejs.org/zh-cn/download/)
2. 下载 **LTS 版本**（推荐 18.x）
3. 运行安装程序，建议使用默认设置
4. 验证安装：

```bash
node -v
npm -v
```

期望输出：
```
v18.x.x
8.x.x
```

### Linux 安装（Ubuntu/Debian）

```bash
# 使用 NodeSource 仓库安装 Node.js 18
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# 验证安装
node -v
npm -v
```

### Linux 安装（CentOS/RHEL）

```bash
# 使用 NodeSource 仓库安装 Node.js 18
curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

# 验证安装
node -v
npm -v
```

### 使用 nvm 管理多个 Node.js 版本（推荐）

```bash
# 安装 nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# 重新加载 shell 配置
source ~/.bashrc

# 安装并使用 Node.js 18
nvm install 18
nvm use 18
nvm alias default 18
```

---

## 三、安装包管理器

项目支持 **npm** 和 **Yarn** 两种包管理器，推荐使用 **Yarn**。

### 安装 Yarn

```bash
# 全局安装 Yarn
npm install -g yarn

# 验证安装
yarn -v
```

### 配置国内镜像源（加速依赖下载）

```bash
# npm 配置阿里云镜像
npm config set registry https://registry.npmmirror.com

# Yarn 配置阿里云镜像
yarn config set registry https://registry.npmmirror.com
```

验证镜像配置：
```bash
npm config get registry
# 或
yarn config get registry
# 期望输出：https://registry.npmmirror.com
```

---

## 四、获取前端源码

```bash
# 从 Gitee 克隆完整项目
git clone https://gitee.com/liulingling1993/zhitan-ems.git

# 进入前端目录
cd zhitan-ems/zhitan-vue
```

前端项目目录结构：
```
zhitan-vue/
├── public/                # 静态资源目录
├── src/                   # 源代码目录
│   ├── api/              # API 接口定义
│   ├── assets/           # 静态资源（图片、字体等）
│   ├── components/       # 公共组件
│   ├── layout/           # 布局组件
│   ├── router/           # 路由配置
│   ├── store/            # 状态管理（Pinia）
│   ├── utils/            # 工具函数
│   ├── views/            # 页面组件
│   ├── App.vue           # 根组件
│   └── main.js           # 入口文件
├── vite/                 # Vite 插件配置
├── .env.development      # 开发环境变量
├── .env.production       # 生产环境变量
├── .env.staging          # 预发布环境变量
├── index.html            # HTML 模板
├── package.json          # 项目依赖和脚本
├── vite.config.js        # Vite 主配置文件
└── yarn.lock             # Yarn 锁定文件
```

---

## 五、安装前端依赖

在 `zhitan-vue` 目录下执行：

### 使用 Yarn（推荐）

```bash
# 安装依赖
yarn install

# 如果网络较慢，可以先清除缓存
yarn cache clean
yarn install
```

### 使用 npm

```bash
# 安装依赖
npm install

# 如果网络较慢，可以先清除缓存
npm cache clean --force
npm install
```

> **注意**：首次安装依赖可能需要几分钟时间，取决于网络速度。

---

## 六、Vite 配置详解

### 主配置文件 `vite.config.js`

```javascript
import { defineConfig, loadEnv } from "vite"
import path from "path"
import createVitePlugins from "./vite/plugins"

export default defineConfig(({ mode, command }) => {
  const env = loadEnv(mode, process.cwd())
  const { VITE_APP_ENV } = env
  return {
    // 部署基础路径
    base: VITE_APP_ENV === "production" ? "/" : "/",
    
    // 插件配置
    plugins: createVitePlugins(env, command === "build"),
    
    // 路径别名配置
    resolve: {
      alias: {
        "~": path.resolve(__dirname, "./"),
        "@": path.resolve(__dirname, "./src"),
      },
      extensions: [".mjs", ".js", ".ts", ".jsx", ".tsx", ".json", ".vue"],
    },
    
    // 开发服务器配置
    server: {
      port: 80,           // 开发服务器端口
      host: true,         // 允许外部访问
      open: true,         // 自动打开浏览器
      proxy: {
        // 开发环境代理配置
        "/dev-api": {
          target: "http://localhost:8080",
          changeOrigin: true,
          rewrite: (p) => p.replace(/^\/dev-api/, "/"),
        },
        "/prod-api": {
          target: "http://localhost:8080",
          changeOrigin: true,
          secure: true,
        },
      },
    },
    
    // CSS 配置
    css: {
      postcss: {
        plugins: [
          {
            postcssPlugin: "internal:charset-removal",
            AtRule: {
              charset: (atRule) => {
                if (atRule.name === "charset") {
                  atRule.remove()
                }
              },
            },
          },
        ],
      },
    },
  }
})
```

### Vite 插件配置

项目使用了以下 Vite 插件：

- `@vitejs/plugin-vue`: Vue 3 SFC 支持
- `unplugin-auto-import`: 自动导入常用 API
- `unplugin-vue-setup-extend-plus`: Vue setup 语法糖扩展
- `vite-plugin-svg-icons`: SVG 图标支持
- `vite-plugin-compression`: 构建时压缩（gzip/brotli）

插件配置位于 `vite/plugins/index.js`。

---

## 七、环境变量配置

### 环境变量文件

项目包含三个环境变量文件：

#### `.env.development`（开发环境）

```env
# 页面标题
VITE_APP_TITLE = 能源管理系统

# 开发环境配置
VITE_APP_ENV = 'development'

# 系统/开发环境
VITE_APP_BASE_API = '/dev-api'
```

#### `.env.production`（生产环境）

```env
# 页面标题
VITE_APP_TITLE = 能源管理系统

# 生产环境配置
VITE_APP_ENV = 'production'

# 系统/生产环境
VITE_APP_BASE_API = '/prod-api'

# 是否在打包时开启压缩，支持 gzip 和 brotli
VITE_BUILD_COMPRESS = gzip
```

#### `.env.staging`（预发布环境）

```env
# 页面标题
VITE_APP_TITLE = 能源管理系统(预发布)

# 预发布环境配置
VITE_APP_ENV = 'staging'

# 系统/预发布环境
VITE_APP_BASE_API = '/stage-api'
```

### 环境变量使用规则

- 所有环境变量必须以 `VITE_` 开头才能在客户端代码中访问
- 在代码中通过 `import.meta.env.VITE_VARIABLE_NAME` 访问
- 不同环境的变量会自动根据构建命令加载

---

## 八、开发模式运行

### 启动开发服务器

```bash
# 使用 Yarn
yarn dev

# 使用 npm
npm run dev
```

### 开发服务器特性

- **热重载（HMR）**: 修改代码后自动刷新页面
- **错误覆盖**: 编译错误会在浏览器中显示
- **代理配置**: 自动代理 API 请求到后端服务
- **自动打开**: 默认在浏览器中打开 `http://localhost`

### 访问地址

开发服务器启动后，默认在以下地址提供服务：
- **本地访问**: `http://localhost`
- **局域网访问**: `http://[你的IP地址]`

> **注意**：开发服务器默认监听所有网络接口（`host: true`），可以通过修改 `vite.config.js` 中的 `server.host` 配置来限制访问。

---

## 九、生产环境构建

### 构建命令

```bash
# 构建生产版本（使用 .env.production 配置）
yarn build
# 或
npm run build

# 构建预发布版本（使用 .env.staging 配置）
yarn build:stage
# 或
npm run build:stage
```

### 构建产物

构建完成后，生成的静态文件位于 `dist/` 目录：

```
dist/
├── index.html          # 入口 HTML 文件
├── logo.png            # Logo 图片
└── assets/             # 静态资源目录
    ├── index-xxxx.js   # 主应用 JS 文件（带 hash）
    ├── vendor-xxxx.js  # 第三方库 JS 文件（带 hash）
    └── index-xxxx.css  # 样式文件（带 hash）
```

### 构建优化特性

- **代码分割**: 自动分割代码，按需加载
- **Tree Shaking**: 移除未使用的代码
- **压缩**: JS/CSS 文件自动压缩
- **资源哈希**: 文件名包含内容哈希，支持长期缓存
- **Gzip/Brotli**: 可选的额外压缩（通过 `VITE_BUILD_COMPRESS` 配置）

---

## 十、Nginx 部署配置

### 基础 Nginx 配置

创建 Nginx 配置文件 `/etc/nginx/conf.d/zhitan-frontend.conf`：

```nginx
server {
    listen       80;
    server_name  your-domain.com;  # 替换为实际域名或服务器 IP
    
    # 前端静态资源根目录
    root   /var/www/zhitan-ems;
    index  index.html index.htm;
    
    # SPA 路由支持（所有路由都指向 index.html）
    location / {
        try_files $uri $uri/ /index.html;
    }
    
    # API 反向代理（生产环境）
    location /prod-api/ {
        proxy_set_header Host $http_host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_pass http://127.0.0.1:8080/;
    }
    
    # 静态资源缓存（提升性能）
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        expires 30d;
        add_header Cache-Control "public, immutable";
    }
    
    # Gzip 压缩（提升加载速度）
    gzip on;
    gzip_min_length 1k;
    gzip_comp_level 6;
    gzip_types 
        text/plain 
        application/javascript 
        application/x-javascript 
        text/css 
        application/xml 
        text/javascript 
        application/json;
    gzip_vary on;
}
```

### 部署步骤

1. **创建部署目录**
   ```bash
   sudo mkdir -p /var/www/zhitan-ems
   ```

2. **复制构建产物**
   ```bash
   # 在 zhitan-vue 目录下执行
   sudo cp -r dist/* /var/www/zhitan-ems/
   ```

3. **设置目录权限**
   ```bash
   sudo chown -R www-data:www-data /var/www/zhitan-ems
   sudo chmod -R 755 /var/www/zhitan-ems
   ```

4. **测试 Nginx 配置**
   ```bash
   sudo nginx -t
   ```

5. **重载 Nginx 配置**
   ```bash
   sudo nginx -s reload
   ```

### 高级配置选项

#### 启用 Brotli 压缩（如果构建时启用了 Brotli）

```nginx
# 需要安装 nginx-module-brotli
brotli on;
brotli_comp_level 6;
brotli_types 
    text/plain 
    application/javascript 
    application/x-javascript 
    text/css 
    application/xml 
    text/javascript 
    application/json;
```

#### 静态资源 CDN 配置

```nginx
# 如果使用 CDN，可以添加 CORS 头
location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
    add_header Access-Control-Allow-Origin "*";
    expires 30d;
    add_header Cache-Control "public, immutable";
}
```

---

## 十一、HTTPS 配置（可选）

### 使用 Let's Encrypt 免费证书

```bash
# 安装 Certbot
sudo apt install certbot python3-certbot-nginx  # Ubuntu/Debian
sudo yum install certbot python3-certbot-nginx  # CentOS/RHEL

# 获取并安装证书
sudo certbot --nginx -d your-domain.com

# 自动续期（Certbot 会自动设置 cron 任务）
sudo certbot renew --dry-run
```

### 手动 HTTPS 配置

```nginx
server {
    listen 443 ssl http2;
    server_name your-domain.com;
    
    ssl_certificate /path/to/your/certificate.crt;
    ssl_certificate_key /path/to/your/private.key;
    
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384;
    ssl_prefer_server_ciphers off;
    
    # 其他配置与 HTTP 相同
    root /var/www/zhitan-ems;
    index index.html;
    
    location / {
        try_files $uri $uri/ /index.html;
    }
    
    location /prod-api/ {
        proxy_set_header Host $http_host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_pass http://127.0.0.1:8080/;
    }
    
    # ... 其他配置
}

# HTTP 重定向到 HTTPS
server {
    listen 80;
    server_name your-domain.com;
    return 301 https://$server_name$request_uri;
}
```

---

## 十二、部署验证

### 12.1 文件完整性检查

```bash
# 检查关键文件是否存在
ls -la /var/www/zhitan-ems/
# 应包含 index.html, logo.png, assets/ 目录
```

### 12.2 Nginx 配置验证

```bash
# 测试配置语法
sudo nginx -t

# 检查服务状态
sudo systemctl status nginx
```

### 12.3 功能验证

访问以下地址进行验证：

| 地址 | 预期结果 |
|------|----------|
| `http://your-server-ip` | 显示登录页面 |
| `http://your-server-ip/#/dashboard` | 显示首页看板（登录后） |
| `http://your-server-ip/prod-api/login` | 返回 API 响应（应该返回 405 或认证错误） |

### 12.4 性能验证

```bash
# 检查静态资源是否正确缓存
curl -I http://your-server-ip/assets/index-xxxx.js

# 检查 Gzip 是否启用
curl -H "Accept-Encoding: gzip" -I http://your-server-ip/index.html
# 响应头应包含 Content-Encoding: gzip
```

---

## 十三、常见问题

### Q1：构建失败提示内存不足

**现象**：构建过程中出现 `JavaScript heap out of memory` 错误。

**解决方案**：
```bash
# 增加 Node.js 内存限制
export NODE_OPTIONS=--max_old_space_size=4096
yarn build
```

### Q2：开发服务器无法访问

**排查步骤**：
1. 检查防火墙设置：`sudo ufw allow 80`（Linux）
2. 检查 Vite 配置中的 `server.host` 是否为 `true`
3. 确认端口未被占用：`lsof -i :80` 或 `netstat -tlnp | grep :80`

### Q3：生产环境 API 请求 404

**原因**：Nginx 反向代理配置不正确。

**解决方案**：
1. 确认后端服务运行在 `8080` 端口：`curl http://localhost:8080`
2. 检查 Nginx 配置中的 `proxy_pass` 地址是否正确
3. 确认前端环境变量中 `VITE_APP_BASE_API = '/prod-api'`

### Q4：页面刷新后 404 错误

**原因**：SPA 路由未正确配置。

**解决方案**：
确保 Nginx 配置包含：
```nginx
location / {
    try_files $uri $uri/ /index.html;
}
```

### Q5：静态资源加载缓慢

**优化方案**：
1. 启用 Gzip 压缩（已在示例配置中）
2. 配置静态资源长期缓存
3. 考虑使用 CDN 加速静态资源
4. 检查网络带宽和服务器性能

### Q6：构建产物过大

**优化方案**：
1. 分析包大小：`yarn build --report`（需要安装 rollup-plugin-visualizer）
2. 移除未使用的依赖
3. 启用代码分割和懒加载
4. 考虑使用 CDN 引入大型库（如 echarts）

### Q7：跨域问题

**开发环境**：Vite 开发服务器已配置代理，通常不会出现跨域问题。

**生产环境**：确保 Nginx 正确代理 API 请求，不要直接从前端调用后端 API。

如果需要处理 CORS，可以在后端 Spring Boot 应用中配置：
```java
@Configuration
public class CorsConfig {
    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOrigins(Arrays.asList("*"));
        configuration.setAllowedMethods(Arrays.asList("*"));
        configuration.setAllowedHeaders(Arrays.asList("*"));
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }
}
```

---