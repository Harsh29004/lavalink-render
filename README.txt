# Render Lavalink — setup guide

## What's in this folder
- `Lavalink.jar`  — Lavalink 4.0.8
- `application.yml` — config (port from $PORT, youtube plugin + Lavasrc, password: vision)
- `Dockerfile`     — builds the image on Render
- `render.yaml`     — optional: Render Blueprint
- `plugins/`        — youtube-plugin 1.18.2 + lavasrc-plugin 4.8.3
- `prepare.sh`      — re-download jars (if you need to refresh)

## Deploy on Render
1. Go to https://render.com → New → **Web Service**
2. Connect your Git repo, or use the **Docker** option with this folder as root (or upload this folder to a GitHub repo).
3. Render will use `Dockerfile` automatically.
4. Plan: **Free** is fine (spins down after 15 min idle; first request after idle takes ~1 min).
5. Deploy. When done, Render gives URL like:
   `https://vision-lavalink.onrender.com`
6. Health check: set path to `/metrics` (or leave empty — service runs without it).

## Important: bot .env values (fill after Render URL is ready)
```
LAVALINK_HOST=vision-lavalink.onrender.com
LAVALINK_PORT=443
LAVALINK_PASSWORD=vision
LAVALINK_SECURE=true
```
(secure=true because Render serves HTTPS/wss.)

## Verify
From anywhere:
```
curl -s -H "Authorization: vision" https://vision-lavalink.onrender.com/v4/info
```
Should return JSON with "4.0.8".

Bot's websocket will use: wss://vision-lavalink.onrender.com/v4/websocket
