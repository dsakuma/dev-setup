####################
# Configure Ubuntu #
####################

# SSH Keys
# ========

# Copy ssh keys to Ubuntu
# Add ssh private and public keys to ~/.ssh

chmod 600 ~/.ssh/id_rsa
ssh-add

# Update system
# =============

sudo apt update
sudo snap refresh snap-store

# Install libraries
# =================
sudo apt install \
    build-essential

# Install app terminal
# ====================

sudo apt install \
    curl \
    fd-find \
    fzf \
    git \
    homesick \
    jq \
    fonts-jetbrains-mono \
    nix \
    ripgrep \
    tig \
    tldr \
    tmux \
    vim \
    wget \
    zsh \
    zsh-syntax-highlighting

# Install apps
# ============
sudo apt install \
    gnome-boxes \
    steam-installer

sudo snap install \
    code \
    discord \
    insomnia \
    spotify

# Github cli
# ==========
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# Ulauncher
# =========
sudo add-apt-repository universe -y && sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher

# fdfind as fd 
# ============

mkdir ~/.local/bin
ln -s $(which fdfind) ~/.local/bin/fd

# Install starship
# =================

curl -sS https://starship.rs/install.sh | sh

# Link homesick
# =============

# Clone and link homesick castle
homesick clone git@github.com:dsakuma/dotfiles.git
homesick link dotfiles
exec zsh -l

# Install vim plugins
# ===================

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

# Install Docker Engine
# =====================

# 1. Set up Docker's package repository
DOCKER_DEKSTOP_VERSION="4.30.0"
DOCKER_DESKTOP_ARCH="amd64"

sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# 2. Download deb package
wget https://desktop.docker.com/linux/main/amd64/149282/docker-desktop-$DOCKER_DESKTOP_VERSION-$DOCKER_DESKTOP_ARCH.deb

# 3. Install
sudo apt-get install ./docker-desktop-$DOCKER_DESKTOP_VERSION-$DOCKER_DESKTOP_ARCH.deb

# 4. Fix for ubuntu 24.04
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

# Nix configuration
# =================
# ToDo

# Chrome
# ======

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Gnome Terminal Dracula
# ======================

git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

# Other settings
# ==============

# Only icons while Alt+Tab
gsettings set org.gnome.shell.window-switcher app-icon-mode 'app-icon-only'
