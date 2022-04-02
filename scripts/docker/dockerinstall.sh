#!/bin/bash

# Install docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt update 2>/dev/null
sudo apt -y install docker-ce
# sudo /usr/bin/dockerd -H unix://
# docker-ce-cli containerd.io
# sudo systemctl enable --now docker
sudo usermod -aG docker admin
