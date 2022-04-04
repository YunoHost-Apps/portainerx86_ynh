#!/bin/bash

# Remove Docker
sudo apt-get purge docker-ce docker-ce-cli containerd.io -y

# Undo add-apt-repository and apt-key
sudo rm /usr/share/keyrings/docker-archive-keyring.gpg
sudo rm /etc/apt/sources.list.d/docker.list 
sudo apt-get update

# Clean up
sudo rm /etc/docker/key.json
sudo rm -r /var/run/docker
sudo rm /var/run/docker.sock
sudo rm -r /var/run/containerd

# Remove other packs
# sudo apt remove -y dbus-user-session docker-scan-plugin pigz gnupg2 libglib2.0-data libpolkit-agent-1-0 libpolkit-backend-1-0 libpolkit-gobject-1-0 policykit-1
# sudo apt autoremove -y

# Remove admin from group docker and delete docker group
sudo deluser admin docker
# sudo groupdel docker

# Images, containers, volumes, or customized configuration files on your host are not automatically removed. To delete all images, containers, and volumes:
# sudo rm -rf /var/lib/docker
# sudo rm -rf /var/lib/containerd
