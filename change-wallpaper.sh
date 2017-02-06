#!/bin/bash

#http://askubuntu.com/questions/140305/cron-not-able-to-succesfully-change-background
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

#replace this path with your own
DIR="/home/varun/Pictures/Wallpapers"
PIC=$(ls $DIR/* | shuf -n1)
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"