# ========================================
# 多阶段构建 - Stage 1: 构建前端
# ========================================
FROM node:18-alpine AS builder

WORKDIR /build

# 1. 复制 package.json（利用缓存）
COPY package.json yarn.lock* package-lock.json* ./

# 2. 安装依赖
RUN npm config set registry https://registry.npmmirror.com && \
    npm install

# 3. 复制源代码
COPY . .

# 4. 构建生产版本
RUN npm run build

# ========================================
# 多阶段构建 - Stage 2: Nginx 运行
# ========================================
FROM nginx:1.25-alpine

LABEL maintainer="zhitan-web" \
      description="智碳未来能碳管理系统前端" \
      version="1.0.0"

# 1. 从构建阶段复制静态文件
COPY --from=builder /build/dist /usr/share/nginx/html

# 2. 复制 Nginx 配置
COPY nginx.conf /etc/nginx/nginx.conf

# 3. 复制环境变量注入脚本
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# 4. 暴露端口
EXPOSE 80

# 5. 环境变量（默认值，可被覆盖）
ENV API_BASE_URL=/prod-api \
    BACKEND_URL=http://localhost:8080 \
    APP_TITLE=智碳未来能碳管理系统 \
    APP_ENV=production \
    APP_SYSTEM=青岛智碳未来科技有限公司

# 6. 启动脚本
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
