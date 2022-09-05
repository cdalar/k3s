#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export HCLOUD_TOKEN=<token>
export KUBECONFIG=$SCRIPT_DIR/kubeconfig
