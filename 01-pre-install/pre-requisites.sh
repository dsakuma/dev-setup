#!/bin/bash

# Install basic packages
sudo apt update
sudo apt install -y build-essential curl unzip

# Flatpak and Flathub
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Homebrew
CI=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Rust and cargo
curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path
# shellcheck disable=SC1091
source "$HOME/.cargo/env"
