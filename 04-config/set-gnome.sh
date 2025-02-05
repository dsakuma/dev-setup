#!/bin/bash

# Change touchpad and mouse to natural scroll
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# Change dock to bottom
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

# Hide mounted volumes and devices
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false

# Set night light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 4700
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic true

# Set dark mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
