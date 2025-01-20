#!/bin/sh

# Remove unused software
snap remove firefox

# Upgrade and clean
sudo apt upgrade -y
sudo apt autoremove -y
