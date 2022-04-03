#!/bin/bash

# Undo add-apt-repository and apt-key
sudo rm /usr/share/keyrings/docker-archive-keyring.gpg
sudo rm /etc/apt/sources.list.d/docker.list 
sudo apt-get update

# Remove Docker
sudo apt-get purge docker-ce docker-ce-cli containerd.io -y

# Clean up
rm /etc/docker/key.json
rm -r /var/run/docker
rm /var/run/docker.sock
rm -r /var/run/containerd

# Remove other packs
# sudo apt remove -y dbus-user-session docker-scan-plugin pigz gnupg2 libglib2.0-data libpolkit-agent-1-0 libpolkit-backend-1-0 libpolkit-gobject-1-0 policykit-1
# sudo apt autoremove -y

# Remove admin from group docker and delete docker group
sudo deluser admin docker
# sudo groupdel docker

# Images, containers, volumes, or customized configuration files on your host are not automatically removed. To delete all images, containers, and volumes:
# sudo rm -rf /var/lib/docker
# sudo rm -rf /var/lib/containerd
