#!/usr/bin/env bash

docker run -d -p 5000:5000 --name registry registry:latest || docker start registry