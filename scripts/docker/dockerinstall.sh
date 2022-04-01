#!/bin/bash

# Remove older versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# Install docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt -y install docker-ce
# docker-ce-cli containerd.io
# sudo systemctl enable --now docker
sudo usermod -aG docker admin
