#!/bin/bash 

export KUBECONFIG=$(realpath ./aks-kubeconfig.yaml)
kubectl get no 


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install kube-prometheus-stack prometheus-community/kube-prometheus-stack --version 47.1.0 