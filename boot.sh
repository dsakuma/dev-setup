#!/bin/bash

# # Ensure computer doesn't go to sleep or lock while installing
# gsettings set org.gnome.desktop.screensaver lock-enabled false
# gsettings set org.gnome.desktop.session idle-delay 0

# # Prompt for sudo pasword and validate
# while true; do
#     PASSWD=$(zenity --password --title="Password Required" --text="Enter your password to continue.")
#     echo "$PASSWD" | sudo -v -S 2>/dev/null
#     if [ $? -eq 0 ]; then
#         break
#     else
#         zenity --error --title="Invalid Password" --text="The password you entered is incorrect. Please try again."
#     fi
# done


# # Update system and install Git
# echo "Updating system and installing Git..."
# sudo apt update
# sudo apt install -y git


# # Clone the repository
# if [ ! -d ~/.local/share/dev-setup ]; then
#     echo "Cloning dev-setup repository..."
#     git clone https://github.com/dsakuma/dev-setup.git ~/.local/share/dev-setup
#     git -C ~/.local/share/dev-setup remote set-url origin "git@github.com:dsakuma/dev-setup.git"
# else
#     echo "Repository already exists. Pulling latest changes..."
#     git -C ~/.local/share/dev-setup pull
# fi

# # Directories containing scripts to run
# directories=(
# 	"01-pre-install"
# 	"02-install-cli-apps"
# 	"03-install-gui-apps"
# 	"04-config"
# 	"05-post-install"
# )

# # Run all scripts in each directory
# for directory in "${directories[@]}"; do
# 	echo Running "$directory" scripts...
# 	# shellcheck disable=SC1090
# 	for script in ~/.local/share/dev-setup/"$directory"/*.sh; do
# 	  echo Running "$script"...
#     echo "PASSWD" | sudo -v -S 2> /dev/null
# 	  if ! source "$script"; then
# 		  echo "Error: $script failed to execute."
# 	    return 1
# 	  fi
# 	done
# done

# # Revert to normal idle and lock settings
# gsettings reset org.gnome.desktop.screensaver lock-enabled
# gsettings reset org.gnome.desktop.session idle-delay

# echo "Finished! You may need to restart your computer for changes to take effect."


# Prevent system from sleeping or locking during installation
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Prompt for sudo password and validate
while ! zenity --password --title="Password Required" --text="Enter your password to continue." | sudo -v -S 2>/dev/null; do
    zenity --error --title="Invalid Password" --text="The password you entered is incorrect. Please try again."
done

# Update system and install Git
echo "Updating system and installing Git..."
sudo apt update && sudo apt install -y git

# Clone or update the repository
REPO_DIR="$HOME/.local/share/dev-setup"
if [ ! -d "$REPO_DIR" ]; then
    echo "Cloning dev-setup repository..."
    git clone https://github.com/dsakuma/dev-setup.git "$REPO_DIR"
    git -C "$REPO_DIR" remote set-url origin "git@github.com:dsakuma/dev-setup.git"
else
    echo "Repository already exists. Pulling latest changes..."
    git -C "$REPO_DIR" pull
fi

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
    echo "Running scripts in $directory..."
    for script in "$REPO_DIR/$directory"/*.sh; do
	      echo Running "$script"...
        echo "PASSWD" | sudo -v -S 2> /dev/null
	      if ! source "$script"; then
		      echo "Error: $script failed to execute."
	        return 1
	      fi
   done
done

# Restore system idle and lock settings
gsettings reset org.gnome.desktop.screensaver lock-enabled
gsettings reset org.gnome.desktop.session idle-delay

echo "Finished! You may need to restart your computer for changes to take effect."

