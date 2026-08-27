<div align="center">
    <img src="images/logo-chinese.png" alt="Zhitan Energy Management System Logo" height="150" width="150">
</div>
<p align="center">English | <a href="README.md">中文</a></p>
<h1 align="center">Zhitan Energy Carbon Management System</h1>
<h3 align="center">Zhitan EMS</h3>

<p align="center">An enterprise energy and carbon management platform for governments, industrial parks, and enterprises</p>

<p align="center">
    <a href="https://gitee.com/liulingling1993/zhitan-ems/stargazers"><img src="https://gitee.com/liulingling1993/zhitan-ems/badge/star.svg?theme=dark" alt="Stars"></a>
    <a href="https://gitee.com/liulingling1993/zhitan-ems/members"><img src="https://gitee.com/liulingling1993/zhitan-ems/badge/fork.svg?theme=dark" alt="Forks"></a>
    <a href="#"><img src="https://img.shields.io/badge/Version-v2.5.2-blue.svg" alt="Version"></a>
    <a href="#"><img src="https://img.shields.io/badge/Java-8-orange.svg" alt="Java"></a>
    <a href="#"><img src="https://img.shields.io/badge/Vue-3.3-brightgreen.svg" alt="Vue"></a>
    <a href="#"><img src="https://img.shields.io/badge/License-AGPL%20%2B%20ZTPL-blue.svg" alt="License"></a>
    <a href="#"><img src="https://img.shields.io/badge/Update%20Plan-60%20Days-green.svg" alt="Update Plan"></a>
</p>

---

## Table of Contents

