#!/bin/sh

set -eu

directories="01-pre-install 02-install-terminal 03-install-gui 04-dotfiles 05-post-dotfiles 06-setup-gui 07-post-install"

for directory in $directories; do
	echo Running "$directory" scripts...
	# shellcheck disable=SC1090
	for script in ./"$directory"/*.sh; do . "$script"; done
done

echo "Finished! You may need to restart your session for changes to take effect."