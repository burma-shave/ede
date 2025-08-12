#!/usr/bin/env bash

# check niri already installed
# check curl already installed

sudo apt-get install -y gcc clang libudev-dev libgbm-dev libxkbcommon-dev libegl1-mesa-dev libwayland-dev libinput-dev libdbus-1-dev libsystemd-dev libseat-dev libpipewire-0.3-dev libpango1.0-dev libdisplay-info-dev git

sudo snap install rustup --classic
rustup default stable

cd ~
git clone https://github.com/YaLTeR/niri
cd niri
git checkout 25.05.1
cargo build --release

cp -r resources /niri/
cp target/release/niri /niri/

