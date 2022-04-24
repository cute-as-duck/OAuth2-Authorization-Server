FROM gradle:jdk17-alpine AS builder
WORKDIR /workspace
COPY gradle gradle
COPY gradlew .
COPY build.gradle .
COPY src src
RUN ./gradlew bootJar

WORKDIR /workspace/dependency
RUN java -Djarmode=layertools -jar /workspace/build/libs/*.jar extract

FROM openjdk:17-alpine
VOLUME /tmp
ARG DEPENDENCY=/workspace/dependency
COPY --from=builder ${DEPENDENCY}/dependencies/ ./
COPY --from=builder ${DEPENDENCY}/spring-boot-loader/ ./
COPY --from=builder ${DEPENDENCY}/snapshot-dependencies/ ./
COPY --from=builder ${DEPENDENCY}/application/ ./
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]
