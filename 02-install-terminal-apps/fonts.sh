#!/bin/sh

if [ ! -d ~/.fonts/Meslo ]; then
  mkdir -p ~/.fonts/Meslo
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.zip -P /tmp
  unzip /tmp/Meslo.zip -d ~/.fonts/Meslo
fi


# if [ ! -d ~/.fonts/JetBrainsMono ]; then
#   mkdir -p ~/.fonts/JetBrainsMono
#   wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip -P /tmp
#   unzip /tmp/JetBrainsMono.zip -d ~/.fonts/JetBrainsMono
# fi

fc-cache -fv
