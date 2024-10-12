#!/bin/sh

set -eu

directories_wsl="pre-install install-terminal dotfiles post-dotfiles post-install"

for directory in $directories_wsl; do
	echo Running "$directory" scripts...
	# shellcheck disable=SC1090
	for script in ./"$directory"/*.sh; do . "$script"; done
done
echo "Finished! You may need to restart your session for changes to take effect."