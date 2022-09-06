#!/bin/bash
set -x

for name in master node01 node02
do
    hcloud server delete $name
done