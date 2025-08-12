#!/usr/bin/env bash

sudo apt-get install -y gcc clang libgtk-3-dev libdbusmenu-glib-dev libdbusmenu-gtk3-dev libgtk-layer-shell-dev libpango1.0-dev

sudo snap install rustup --classic
rustup default stable

git clone https://github.com/elkowar/eww
cd eww
cargo build --release --no-default-features --features=wayland


