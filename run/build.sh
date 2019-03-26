#!/usr/bin/env bash

CONTAINER_REPO="localhost:5000"
CONTAINER_PHP=$CONTAINER_REPO/wuestkamp_php
CONTAINER_NGINX=$CONTAINER_REPO/wuestkamp_nginx

yarn --cwd symfony install
yarn --cwd symfony encore dev

docker build -t $CONTAINER_PHP:latest -f infrastructure/php-fpm/Dockerfile --build-arg build_path=infrastructure/php-fpm . #--no-cache
docker build -t $CONTAINER_NGINX:latest -f infrastructure/nginx/Dockerfile --build-arg build_path=infrastructure/nginx . #--no-cache

docker push $CONTAINER_PHP:latest
docker push $CONTAINER_NGINX:latest
