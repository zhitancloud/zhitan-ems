SELECT 'CREATE DATABASE zhitan_ems'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'zhitan_ems')\gexec

-- 连接到新数据库
\c zhitan_ems;

-- 设置时区
SET TIMEZONE = 'Asia/Shanghai';
