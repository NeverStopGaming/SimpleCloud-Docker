FROM debian:buster-slim AS downloader

RUN apt-get update && apt-get install -y wget unzip

ENV CONTAINER_NAME SimpleCloud
WORKDIR /app

RUN wget -O simplecloud.zip https://github.com/theSimpleCloud/SimpleCloud/releases/download/v2.7.1/SimpleCloud-v2.7.1.zip \
    && unzip simplecloud.zip \
    && rm simplecloud.zip

FROM amazoncorretto:17

CMD ["java", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=50", "-XX:CompileThreshold=100", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCompressedOops", "-Dfile.encoding=UTF-8", "-Xmx1024M", "-Xms256m", "-jar", "runner.jar", "--start-application=MANAGER"]

EXPOSE 25565
EXPOSE 8585