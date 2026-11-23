FROM eclipse-temurin:17-jre

WORKDIR /app

COPY Lavalink.jar .
COPY application.yml .
COPY plugins/ plugins/

EXPOSE 2333

ENV PORT=2333

CMD ["sh", "-c", "java -Xms128M -Xmx512M -jar Lavalink.jar --spring.config.location=file:/app/application.yml --server.port=$PORT --server.address=0.0.0.0"]
