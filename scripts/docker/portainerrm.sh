#!/bin/bash

# Remove portainer
docker stop portainer
docker rm portainer
docker volume rm portainer_data
rm -r /var/www/portainer
