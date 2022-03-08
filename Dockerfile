FROM openjdk:8-jdk
EXPOSE 80/tcp
RUN mkdir /app
COPY *-all.jar /app/ktor-app.jar
CMD ["java","-jar","/app/ktor-app.jar"]