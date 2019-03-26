Kim Wüstkamp
www.wuestkamp.com

# Kubernetes Symfony Local Development Environment
This repo was created alongside the articles on https://medium.com/@wuestkamp

## Part 1
checkout branch part1

We have two containers (nginx and php) running on the same pod. The assets are shared via a volume in the pod
and the assets are copied over by the php container using a readinessCheck.

Check out these links for why having one pod:
- https://itnext.io/scaling-your-symfony-application-and-preparing-it-for-deployment-on-kubernetes-c102bf246a93
- https://medium.com/@marekbartik/autoscale-nginx-and-php-fpm-independently-on-google-kubernetes-engine-290aead64f7f


We have not database for now.

### run
First we need a local container repository, run with:

`docker run -d -p 5000:5000 --name registry registry:latest` or just `docker start registry` if run already before.

Make `kubectl` connect to your local cluster. If you use Docker For Mac/Windows run `kubectl config use-context docker-for-desktop`. If you use Linux you should use `minikube`.

Build the containers: `run/build.sh`

Setup the Kubernetes objects: `run/up.sh`

View info about the cluster: `run/info.sh`

Then call http://localhost in your browser

Delete Kubernetes objects: `run/down.sh`

## Part 2
checkout branch part2