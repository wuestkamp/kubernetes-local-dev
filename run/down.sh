#!/usr/bin/env bash

K8N_PATH="infrastructure/kubernetes"

#kubectl delete -f $K8N_PATH/nginx-deployment.yaml
#kubectl delete -f $K8N_PATH/nginx-service.yaml
#kubectl delete -f $K8N_PATH/php-deployment.yaml
#kubectl delete -f $K8N_PATH/php-service.yaml
#kubectl delete -f $K8N_PATH/nginx-claim0-persistentvolumeclaim.yaml
#kubectl delete -f $K8N_PATH/php-claim0-persistentvolumeclaim.yaml
#kubectl delete -f $K8N_PATH/php-claim1-persistentvolumeclaim.yaml

kubectl delete -f $K8N_PATH/sf-deployment.yaml
kubectl delete -f $K8N_PATH/sf-service.yaml
