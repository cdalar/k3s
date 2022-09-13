#!/bin/bash
set -ex

cd ~
apt-get update
apt-get install -y vim wget curl jq unzip git bash-completion fzf kubectx

### install az cli
curl -sL https://aka.ms/InstallAzureCLIDeb | bash

### Install aws cli
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip -u awscliv2.zip
#./aws/install --update

### Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
echo 'alias k=kubectl' >> /root/.bashrc
echo 'source <(kubectl completion bash)' >>/root/.bashrc
echo 'complete -o default -F __start_kubectl k' >>/root/.bashrc

### Install kubectx and kubens
git clone https://github.com/ahmetb/kubectx /opt/kubectx
ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
ln -s /opt/kubectx/kubens /usr/local/bin/kubens

### Install brew
#NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#brew install hcloud
#brew install k9s

### K9S
wget https://github.com/derailed/k9s/releases/download/v0.26.3/k9s_Linux_x86_64.tar.gz
tar zxf k9s_Linux_x86_64.tar.gz
mv k9s /usr/local/bin/


### Install istioctl
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.15.0 sh -
install -o root -g root -m 0755 /root/istio-1.15.0/bin/istioctl /usr/local/bin/istioctl

### Install wscat
# apt-get install npm
# npm install -g wscat