- [Online Demo](#online-demo)
- [Overview](#overview)
- [Core Features](#core-features)
- [Screenshots](#screenshots)
- [Architecture](#architecture)
- [Technology Stack](#technology-stack)
- [Quick Deployment](#quick-deployment)
- [Documentation](#documentation)
- [License](#license)
- [Community](#community)
- [Contributing](#contributing)

## Online Demo

Demo: [https://demo-ems.zhitancloud.com/](https://demo-ems.zhitancloud.com/)

## Overview

Zhitan EMS is an integrated energy management solution for governments, industrial parks, and enterprises. It supports the collection and analysis of electricity, water, gas, heat, carbon, photovoltaic, energy storage, and charging data.

The system helps organizations establish a complete energy management system, achieve accurate metering, refined control, intelligent decision-making, and visual reporting, and continuously improve energy efficiency and carbon management. It supports the full lifecycle of carbon tracking, carbon accounting, carbon trading, and carbon reporting, helping organizations contribute to China's carbon peak and carbon neutrality goals.

### Why Choose Zhitan EMS

- **Full Energy Coverage** — Water, electricity, gas, heat, carbon, PV, storage, and charging in one system
- **Out of the Box** — Docker Compose one-click deployment, experience the full system in 5 minutes
- **Dual Theme Support** — Dark/light theme switching, suitable for large-screen monitoring and daily office use
- **Standards Compliant** — Based on MIIT's Energy-Carbon Management Center guidelines, supports Green Factory declaration
- **Actively Maintained** — 60-day continuous update plan in progress, fast community response

## Core Features

### Highlights

![Highlights](images/亮点功能.png)

### Business Overview

![Business overview](images/全景图.png)

### Community Edition vs. Enhanced Edition

#### Community Edition (Open Source, Free)

| Feature | Description |
|---------|-------------|
| Home Dashboard | Real-time energy indicators and statistics |
| Real-time Monitoring | Real-time energy data and configuration diagrams |
| Historical Data Analysis | Historical point data and trend analysis |
| Comprehensive Analysis | Daily, monthly, and annual energy reports |
| Key Equipment Analysis | Equipment energy consumption monitoring |
| Process Energy Analysis | Production process energy distribution |
| Peak/Flat/Off-peak Analysis | Time-of-use electricity statistics |
| Energy Comparison | Year-over-year and month-over-month comparisons |
| Building Energy Analysis | Branch and sub-item building energy analysis |
| Intelligent Alarms | Anomaly detection and alarm management |
| Manual Data Entry | Supplement missing data records |
| Energy-saving Projects | Energy-saving retrofit project tracking |
| Knowledge Base | Energy management knowledge sharing |
| Equipment Records | Equipment information maintenance |
| Model Configuration | Calculation and business model configuration |
| Basic Data Management | Dictionary and energy type management |
| Permission Management | User, role, and permission management |

#### Enhanced Edition (Commercial License)

| Feature | Description |
|---------|-------------|
| Specific Energy Consumption | Product-specific energy consumption analysis |
| Plan vs. Actual | Energy plan execution tracking |
| Energy Assessment | Scientific energy performance assessment |
| Energy Benchmarking | Industry benchmark comparison |
| AC Energy Optimization | Air-conditioning system energy-saving strategies |
| Energy Balance Analysis | Energy supply and consumption balance |
| Energy Standardization | Standard and historical data benchmarking |
| Key Equipment Energy-saving | Equipment-specific energy-saving solutions |
| Carbon Management | Carbon accounting, pathway planning, emission factors |
| Source-Grid-Load-Storage | Microgrid energy coordination |
| Low-carbon Park | Park-level low-carbon development |
| Custom Reports | Flexible report configuration |
| Cost-Benefit Analysis | Energy cost composition and optimization |
| PV Operation Monitoring | Photovoltaic system status monitoring |
| Charging Operations | EV charging facility management |
| Industrial Benchmarking | Energy benchmarking based on industrial standards |
| Report Designer | Integrated report designer |
| Single Sign-On | SSO support |
| Multi-energy Support | Real-time multi-energy data compatibility |

> Enhanced features are provided as part of the commercial enterprise solution. Contact WeChat for commercial licensing (note: ems + your name).

### Green Factory Declaration Support

The system follows the five evaluation principles for green factories: **intensive land use, harmless raw materials, clean production, waste recycling, and low-carbon energy**. It mainly provides data support for the energy and carbon dimensions:

- **Online energy monitoring and accurate metering**: Real-time collection of water, electricity, gas, heat, PV, storage, and charging data
- **Carbon emissions management**: Carbon accounting, emission factor management, and carbon pathway planning
- **Energy management system implementation**: Comprehensive analysis, peak/off-peak analysis, energy performance assessment, and benchmarking
- **Renewable energy and source-grid-load-storage coordination**: PV operation monitoring, charging operations, and coordinated energy management
- **Visual reports and evidence retention**: Custom reports and report designers for declaration materials

> Note: Green factory declarations cover multiple dimensions. This project primarily covers low-carbon energy and carbon emissions management. Other dimensions should be supported by on-site management records. Always follow the latest requirements issued by the relevant authorities.

## Screenshots

### Login

![Login](images/1-登录页.png)

### Home Dashboard

<table>
  <tr>
    <td align="center"><b>Dark Theme</b></td>
    <td align="center"><b>Light Theme</b></td>
  </tr>
  <tr>
    <td><img src="images/2-2-首页-深色.png" alt="Home Dark"></td>
    <td><img src="images/2-1-首页-浅色.png" alt="Home Light"></td>
  </tr>
</table>

### Dashboard Panels

<table>
  <tr>
    <td align="center"><b>Cost Panel</b></td>
    <td align="center"><b>Storage Panel</b></td>
    <td align="center"><b>Alarm Panel</b></td>
  </tr>
  <tr>
    <td><img src="images/2-3-首页-成本看板.png" alt="Cost Panel"></td>
    <td><img src="images/2-4-首页-储能看板.png" alt="Storage Panel"></td>
    <td><img src="images/2-5-首页-告警看板.png" alt="Alarm Panel"></td>
  </tr>
</table>

### Real-time Monitoring

<table>
  <tr>
    <td align="center"><b>Dark Theme</b></td>
    <td align="center"><b>Light Theme</b></td>
  </tr>
  <tr>
    <td><img src="images/3-2-能源实时监测-深色.png" alt="Monitoring Dark"></td>
    <td><img src="images/3-1-能源实时监测-浅色.png" alt="Monitoring Light"></td>
  </tr>
</table>

### Regional Energy Analysis

<table>
  <tr>
    <td align="center"><b>Light Theme</b></td>
    <td align="center"><b>Dark Theme</b></td>
  </tr>
  <tr>
    <td><img src="images/5-1-区域能耗分析-浅色.png" alt="Regional Light"></td>
    <td><img src="images/5-2-区域能耗分析-深色.png" alt="Regional Dark"></td>
  </tr>
</table>

### Peak, Flat, and Off-peak Analysis

![Peak Flat Off-peak](images/4-1-峰平谷时段统计-浅色.png)

## Architecture

### System Components

The complete energy and carbon management platform consists of three core components:

1. **Energy and carbon management platform** (this project, excluding the data cleansing service): Provides the administration interface and API. For a customized version for small and medium-sized customers, see [zhitan-ems-mini](https://gitee.com/liulingling1993/zhitan-ems-mini).
2. **Data collection program**: The MQTT gateway collects field device data and stores it in a time-series database. See [MQTT collection gateway](https://gitee.com/liulingling1993/zhitan-gateway).
3. **Data cleansing service**: Periodically converts time-series data and stores it in a relational database for analysis. Learners can implement this service with a scheduling tool such as XXL-JOB according to their business needs.

### Business Architecture

![Business Architecture](images/业务架构.png)

### Technology Architecture

![Technology Architecture](images/技术架构-1.png)

### Project Structure

```text
zhitan-ems/
├── zhitan-api/                     # Backend (Maven multi-module)
│   ├── zhitan-admin/               # Main application module (entry point + controllers)
│   │   └── src/main/
│   │       ├── java/com/zhitan/web/  # Web controllers
│   │       ├── java/com/zhitan/AdminApplication.java  # Spring Boot entry
│   │       └── resources/            # Configuration (application.yml, mybatis, etc.)
│   ├── zhitan-common/              # Shared components and utilities
│   │   └── src/main/java/com/zhitan/common/
│   │       ├── annotation/         # Custom annotations
│   │       ├── config/             # Common configuration
│   │       ├── constant/           # Constants
│   │       ├── core/               # Core components (controllers, domain models)
│   │       ├── enums/              # Enum types
│   │       ├── exception/          # Exception handling
│   │       ├── filter/             # Filters (XSS, replay, etc.)
│   │       ├── utils/              # Utility classes
│   │       └── xss/                # XSS protection
│   ├── zhitan-framework/           # Framework components
│   │   └── src/main/java/com/zhitan/framework/
│   │       ├── aspectj/            # AOP components
│   │       ├── config/             # Configuration classes
│   │       ├── datasource/         # Data source management
│   │       ├── interceptor/        # Interceptors
│   │       ├── manager/            # Management components
│   │       ├── mqtt/               # MQTT messaging support
│   │       ├── security/           # Security components
│   │       ├── sms/                # SMS functionality
│   │       └── web/                # Web-related components
│   ├── zhitan-generator/           # Code generator module
│   ├── zhitan-quartz/              # Scheduled task module
│   ├── zhitan-system/              # Business module (31 sub-modules)
│   ├── bin/                        # Batch scripts (clean/package/run)
│   ├── sql/                        # Database initialization scripts
│   │   └── public-v3.sql           # PostgreSQL init SQL
│   ├── pom.xml                     # Parent POM
│   └── Dockerfile                  # Backend image build
├── zhitan-web/                     # Frontend (Vue3 + Vite)
│   ├── src/                        # Frontend source
│   │   ├── api/                    # API client
│   │   ├── assets/                 # Static assets
│   │   ├── components/             # Vue components
│   │   ├── directive/              # Vue directives
│   │   ├── layout/                 # Layout components
│   │   ├── plugins/                 # Plugins
│   │   ├── router/                 # Routing
│   │   ├── store/                  # Pinia state management
│   │   ├── utils/                  # Frontend utilities
│   │   ├── views/                  # View components
│   │   ├── App.vue                 # Root component
│   │   ├── main.js                 # Entry file
│   │   ├── permission.js           # Permission control
│   │   └── settings.js             # App settings
│   ├── vite/plugins/               # Vite plugins
│   ├── index.html                  # Main HTML
│   ├── package.json                 # Node.js dependencies
│   ├── nginx.conf                   # Nginx configuration
│   ├── vite.config.js               # Vite configuration
│   └── Dockerfile                   # Frontend image build
├── docs/                           # Project documentation
│   └── UPDATE_PLAN.md               # Continuous update plan
├── images/                         # README image assets
├── .env.file                       # Environment variable template
├── docker-compose.yml              # Docker Compose deployment
├── docker.md                       # Docker deployment guide
├── README.md                       # Chinese documentation
├── README_EN.md                    # English documentation
└── LICENSE                         # License
```

## Technology Stack

### Backend

| Technology | Version | Description |
|------------|---------|-------------|
| Spring Boot | 2.5.15 | Core framework (based on RuoYi) |
| Java | 1.8 | Programming language |
| PostgreSQL | 14+ | Primary database (MySQL requires adaptation) |
| InfluxDB | 2.7+ | Time-series database |
| Redis | 6.2+ | Cache |
| Quartz | - | Task scheduling |
| Spring Security | - | Security framework |
| MQTT | - | Messaging |
| MyBatis-Plus | 3.5.6 | ORM framework |
| Druid | 1.2.20 | Connection pool |
| Swagger | 3.0.0 | API documentation |
| Undertow | - | Web server |
| JWT | 0.9.1 | Token authentication |

### Frontend

| Technology | Version | Description |
|------------|---------|-------------|
| Vue | 3.3.9 | Frontend framework |
| Element Plus | 2.4.3 | UI component library |
| Vite | 5.0.4 | Build tool |
| Pinia | 2.1.7 | State management |
| Vue Router | 4.2.5 | Routing |
| ECharts | 5.4.3 | Charts library |
| Axios | 0.27.2 | HTTP client |

## Quick Deployment

### Requirements

| Component | Version | Description |
|-----------|---------|-------------|
| Docker | 20.10+ | Container runtime |
| Docker Compose | 2.0+ | Container orchestration |
| Browser | Chrome 90+ / Edge 90+ / Firefox 90+ | Frontend runtime |

### One-Click Deployment (Recommended)

#### 1. Clone the Repository

```bash
git clone https://gitee.com/liulingling1993/zhitan-ems.git
cd zhitan-ems
```

#### 2. Configure Environment Variables

Copy `.env.file` and modify for your environment:

```bash
cp .env.file .env
```

Key configuration (see `.env.file` for full details):

```ini
# Database
DB_URL=jdbc:postgresql://postgres:5432/zhitan_ems
DB_USERNAME=postgres
DB_PASSWORD=postgres

# Redis
REDIS_HOST=redis
REDIS_PORT=6379

# InfluxDB
RTDB_HOST=http://influxdb:8086
RTDB_TOKEN=your-influxdb-token
RTDB_ORG=org
RTDB_BUCKET=bucket

# MQTT
MQTT_HOST=tcp://broker.emqx.io:1883
```

#### 3. Start Services

```bash
docker-compose up -d
```

Wait for all services to start, then access `http://your-ip`.

#### 4. Initialize Database (First-time Only)

```bash
docker exec -i postgres psql -U postgres -d zhitan_ems < zhitan-api/sql/public-v3.sql
```

### Manual Deployment

For manual component-by-component deployment, see the [Docker Deployment Guide](docker.md).

Official images:

- API image: [zhitancorp/zhitan-api](https://hub.docker.com/r/zhitancorp/zhitan-api)
- Web image: [zhitancorp/zhitan-web](https://hub.docker.com/r/zhitancorp/zhitan-web)

<details>
<summary>📖 Click to expand manual deployment steps</summary>

#### 1. PostgreSQL

```bash
docker pull docker.1ms.run/library/postgres:14-alpine
docker tag docker.1ms.run/library/postgres:14-alpine postgres:14-alpine

docker run -d \
  --name postgres \
  --restart always \
  -p 5432:5432 \
  -v /var/lib/postgresql/data:/var/lib/postgresql/data \
  -e POSTGRES_DB=zhitan_ems \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e TZ=Asia/Shanghai \
  postgres:14-alpine
```

Initialize the database with `zhitan-api/sql/public-v3.sql`.

#### 2. Redis

```bash
docker pull docker.1ms.run/library/redis:6.2.21
docker tag docker.1ms.run/library/redis:6.2.21 redis:6.2.21

docker run -d \
  --name redis \
  --restart always \
  -p 6379:6379 \
  redis:6.2.21 \
  redis-server --appendonly yes
```

#### 3. MQTT

A free public MQTT service can be used for testing. See [EMQX Public MQTT 5 Broker](https://www.emqx.com/zh/mqtt/public-mqtt5-broker).

```text
Broker: broker.emqx.io
TCP port: 1883
WebSocket port: 8083
SSL/TLS port: 8883
```

#### 4. InfluxDB

```bash
docker pull docker.1ms.run/library/influxdb:latest
docker tag docker.1ms.run/library/influxdb:latest influxdb:latest

docker run -d \
  --name influxdb \
  --restart always \
  -p 8086:8086 \
  -v /path/to/your/data:/var/lib/influxdb \
  influxdb:latest
```

Open `http://<influxdb-host>:8086` to initialize. Keep the organization, bucket, and access token.

#### 5. Backend API

Copy `.env.file` and configure, then:

```bash
docker pull docker.1ms.run/zhitancorp/zhitan-api:latest
docker tag docker.1ms.run/zhitancorp/zhitan-api:latest zhitancorp/zhitan-api:latest

docker run -d -p 8080:8080 \
  --name zhitan-api \
  --restart=always \
  --env-file .env.file \
  zhitancorp/zhitan-api:latest
```

#### 6. Web Platform

```bash
docker pull docker.1ms.run/zhitancorp/zhitan-web:latest
docker tag docker.1ms.run/zhitancorp/zhitan-web:latest zhitancorp/zhitan-web:latest

docker run -d \
  --name zhitan-web \
  -p 80:80 \
  -e API_BASE_URL=/prod-api \
  -e BACKEND_URL=http://your-ip:8080 \
  -e APP_TITLE=Zhitan Energy Management System \
  -e APP_ENV=production \
  --restart=always \
  zhitancorp/zhitan-web:latest
```

</details>

### Access the System

Open the IP address and port of the web service. Default test account:

```text
Username: admin
Password: 123456
```

## Documentation

| Document | Link | Description |
|----------|------|-------------|
| GitHub Wiki | [zhitan-ems Wiki](https://github.com/zhitancloud/zhitan-ems/wiki) | Development docs and user manual |
| Gitee Wiki | [zhitan-ems Wiki](https://gitee.com/liulingling1993/zhitan-ems/wikis/) | Same (Gitee mirror) |
| API Docs | `http://localhost:8080/swagger-ui/index.html` | Available after local deployment |
| Update Plan | [60-Day Update Plan](docs/UPDATE_PLAN.md) | Unit tests + documentation plan |

## License

This project is dual-licensed under [AGPL](https://www.gnu.org/licenses/agpl-3.0.en.html) + [ZTPL](LICENSE):

- **Personal / Research / Education** → AGPL license, free to use, modifications must be open-sourced
- **Commercial closed-source / SaaS / internal use / proprietary integration** → ZTPL commercial license required

> Students and teachers can contact us for free training and guidance (remote).  
> For commercial licensing, contact WeChat (note: ems + your name).

## Community

We welcome your participation and feedback!

### QQ Group

For technical learning and questions, join QQ group: **1037733518** (note: ems + your name)

<p align="center">
  <img src="images/qq_1037733518.png" width=30% height=30%>
</p>

### WeChat

For commercial licensing and training, contact WeChat (note: ems + your name)

<p align="center">
  <img src="images/image-yc.png" width=30% height=30%>
</p>

## Contributing

We welcome contributions of all kinds!

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/AmazingFeature`
3. Commit your changes: `git commit -m "Add some AmazingFeature"`
4. Push the branch: `git push origin feature/AmazingFeature`
5. Open a Pull Request.

### Development Guidelines

- Follow the existing project style.
- Add appropriate tests, comments, and documentation.
- Ensure all tests pass before submitting a change.

### Reporting Issues

Please open an issue with a detailed description and reproducible steps when you find a problem.

---

<p align="center"><strong>© 2026 Zhitan Future - Lower the Earth's temperature by 1°C</strong></p>
