#!/usr/bin/env bash

#gcloud container clusters get-credentials wuestkamp-cluster --zone=europe-west4-a
#gcloud container clusters get-credentials wuestkamp-test-cluster --zone=europe-west4-a

#kubectl create secret tls nginxsecret --key infrastructure/certs/wuestkamp.com/privkey.pem --cert infrastructure/certs/wuestkamp.com/cert.pem
#kubectl create secret generic sf-env --from-literal=APP_ENV=prod --from-literal=APP_SECRET=a6306a3a898ee7ad9ee6cb7a8d6d3b07

# IF LOCAL
#maybe add permissions to local cluster to pull GCR
# maybe run local registry
#docker run -d -p 5000:5000 --name registry registry:latest


K8N_PATH="infrastructure/kubernetes"

kubectl create -f $K8N_PATH/php-claim0-persistentvolumeclaim.yaml
kubectl create -f $K8N_PATH/php-deployment.yaml
sleep 2
kubectl create -f $K8N_PATH/php-service.yaml
sleep 2

kubectl create -f $K8N_PATH/nginx-claim0-persistentvolumeclaim.yaml
sleep 2
kubectl create -f $K8N_PATH/nginx-deployment.yaml
sleep 2
kubectl create -f $K8N_PATH/nginx-service.yaml
