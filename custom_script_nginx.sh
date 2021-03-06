#!/bin/bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" xenial stable"
sudo apt-get update

# search docker-ce
apt-cache search docker-ce

# install docker
sudo apt-get install -y docker-ce

# Run Docker Container on VM
docker run -p 80:80  -e CB_ENV_PREFIX=10.0.0.10 avarade/cb-nginx
