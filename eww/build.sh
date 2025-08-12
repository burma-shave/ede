#!/usr/bin/env bash

# check niri already installed
# check curl already installed

sudo apt-get install -y gcc clang libgtk-3-dev libdbusmenu-glib-dev libdbusmenu-gtk3-dev libgtk-layer-shell-dev libpango1.0-dev

sudo snap install rustup --classic
rustup default stable

git clone https://github.com/elkowar/eww
cd eww
cargo build --release --no-default-features --features=wayland
#
# cd ~
# git clone https://github.com/YaLTeR/niri
# cd niri
# git checkout 25.05.1
# cargo build --release
#
# cp -r resources /niri/
# cp target/release/niri /niri/

