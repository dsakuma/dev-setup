#!/bin/bash

 # Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

directories=(
	"01-pre-install"
	"02-install-terminal-apps"
	"03-install-desktop-apps"
	"04-config"
	"05-post-install"
)

for directory in "${directories[@]}"; do
	echo Running "$directory" scripts...
	# shellcheck disable=SC1090
	for script in ./"$directory"/*.sh; do
	  echo Running "$script"...
	  if ! source "$script"; then
		  echo "Error: $script failed to execute."
	    return 1
	  fi
	done
done

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

echo "Finished! You may need to restart your computer for changes to take effect."
