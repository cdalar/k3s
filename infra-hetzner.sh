#!/bin/bash
set -x
hcloud ssh-key create --name macbook --public-key-from-file=/Users/cd/.ssh/id_rsa.pub
hcloud server create --location fsn1 --image ubuntu-20.04 --name master --type cx11 --ssh-key macbook
hcloud server create --location fsn1 --image ubuntu-20.04 --name node01 --type cpx11 --ssh-key macbook
hcloud server create --location fsn1 --image ubuntu-20.04 --name node02 --type cpx11 --ssh-key macbook
