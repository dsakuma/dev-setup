#!/bin/bash

# Remove unused software
sudo snap remove firefox

# Remove unused packages
sudo apt autoremove -y
