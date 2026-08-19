<div align="center">
    <img src="images/logo-chinese.png" alt="Zhitan Energy Management System Logo" height="150" width="150">
</div>
<p align="center">English | <a href="README.md">中文</a></p>
<h1 align="center">Zhitan Energy Carbon Management System</h1>
<h3 align="center">Zhitan EMS</h3>

<p align="center">An enterprise energy management solution based on Spring Boot and the RuoYi framework.</p>

<p align="center">
    <a href="https://gitee.com/liulingling1993/zhitan-ems/stargazers"><img src="https://gitee.com/liulingling1993/zhitan-ems/badge/star.svg?theme=dark" alt="Stars"></a>
    <a href="https://gitee.com/liulingling1993/zhitan-ems/members"><img src="https://gitee.com/liulingling1993/zhitan-ems/badge/fork.svg?theme=dark" alt="Forks"></a>
    <a href="#"><img src="https://img.shields.io/badge/Version-v3.0-blue.svg" alt="Version"></a>
</p>

## Online Demo

Demo: [https://demo-ems.zhitancloud.com/](https://demo-ems.zhitancloud.com/)

## Overview

Zhitan EMS is an integrated energy management solution for governments, industrial parks, and enterprises. It supports the collection and analysis of electricity, water, gas, heat, carbon, photovoltaic, energy storage, and charging data.

The system helps organizations establish a complete energy management system, achieve accurate metering, refined control, intelligent decision-making, and visual reporting, and continuously improve energy efficiency and carbon management. It supports the full lifecycle of carbon tracking, carbon accounting, carbon trading, and carbon reporting, helping organizations contribute to China's carbon peak and carbon neutrality goals.

## Green Factory Declaration Support

The system follows the five evaluation principles for green factories: **intensive land use, harmless raw materials, clean production, waste recycling, and low-carbon energy**. It mainly provides data support for the energy and carbon dimensions of a green factory declaration:

- **Online energy monitoring and accurate metering**: Collects water, electricity, gas, heat, photovoltaic, storage, and charging data in real time with traceable and auditable measurements.
- **Carbon emissions management**: Supports carbon accounting, emission factor management, and carbon pathway planning.
- **Energy management system implementation**: Provides comprehensive indicator analysis, peak/off-peak analysis, specific energy consumption analysis, energy performance assessment, and benchmarking.
- **Renewable energy and source-grid-load-storage coordination**: Supports photovoltaic operation monitoring, charging operations, and coordinated energy management.
- **Visual reports and evidence retention**: Custom reports and report designers help generate charts and ledgers required for declaration materials.

> Note: Green factory declarations cover multiple dimensions. This project primarily covers low-carbon energy and carbon emissions management. Other dimensions should be supported by on-site management records. Always follow the latest requirements issued by the relevant authorities.

## Highlights

![Highlights](images/亮点功能.png)

## Core Features

### Business Overview

![Business overview](images/全景图.png)

### Community Edition vs. Enhanced Edition

| Community Edition | Enhanced Edition |
|---|---|
| Home dashboard with real-time energy indicators | Specific energy consumption analysis |
| Real-time energy monitoring and configuration diagrams | Energy plan versus actual consumption |
| Historical point data analysis | Energy performance assessment |
| Daily, monthly, and annual comprehensive analysis | Energy benchmarking |
| Key equipment analysis | Air-conditioning energy optimization |
| Process energy consumption analysis | Energy balance analysis |
| Peak, flat, and off-peak analysis | Key equipment energy-saving solutions |
| Year-over-year and month-over-month comparisons | Carbon management system |
| Building energy consumption analysis | Source-grid-load-storage coordination |
| Intelligent alarms | Low-carbon industrial park solutions |
| Manual data entry | Custom reports |
| Energy-saving project management | Cost-benefit analysis |
| Energy management knowledge base | Photovoltaic operation monitoring |
| Equipment records | Charging operations management |
| Model configuration | Industrial energy benchmarking |
| Basic data management | Report designer integration |
| User, role, and permission management | Single sign-on |
|  | Multi-energy real-time data support |

> Enhanced features are provided as part of the commercial enterprise solution.

## Screenshots

### Login

![Login](images/1-登录页.png)

### Home Dashboard - Dark Theme

![Home dashboard dark](images/2-2-首页-深色.png)

### Home Dashboard - Light Theme

![Home dashboard light](images/2-1-首页-浅色.png)

### Real-time Monitoring - Dark Theme

![Real-time monitoring dark](images/3-2-能源实时监测-深色.png)

### Real-time Monitoring - Light Theme

![Real-time monitoring light](images/3-1-能源实时监测-浅色.png)

### Regional Energy Analysis

![Regional energy analysis](images/5-1-区域能耗分析-浅色.png)

### Peak, Flat, and Off-peak Analysis

![Peak, flat, and off-peak analysis](images/4-1-峰平谷时段统计-浅色.png)

## Architecture

### System Components

The complete energy and carbon management platform consists of three core components:

1. **Energy and carbon management platform** (this project, excluding the data cleansing service): Provides the administration interface and API. For a customized version for small and medium-sized customers, see [zhitan-ems-mini](https://gitee.com/liulingling1993/zhitan-ems-mini).
2. **Data collection program**: The MQTT gateway collects field device data and stores it in a time-series database. See [MQTT collection gateway](https://gitee.com/liulingling1993/zhitan-gateway).
3. **Data cleansing service**: Periodically converts time-series data and stores it in a relational database for analysis. Learners can implement this service with a scheduling tool such as XXL-JOB according to their business needs.

### Project Structure

```text
zhitan-ems/
├── bin/                          # Batch scripts
│   ├── clean.bat                 # Clean script
│   ├── package.bat               # Packaging script
│   └── run.bat                   # Run script
├── zhitan-admin/                 # Main application module
│   └── src/main/                 # Java source and resources
├── zhitan-common/                # Shared components and utilities
├── zhitan-framework/             # Framework components
├── zhitan-generator/             # Code generator module
├── zhitan-quartz/                # Scheduled task module
├── zhitan-system/                # System management module
└── zhitan-web/                   # Vue frontend application
    ├── html/                     # HTML files
    ├── src/                      # Frontend source code
    ├── vite/plugins/             # Vite plugins
    ├── index.html                # Main HTML file
    ├── package.json              # Node.js dependencies
    └── vite.config.js            # Vite configuration
```

## Technology Stack

### Backend

- Core framework: Spring Boot and RuoYi Framework
- Database: PostgreSQL (recommended), MySQL (requires adaptation)
- Time-series database: InfluxDB 2.7+
- Cache: Redis
- Scheduling: Quartz
- Messaging: MQTT
- Security: Spring Security
- API documentation: Swagger

### Frontend

- Main framework: Vue 3 and Element Plus
- Build tool: Vite
- State management: Vuex
- Routing: Vue Router
- Charts: ECharts
- UI themes: Dark and light themes

## Quick Deployment

The project supports containerized deployment. Deploy the services in the following order.

Official images:

- API image: [zhitancorp/zhitan-api](https://hub.docker.com/r/zhitancorp/zhitan-api)
- Web image: [zhitancorp/zhitan-web](https://hub.docker.com/r/zhitancorp/zhitan-web)

### 1. PostgreSQL

Pull and start PostgreSQL:

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

### 2. Redis

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

### 3. MQTT

A free public MQTT service can be used for testing. See [EMQX Public MQTT 5 Broker](https://www.emqx.com/zh/mqtt/public-mqtt5-broker).

```text
Broker: broker.emqx.io
TCP port: 1883
WebSocket port: 8083
SSL/TLS port: 8883
Secure WebSocket port: 8084
QUIC port: 14567
```

### 4. InfluxDB

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

Open `http://<influxdb-host>:8086` to initialize InfluxDB. Keep the organization, bucket, and generated access token for the application configuration.

### 5. Backend API

Copy the root `.env.file` and set its values for your environment. The API container can then be started with:

```bash
docker pull docker.1ms.run/zhitancorp/zhitan-api:latest
docker tag docker.1ms.run/zhitancorp/zhitan-api:latest zhitancorp/zhitan-api:latest

docker run -d -p 8080:8080 \
  --name zhitan-api \
  --restart=always \
  --env-file .env.file \
  zhitancorp/zhitan-api:latest
```

### 6. Web Administration Platform

Set `BACKEND_URL` to the address of your API service:

```bash
docker pull docker.1ms.run/zhitancorp/zhitan-web:latest
docker tag docker.1ms.run/zhitancorp/zhitan-web:latest zhitancorp/zhitan-web:latest

docker run -d \
  --name zhitan-web \
  -p 80:80 \
  -e API_BASE_URL=/prod-api \
  -e BACKEND_URL=http://192.168.0.40:8080 \
  -e APP_TITLE=Zhitan Energy Carbon Management System \
  -e APP_ENV=production \
  -e APP_SYSTEM=Zhitan Energy Carbon Management System Web \
  --restart=always \
  zhitancorp/zhitan-web:latest
```

### 7. Access the Web Platform

Open the IP address and port of the web service. The default test account is:

```text
Username: admin
Password: 123456
```

## Documentation

- GitHub Wiki: [https://github.com/zhitancloud/zhitan-ems/wiki](https://github.com/zhitancloud/zhitan-ems/wiki)
- Gitee Wiki: [https://gitee.com/liulingling1993/zhitan-ems/wikis/](https://gitee.com/liulingling1993/zhitan-ems/wikis/)
- API documentation: `http://localhost:8080/swagger-ui/index.html` after local deployment

## License

Zhitan EMS is open source under the dual [AGPL](https://www.gnu.org/licenses/agpl-3.0.en.html) and [ZTPL](LICENSE) licenses. Read and understand the applicable license terms before using, modifying, copying, or distributing the project.

Use of the AGPL license is intended for personal, research, educational, non-commercial, or open-source derivative projects. A ZTPL license is required for commercial closed-source modifications, internal systems, SaaS products, paid services, or proprietary integrations.

For commercial licensing, contact Qingdao Zhitan Future Technology Co., Ltd. through the official WeChat or QQ channels to obtain authorization and technical support.

## Copyright Notice

The original copyright and intellectual property rights for this project, including source code, documentation, images, configuration, and other materials, belong to [Qingdao Zhitan Future Technology Co., Ltd.]. The company retains all rights to the project name, brand, logo, patents, and commercial licensing. Do not use project-related names or marks for commercial promotion without explicit authorization.

## Community

- QQ group for learning and technical questions: `1037733518` (include `ems + your name` when joining)
- For commercial licensing and training, contact the official WeChat account and include `ems + your name`.

## Contributing

We welcome contributions of all kinds.

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

<p align="center"><strong>Copyright 2026 Zhitan Future - Lower the Earth's temperature by 1 degree</strong></p>
