#!/bin/sh

homesick clone git@github.com:dsakuma/dotfiles.git
homesick link dotfiles
echo "Restart session run or run \"exec zsh -l\""
