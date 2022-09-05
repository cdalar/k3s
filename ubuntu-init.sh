#!/bin/bash
set -ex
apt-get update
apt-get install -y wget curl jq unzip git
curl -sL https://aka.ms/InstallAzureCLIDeb | bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -u awscliv2.zip
./aws/install --update
#NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#brew install hcloud
