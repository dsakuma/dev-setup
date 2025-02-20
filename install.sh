#!/bin/bash

# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Directories containing scripts to run
directories=(
	"01-pre-install"
	"02-install-cli-apps"
	"03-install-gui-apps"
	"04-config"
	"05-post-install"
)

# Run all scripts in each directory
for directory in "${directories[@]}"; do
	echo Running "$directory" scripts...
	# shellcheck disable=SC1090
	for script in ~/.local/share/dev-setup/"$directory"/*.sh; do
	  echo Running "$script"...
	  if ! source "$script"; then
		  echo "Error: $script failed to execute."
	    return 1
	  fi
	done
done

# Revert to normal idle and lock settings
gsettings reset org.gnome.desktop.screensaver lock-enabled
gsettings reset org.gnome.desktop.session idle-delay

echo "Finished! You may need to restart your computer for changes to take effect."
