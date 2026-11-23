FROM ghcr.io/lavalink-devs/lavalink:4-alpine

ENV _JAVA_OPTIONS="-Xms128M -Xmx300M"

COPY application.yml /opt/Lavalink/application.yml
  