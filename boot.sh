#!/bin/bash

# Install git
sudo apt update
sudo apt install -y git

# Clone dev-setup
echo "Cloning dev-setup..."
git clone https://github.com/dsakuma/dev-setup.git ~/.local/share/dev-setup

# Run install.sh
echo "Installation starting..."
# shellcheck disable=SC1090
source ~/.local/share/dev-setup/install.sh
