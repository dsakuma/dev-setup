#!/bin/sh

cd /tmp || exit
wget  "https://discord.com/api/download?platform=linux&format=deb" -O discord-latest.deb
sudo apt install -y ./discord-latest.deb
rm discord-latest.deb
cd - || exit