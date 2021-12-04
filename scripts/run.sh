#!/bin/sh

set -e # Any command which returns non-zero exit code will cause this shell script to exit immediately

docker run \
    --name advent_2021 \
    -p 8080:8080 \
    --env-file $(pwd)/.env \
    -v $(pwd)/src:/data \
    --pull always \
    -it --rm livebook/livebook
