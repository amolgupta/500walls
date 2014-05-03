#!/bin/sh
cd /home/amol/Desktop/500px/
files=${PWD}/5.jpg.*
# export DBUS_SESSION_BUS_ADDRESS environment variable
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)
/usr/bin/gsettings set org.gnome.desktop.background picture-uri file:///${PWD}/5.jpg.$(($$ % ${#files[@]-3}))
