#!/usr/bin/env bash

# uninstall
sudo rm /usr/local/bin/niri
sudo rm /usr/local/bin/niri-session

sudo rm /usr/local/share/wayland-sessions/niri.desktop
sudo rm /usr/local/share/xdg-desktop-portal/niri-portals.conf
sudo rm /etc/systemd/user/niri.service

