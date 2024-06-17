#!/bin/bash

cd /tmp || exit
git clone https://github.com/dracula/gnome-terminal
./gnome-terminal/install.sh
cd - || exit