FROM openjdk:jdk-8
EXPOSE 80/tcp
RUN mkdir /app
COPY *-all.jar /app/ktor-app.jar
CMD ["java","-jar","/app/ktor-app.jar"]