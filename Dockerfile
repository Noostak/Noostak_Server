FROM amazoncorretto:21-alpine-jdk
WORKDIR /app
COPY build/libs/noostak-0.0.1-SNAPSHOT.jar /app/noostak.jar
CMD ["java", "-Duser.timezone=Asia/Seoul", "-jar", "-Dspring.profiles.active=prod", "noostak.jar"]
