#!/bin/bash

set -ouex pipefail

dnf5 -y install meson \
	wireplumber \
	upower \
	libgtop2 \
	bluez \
	bluez-tools \
	grimblast \
	hyprpicker \
	btop \
	NetworkManager \
	wl-clipboard \
	brightnessctl \
	gnome-bluetooth \
	power-profiles-daemon \
	gvfs \
	nodejs \
	aylurs-gtk-shell \
    swww
npm install -g sass

git clone https://github.com/Jas-SinghFSU/HyprPanel.git
cd HyprPanel
meson setup build
meson compile -C build
meson install -C build