#!/usr/bin/env bash


#CONTAINER_REPO="eu.gcr.io/wuestkamp-221618"
CONTAINER_REPO="localhost:5000"

docker build -t $CONTAINER_REPO/wuestkamp_php:latest -f infrastructure/php-fpm/Dockerfile --build-arg build_path=infrastructure/php-fpm . --no-cache
docker build -t $CONTAINER_REPO/wuestkamp_nginx:latest -f infrastructure/nginx/Dockerfile --build-arg build_path=infrastructure/nginx . #--no-cache

#gcloud auth print-access-token | docker login -u oauth2accesstoken --password-stdin https://eu.gcr.i
docker push $CONTAINER_REPO/wuestkamp_php:latest
docker push $CONTAINER_REPO/wuestkamp_nginx:latest
