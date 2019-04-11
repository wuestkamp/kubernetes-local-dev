#!/usr/bin/env bash

ksync init
ksync watch -d
ksync create --selector=id=sf -c php $(pwd)/symfony /var/www/symfony
ksync create --selector=id=sf -c nginx $(pwd)/symfony/public /var/www/symfony/public