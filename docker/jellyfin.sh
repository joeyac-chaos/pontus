#!/bin/bash
# https://github.com/nyanmisaka/docker-jellyfin
# https://hub.docker.com/r/nyanmisaka/jellyfin/tags
# https://www.chiphell.com/thread-2375777-16-1.html
# sudo mount -t nfs 192.168.50.48:/mnt/data00/public/media /mnt/media

docker run -d \
  --name=jellyfin \
  -e TZ=Asia/Shanghai \
  -p 8096:8096 \
  -p 8920:8920 `#optional` \
  -p 7359:7359/udp `#optional` \
  -p 1900:1900/udp `#optional` \
  -v /mnt/media/jellyfin/config2:/config \
  -v /mnt/media/tv:/media/tv \
  -v /mnt/media/movie:/media/movie \
  --restart unless-stopped \
  --privileged \
  nyanmisaka/jellyfin:latest

# docker run -it -e PUID=1000 -e PGID=1000 -v /mnt/media/jellyfin/config2:/config --privileged ubuntu bash