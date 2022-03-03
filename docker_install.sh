#!/bin/bash

sudo apt update -y
# download get-docker.sh file
curl -fsSL https://get.docker.com -o get-docker.sh
# run get-docker.sh file shell
sh get-docker.sh

sudo usermod -aG docker $USER

sudo chmod 777 /var/run/docker.sock

VERSION=$(docker -v)

echo "Docker installed & configured successfully! $VERSION"
