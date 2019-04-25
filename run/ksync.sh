#!/usr/bin/env bash

ksync init
ksync create --selector=id=sf-pod -c php $(pwd)/symfony /var/www/symfony
ksync create --selector=id=sf-pod -c nginx $(pwd)/symfony/public /var/www/symfony/public
ksync watch