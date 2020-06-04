FROM gradle:5.6-jdk11 as build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

#FROM adoptopenjdk/openjdk11:latest as build
#COPY . /home/gradle/src
#WORKDIR /home/gradle/src
#RUN ./gradlew build --no-daemon

FROM adoptopenjdk/openjdk11:jre as runtime
EXPOSE 8080
EXPOSE 8081
VOLUME /tmp
#ARG JAR_FILE=build/libs/dockerboot-demo-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} app.jar
RUN mkdir /app
COPY --from=build /home/gradle/src/build/libs/*.jar /app/app.jar
WORKDIR /app

#ENTRYPOINT ["java", "-XshowSettings:vm", "-version", "-XX:MaxRAMPercentage=80","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
ENTRYPOINT ["java", "-XX:MaxRAMPercentage=80","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]

#FROM adoptopenjdk/openjdk11:latest
#MAINTAINER Francisco Pérez <fsistemas@gmail.com>
#VOLUME /tmp
#ARG DEPENDENCY=build/dependency
#COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY ${DEPENDENCY}/META-INF /app/META-INF
#COPY ${DEPENDENCY}/BOOT-INF/classes /app
#ENTRYPOINT ["java","-cp","app:app/lib/*","com.fsistemas.dockerbootdemo.DockerbootDemoApplication"]
