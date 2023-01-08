#!/bin/bash
# https://github.com/ChineseSubFinder/ChineseSubFinder/blob/master/docker/readme.md
docker run -d \
    -v /mnt/media/chinese_sub_finder/config:/config \
    -v /mnt/media/tv:/media/tv \
    -v /mnt/media/movie:/media/movie \
    -v /mnt/media/chinese_sub_finder/browser:/root/.cache/rod/browser  \
    -e PERMS=true \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 19035:19035 \
    -p 19037:19037 \
    --name chinesesubfinder \
    --hostname chinesesubfinder \
    --log-driver "json-file" \
    --log-opt "max-size=100m" \
    allanpk716/chinesesubfinder