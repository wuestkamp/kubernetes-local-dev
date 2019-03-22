#!/usr/bin/env bash

K8N_PATH="infrastructure/kubernetes"

kubectl delete -f $K8N_PATH/nginx-claim0-persistentvolumeclaim.yaml
kubectl create -f $K8N_PATH/nginx-php0-persistentvolumeclaim.yaml
kubectl delete -f $K8N_PATH/nginx-deployment.yaml
kubectl delete -f $K8N_PATH/nginx-service.yaml
kubectl delete -f $K8N_PATH/php-deployment.yaml
kubectl delete -f $K8N_PATH/php-service.yaml
