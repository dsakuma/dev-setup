#!/bin/bash

# Get password for sudo
PASSWD=$(zenity --password --title="Password Required" --text="Enter your password to continue.")
echo "$PASSWD" | sudo -v -S 2> /dev/null
if [ $? -ne 0 ]; then
    zenity --error --text="Invalid password. Exiting."
    exit 1
fi

# Install git
sudo apt update
sudo apt install -y git

# Clone dev-setup
echo "Cloning dev-setup..."
git clone https://github.com/dsakuma/dev-setup.git ~/.local/share/dev-setup
git -C ~/.local/share/dev-setup remote set-url origin "git@github.com:dsakuma/dev-setup.git"

# Run install.sh
echo "Installation starting..."
# shellcheck disable=SC1090
source ~/.local/share/dev-setup/install.sh
