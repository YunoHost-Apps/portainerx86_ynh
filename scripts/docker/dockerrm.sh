#!/bin/bash

# Remove Docker
sudo apt-get purge docker-ce docker-ce-cli containerd.io -y

# Images, containers, volumes, or customized configuration files on your host are not automatically removed. To delete all images, containers, and volumes:
# sudo rm -rf /var/lib/docker
# sudo rm -rf /var/lib/containerd
