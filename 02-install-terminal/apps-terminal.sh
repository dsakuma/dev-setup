#!/bin/sh

# add fzf when v0.48 or later is available

sudo apt install -y \
    fd-find \
    fzf \
    git \
    homesick \
    jq \
    nix \
    ripgrep \
    shellcheck \
    tig \
    tldr \
    tmux \
    vim \
    wget \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    zsh

# Link fd to fdfind
ln -s $(which fdfind) ~/.local/bin/fd
