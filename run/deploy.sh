#!/usr/bin/env bash

K8N_PATH="infrastructure/kubernetes"

kubectl apply -f $K8N_PATH/nginx-deployment.yaml
kubectl apply -f $K8N_PATH/php-deployment.yaml