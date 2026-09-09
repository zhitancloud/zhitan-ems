FROM maven:3.9.11-eclipse-temurin-8 AS builder

WORKDIR /build
COPY . .
RUN mvn clean package -DskipTests -q

FROM eclipse-temurin:8-jre

WORKDIR /app

COPY --from=builder /build/target/zhitan-gateway.jar app.jar

EXPOSE 8081

ENV SPRING_PROFILES_ACTIVE=prod

ENTRYPOINT ["sh", "-c", "exec java ${JAVA_OPTS:--Xms256m -Xmx512m -XX:+UseG1GC} -Djava.security.egd=file:/dev/./urandom -jar app.jar"]
