#!/bin/sh

# Only icons while Alt+Tab
gsettings set org.gnome.shell.window-switcher app-icon-mode 'app-icon-only'

# Change touchpad and mouse to natural scroll
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# Change dock to bottom
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

# Autohide dock
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false

# Hide mounted volumes and devices
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false

# Set dark mode
dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
