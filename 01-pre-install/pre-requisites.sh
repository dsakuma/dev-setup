#!/bin/bash

# Request sudo password once for the next 15 min
sudo -v

sudo apt update
sudo apt install -y build-essential curl git unzip

# Flatpak and Flathub
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Homebrew
CI=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
