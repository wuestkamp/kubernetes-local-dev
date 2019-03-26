#!/usr/bin/env bash

K8N_PATH="infrastructure/kubernetes"

kubectl delete -f $K8N_PATH/sf-deployment.yaml
kubectl delete -f $K8N_PATH/sf-service.yaml