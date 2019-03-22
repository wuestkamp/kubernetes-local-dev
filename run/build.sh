#!/usr/bin/env bash

CONTAINER_REPO="localhost:5000"

docker build -t $CONTAINER_REPO/wuestkamp_php:latest -f infrastructure/php-fpm/Dockerfile --build-arg build_path=infrastructure/php-fpm . #--no-cache
docker build -t $CONTAINER_REPO/wuestkamp_nginx:latest -f infrastructure/nginx/Dockerfile --build-arg build_path=infrastructure/nginx . #--no-cache

docker push $CONTAINER_REPO/wuestkamp_php:latest
docker push $CONTAINER_REPO/wuestkamp_nginx:latest
