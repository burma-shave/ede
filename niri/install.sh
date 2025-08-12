#!/usr/bin/env bash

sed -i 's/\/usr\/bin\/niri/\/usr\/local\/bin\/niri/g' resources/niri.service

# install
sudo cp niri /usr/local/bin/
sudo cp resources/niri-session /usr/local/bin

sudo mkdir /usr/local/share/wayland-sessions
sudo mkdir /usr/local/share/xdg-desktop-portal
sudo cp resources/niri.desktop /usr/local/share/wayland-sessions/niri.desktop
sudo cp resources/niri-portals.conf /usr/local/share/xdg-desktop-portal/
sudo cp resources/niri.service /etc/systemd/user/

# update path to nirin in niri.service



