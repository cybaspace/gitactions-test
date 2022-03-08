FROM openjdk:8-jdk
EXPOSE 80/tcp
RUN mkdir /app
COPY *-all.jar /app/ktor-app.jar

RUN addgroup --gid 1001 appuser
RUN adduser --uid 1001 --gid 1001 --disabled-password --no-create-home --gecos GECOS appuser
RUN chown appuser:appuser /app/*

CMD ["java","-jar","/app/ktor-app.jar"]

USER appuser