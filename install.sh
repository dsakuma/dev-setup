#!/bin/sh

set -eu

directories="pre-install install dotfiles post-dotfiles setup post-install"
for directory in $directories; do
	echo Running "$directory" scripts...
	# shellcheck disable=SC1090
	for script in ./"$directory"/*.sh; do . "$script"; done
done

echo "Finished! You may need to restart your session for changes to take effect."