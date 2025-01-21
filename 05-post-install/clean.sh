#!/bin/sh

# Remove unused software
snap remove firefox

# Remove unused packages
sudo apt autoremove -y
