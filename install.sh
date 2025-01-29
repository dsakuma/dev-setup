#!/bin/bash

# Disable sudo timeout while installing
echo "Defaults timestamp_timeout=-1" | sudo tee -a /etc/sudoers.d/disable_timeout

# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Directories containing scripts to run
directories=(
	"01-pre-install"
	"02-install-terminal-apps"
	"03-install-desktop-apps"
	"04-config"
	"05-post-install"
)

# Run all scripts in each directory
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
gsettings reset org.gnome.desktop.screensaver lock-enabled
gsettings reset org.gnome.desktop.session idle-delay

# Re-enable sudo timeout
sudo rm -f /etc/sudoers.d/disable_timeout

echo "Finished! You may need to restart your computer for changes to take effect."
