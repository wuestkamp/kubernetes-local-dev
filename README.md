
Kim Wüstkamp
www.wuestkamp.com

# Kubernetes Symfony Local Development Environment

Here we will create a local development environment for Symfony 4 using Kubernetes.


## Step 1
- simple app with nginx and php container, no database.
- we can spin up the infrastructure fast in our local Kubernetes cluster
- we create a shared directory to edit files directly on the Kubernetes pod
- we show the issue with slow data synchronization