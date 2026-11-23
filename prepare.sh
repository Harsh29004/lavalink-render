#!/usr/bin/env bash
# Downloads the exact jars needed for Render Lavalink (run once, on your PC or Render shell)
set -e
mkdir -p plugins
curl -fL -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar
curl -fL -o plugins/youtube-plugin-1.18.2.jar https://github.com/lavalink-devs/youtube-source/releases/download/1.18.2/youtube-plugin-1.18.2.jar
curl -fL -o plugins/lavasrc-plugin-4.8.3.jar https://github.com/topi314/LavaSrc/releases/download/4.8.3/lavasrc-plugin-4.8.3.jar
ls -la Lavalink.jar plugins/
echo "OK - jars ready"
