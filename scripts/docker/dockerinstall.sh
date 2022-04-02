#!/bin/bash

# Install docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update 2>/dev/null
sudo apt-get -y install docker-ce

# sudo /usr/bin/dockerd -H unix://
# docker-ce-cli containerd.io
# sudo systemctl enable --now docker

# Add user to docker group 
sudo groupadd docker
sudo usermod -aG docker admin
sudo newgrp docker 

# Logout needed here
