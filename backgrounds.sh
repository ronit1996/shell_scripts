#!/bin/bash

# crontab needs D-Bus session bus of the Desktop #
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"

# set wallpaper folder #
folder="/usr/share/backgrounds/wallpaper-master/"

# choose a random wallpaper #
arr=($(find ${folder} -mindepth 1 -name "*.jpg" -o -name "*.png"))
totalItems=${arr[@]}
randItem=$[ $RANDOM % 50 + 1 ]
wp=${arr[${randItem}]}

# set the wallpaper #
gsettings set org.gnome.desktop.background picture-uri-dark ${wp}
