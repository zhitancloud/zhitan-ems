

# Zhitan-Gateway 项目简介

Zhitan-Gateway 是一个基于 Java 的网关服务，主要功能是接收 MQTT 协议的数据，并将这些数据写入时间序列数据库 InfluxDB 或关系型数据库中。该项目适用于物联网（IoT）场景下的数据采集和处理。

## 技术栈
- Spring Boot
- MQTT
- InfluxDB
- MyBatis Plus
- Redis
- Druid 数据库连接池

## 主要功能
- 通过 MQTT 协议接收数据并进行处理。
- 支持将数据写入 InfluxDB 或其他数据库。
- 配置 Druid 数据库连接池以管理主从数据库连接。
- 提供 Redis 缓存服务以提升数据处理效率。

## 模块说明
- `MQTTGatewayApplication.java`：Spring Boot 启动类。
- `MqttConfig.java` 和 `MqttInboundConfig.java`：负责 MQTT 的连接和消息接收配置。
- `InfluxdbConfig.java` 和 `InfluxdbRepository.java`：负责 InfluxDB 的连接和数据写入。
- `DataServiceImpl.java`：实现数据处理逻辑，包括接收 MQTT 消息并写入数据库。
- `DruidConfig.java` 和 `DruidProperties.java`：配置 Druid 数据库连接池。
- `RedisConfig.java` 和 `RedisCache.java`：配置 Redis 缓存并提供缓存操作方法。
- `MyBatisPlusConfig.java`：配置 MyBatis Plus 的拦截器。

## 使用说明
### 配置
确保在 `application.yml` 或 `application-dev.yml` 中配置以下内容：
- MQTT 服务器连接信息（broker-url, username, password）
- InfluxDB 连接参数（host, org, bucket, token）
- Redis 配置信息
- Druid 数据源配置

### 启动
运行 `MQTTGatewayApplication.java` 中的 `main` 方法启动服务。

### 数据处理
当 MQTT 消息到达时，`MqttInboundConfig` 会监听指定的 Topic，并通过 `MqttMessageHandler` 处理数据。数据将根据配置写入 InfluxDB 或其他数据库。

## 依赖管理
使用 Maven 进行依赖管理，核心依赖包括：
- Spring Boot Starter
- MQTT 支持库
- InfluxDB Java 客户端
- MyBatis Plus
- Druid 数据库连接池
- Redis 客户端

## 许可证
本项目遵循 MIT 许可证，详见 [LICENSE](LICENSE) 文件。

## 注意事项
- 本项目需要依赖 MQTT Broker 和 InfluxDB/MySQL 等数据库，请确保相关服务已启动。
- 配置文件中需根据实际环境修改配置，特别是数据库和 MQTT 的连接参数。

如需进一步了解，请查阅源码或联系项目维护者。