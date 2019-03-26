#!/usr/bin/env bash

K8N_PATH="infrastructure/kubernetes"

kubectl create -f $K8N_PATH/sf-deployment.yaml
kubectl create -f $K8N_PATH/sf-service.yaml