#!/usr/bin/env bash

K8N_PATH="infrastructure/kubernetes"

kubectl create -f $K8N_PATH/php-claim0-persistentvolumeclaim.yaml
kubectl create -f $K8N_PATH/php-claim1-persistentvolumeclaim.yaml
sleep 1
kubectl create -f $K8N_PATH/php-deployment.yaml
sleep 1
kubectl create -f $K8N_PATH/php-service.yaml
sleep 1

kubectl create -f $K8N_PATH/nginx-claim0-persistentvolumeclaim.yaml
sleep 1
kubectl create -f $K8N_PATH/nginx-deployment.yaml
sleep 1
kubectl create -f $K8N_PATH/nginx-service.yaml
