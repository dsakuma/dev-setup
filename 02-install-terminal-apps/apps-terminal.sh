#!/bin/bash

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
if [ ! -L ~/.local/bin/fd ]; then
  mkdir -p ~/.local/bin
  ln -s "$(which fdfind)" ~/.local/bin/fd
fi
