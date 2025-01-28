#!/bin/bash

if [ ! -d ~/.fonts/Meslo ]; then
  mkdir -p ~/.fonts/Meslo
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.zip -P /tmp
  unzip /tmp/Meslo.zip -d ~/.fonts/Meslo
fi

fc-cache -fv
