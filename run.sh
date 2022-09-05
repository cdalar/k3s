#!/bin/bash
export KUBECONFIG=/Users/cd/onkube/hetzner/kubeconfig
kubectl get no 
kubectl run --image ubuntu:20.04 ubuntu -- sleep infinity
kubectl wait --for=condition=ready po ubuntu
kubectl cp ubuntu-init.sh ubuntu:/
kubectl exec ubuntu -- /ubuntu-init.sh
#kubectl exec -it ubuntu -- /bin/bash
