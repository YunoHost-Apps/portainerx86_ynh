#!/bin/bash

# Remove Docker
sudo apt-get purge docker-ce docker-ce-cli containerd.io -y

# Undo add-apt-repository and apt-key
sudo add-apt-repository -r \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key del -
sudo apt update

# Remove other packs
sudo apt remove -y dbus-user-session pigz gnupg2 libglib2.0-data libpolkit-agent-1-0 libpolkit-backend-1-0 libpolkit-gobject-1-0 policykit-1

# Images, containers, volumes, or customized configuration files on your host are not automatically removed. To delete all images, containers, and volumes:
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
