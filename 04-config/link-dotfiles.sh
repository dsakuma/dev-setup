#!/bin/bash

homesick clone https://github.com/dsakuma/dotfiles-dev-setup.git
homesick link dotfiles

git -C ~/.homesick/repos/dotfiles remote set-url origin "git@github.com:dsakuma/dotfiles-dev-setup.git"
