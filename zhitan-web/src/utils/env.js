// src/utils/env.js - 运行时环境配置工具
/**
 * 获取运行时配置
 * 支持 Docker 容器运行时注入和本地开发环境
 */

// 默认配置（用于本地开发和构建时）
const defaultConfig = {
  API_BASE_URL: import.meta.env.VITE_APP_BASE_API,
  TITLE: import.meta.env.VITE_APP_TITLE,
  ENV: import.meta.env.VITE_APP_ENV,
  SYSTEM: import.meta.env.VITE_APP_SYSTEM
}

/**
 * 获取运行时配置
 * 优先级：window.APP_CONFIG > 环境变量 > 默认配置
 */
export const getRuntimeConfig = () => {
  // 1. 尝试获取 Docker 运行时注入的配置
  const runtimeConfig = window.APP_CONFIG || {}
  
  // 2. 合并配置，运行时配置优先
  const config = {
    ...defaultConfig,
    ...runtimeConfig
  }

  return config
}

/**
 * 判断是否为 Docker 环境
 */
export const isDockerEnvironment = () => {
  return !!(window.APP_CONFIG && window.APP_CONFIG.API_BASE_URL)
}

// 导出配置
export default getRuntimeConfig()