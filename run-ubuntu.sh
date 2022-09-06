#!/bin/bash
kubectl get no 
kubectl run --image ubuntu:20.04 ubuntu -- sleep infinity
kubectl wait --for=condition=ready po ubuntu
kubectl cp ubuntu-init.sh ubuntu:/root/
kubectl exec ubuntu -- /root/ubuntu-init.sh
#kubectl exec -it ubuntu -- /bin/bash
