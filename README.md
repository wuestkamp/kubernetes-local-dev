Kim Wüstkamp
www.wuestkamp.com

# Kubernetes Symfony Local Development Environment
This repo was created alongside the articles on https://medium.com/@wuestkamp

## Part 1
checkout branch part1

This branch belongs to this article:

https://medium.com/@wuestkamp/symfony4-kubernetes-local-development-environment-1-simple-construct-b444e596967

### in short
First we need a local container repository, run with:

`run/registry.sh`

Build the containers: `run/build.sh`

Setup the Kubernetes objects: `run/up.sh`

View info about the cluster: `run/info.sh`

Then call http://localhost in your browser

Delete Kubernetes objects: `run/down.sh`

## Part 2
checkout branch part2

This branch belongs to this article:

https://medium.com/@wuestkamp/symfony4-kubernetes-local-development-environment-2-looking-at-speed-issues-a61955927e69

We were looking in setting up code syncing via volume shares with different options.

## Part 3
checkout branch part3

This branch belongs to this article:

https://medium.com/@wuestkamp/symfony4-kubernetes-local-development-environment-3-ksync-510deb161da3

We did setup Ksync so solve the volume-share speed issues form part 2

## Part 4
checkout branch part4

This branch belongs to this article:

COMIN!

We did setup Helm so switch nicely between local development and production deployment.