#!/bin/sh
set -e

# 生成运行时配置文件 config.js
cat > /usr/share/nginx/html/config.js <<EOF
// Docker 运行时注入的配置
window.APP_CONFIG = {
  API_BASE_URL: "${API_BASE_URL:-/prod-api}",
  TITLE: "${APP_TITLE:-智碳未来能碳管理系统}",
  ENV: "${APP_ENV:-production}",
  SYSTEM: "${APP_SYSTEM:-青岛智碳未来科技有限公司}"
}
EOF

echo "=== 运行时配置已生成 ==="
cat /usr/share/nginx/html/config.js
echo "=========================="

# 如果提供了 BACKEND_URL，替换 nginx 配置中的代理地址
if [ -n "$BACKEND_URL" ]; then
  echo "配置后端代理: $BACKEND_URL"
  envsubst '${BACKEND_URL}' < /etc/nginx/nginx.conf > /tmp/nginx.conf
  mv /tmp/nginx.conf /etc/nginx/nginx.conf
fi

# 启动 Nginx
echo "启动 Nginx..."
exec "$@"
