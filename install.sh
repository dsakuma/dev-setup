#!/bin/sh

# Need for installers
sudo apt update
sudo snap refresh snap-store
sudo apt install -y curl git unzip

# Install all the things
directories="install setup dotfiles post-dotfiles"
for directory in $directories; do
	echo Running "$directory" scripts...
	for script in ./"$directory"/*.sh; do . "$script"; done
done

# Upgrade everything
sudo apt upgrade -y
sudo apt autoremove -y

echo "Finished! You may need to restart your session for changes to take effect."