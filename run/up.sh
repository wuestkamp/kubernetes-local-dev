#!/usr/bin/env bash
helm install --name sf infrastructure/helm/sf --set environment=${1:-dev}