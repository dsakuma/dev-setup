#!/bin/bash

cd /tmp
# 1. Set up Docker's package repository
DOCKER_DESKTOP_VERSION="4.30.0"
DOCKER_DESKTOP_ARCH="amd64"

sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# 2. Download deb package
wget "https://desktop.docker.com/linux/main/amd64/149282/docker-desktop-$DOCKER_DESKTOP_VERSION-$DOCKER_DESKTOP_ARCH.deb"

# 3. Install
sudo apt install "./docker-desktop-$DOCKER_DESKTOP_VERSION-$DOCKER_DESKTOP_ARCH.deb"

# 4. Fix for ubuntu 24.04
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

cd -