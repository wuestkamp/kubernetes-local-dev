#!/usr/bin/env bash
kubectl create secret tls nginxsecret --key infrastructure/certs/nginx/server.key --cert infrastructure/certs/nginx/server.csr
kubectl create configmap php-xdebug-config --from-file infrastructure/php-fpm/xdebug.ini

if [ "$1" == "prod" ]; then
    helm install --name sf infrastructure/helm/sf --set environment=${1:-dev} --set php.symfony.appEnv=${1:-dev} --set php.xdebug=false
else
    helm install --name sf infrastructure/helm/sf --set environment=${1:-dev} --set php.symfony.appEnv=${1:-dev}
fi