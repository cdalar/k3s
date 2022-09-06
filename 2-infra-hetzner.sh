#!/bin/bash
set -x
hcloud ssh-key create --name macbook --public-key-from-file=/Users/cd/.ssh/id_rsa.pub
hcloud server create --location fsn1 --image ubuntu-20.04 --name master --type cx21 --ssh-key macbook
for name in node01 node02
do
    hcloud server create --location fsn1 --image ubuntu-20.04 --name $name --type cx31 --ssh-key macbook
done
