#!/usr/bin/env bash


az group create --name myResourceGroup --location westeurope

az acs create --orchestrator-type kubernetes --resource-group myResourceGroup --name myK8sCluster --generate-ssh-keys

az acs kubernetes get-credentials --resource-group=myResourceGroup --name=myK8sCluster

az acs kubernetes get-credentials --resource-group=myResourceGroup --name=myK8sCluster

kubectl create -f azure-vote.yml

kubectl get service azure-vote-front --watch

#az group delete --name myResourceGroup --yes --no-wait
