#!/bin/sh

homesick clone https://github.com/dsakuma/dotfiles.git
homesick link dotfiles
# echo "Restart session run or run \"exec zsh -l\""

# Use chezmoi
# cd /tmp || exit
# wget https://github.com/twpayne/chezmoi/releases/download/v2.49.1/chezmoi_2.49.1_linux_amd64.deb
# apt install -y ./chezmoi_2.49.1_linux_amd64.deb
# cd - || exit
