#!/bin/bash
set -x
hcloud server delete master
hcloud server delete node01
hcloud server delete node02
