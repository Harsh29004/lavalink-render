FROM eclipse-temurin:17-jre

WORKDIR /app

ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar Lavalink.jar

COPY application.yml .

EXPOSE 2333

CMD ["java", "-Xms128M", "-Xmx400M", "-jar", "Lavalink.jar"]
