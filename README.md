todo:
- asset handling between nginx and php
- build during container build with webpack
    - npm install


For infrastructure considerations to have php and nginx on the same pod:
https://itnext.io/scaling-your-symfony-application-and-preparing-it-for-deployment-on-kubernetes-c102bf246a93
https://medium.com/@marekbartik/autoscale-nginx-and-php-fpm-independently-on-google-kubernetes-engine-290aead64f7f




Kim Wüstkamp
www.wuestkamp.com

# Kubernetes Symfony Local Development Environment

Here we will create a local development environment for Symfony 4 using Kubernetes.


## Step 1
For more detailed information check out: http://COMIN!

- simple app with nginx and php container, no database.
- we can spin up the infrastructure fast in our local Kubernetes cluster
- we create a shared directory to edit files directly on the Kubernetes pod
- we show the issue with slow data synchronization


First we need a local container repository, run with:

`docker run -d -p 5000:5000 --name registry registry:latest` or just `docker start registry` if run already before.

Then build the container: `run/build.sh`

Make `kubectl` connect to your local cluster.

Run `run/up.sh`


Then call http://localhost in your browser


## Step 2
checkout branch step2.