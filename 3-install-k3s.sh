#!/bin/bash
hcloud server list -o json > list.json
#export MASTER_IP=`cat list.json | jq -r '.[0].public_net.ipv4.ip'`
#export NODE01_IP=`cat list.json | jq -r '.[1].public_net.ipv4.ip'`
k3sup install --k3s-channel stable --ip `hcloud server ip master`
for name in node01 node02
do
    k3sup join --k3s-channel stable --server-ip `hcloud server ip master` --ip `hcloud server ip $name`
done
