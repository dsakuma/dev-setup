#!/bin/bash

# Remove unused software
sudo snap remove firefox

# Upgrade
sudo snap refresh
sudo apt upgrade -y

# Remove unused packages
sudo apt autoremove -y
