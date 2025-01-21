#!/bin/sh

set -eu

directories="01-pre-install 02-install-terminal-apps 03-install-desktop-apps 04-dotfiles 05-config 06-post-install"

for directory in $directories; do
	echo Running "$directory" scripts...
	# shellcheck disable=SC1090
	for script in ./"$directory"/*.sh; do . "$script"; done
done

echo "Finished! You may need to restart your session for changes to take effect."
