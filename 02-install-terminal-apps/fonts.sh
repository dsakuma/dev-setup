#!/bin/sh

mkdir -p ~/.fonts/Meslo
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip -P /tmp
unzip /tmp/Meslo.zip -d ~/.fonts/Meslo

# mkdir -p ~/.fonts/JetBrainsMono
# wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip -P /tmp
# unzip /tmp/JetBrainsMono.zip -d ~/.fonts/JetBrainsMono

fc-cache -fv
