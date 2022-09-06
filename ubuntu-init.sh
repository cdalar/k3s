#!/bin/bash
set -ex

cd ~
apt-get update
apt-get install -y vim wget curl jq unzip git

### install az cli
#curl -sL https://aka.ms/InstallAzureCLIDeb | bash

### Install aws cli
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip -u awscliv2.zip
#./aws/install --update

### Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
echo 'alias k=kubectl' >> /root/.bashrc

### Install brew
#NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#brew install hcloud


### Install istioctl
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.15.0 sh -
install -o root -g root -m 0755 /root/istio-1.15.0/bin/istioctl /usr/local/bin/istioctl


