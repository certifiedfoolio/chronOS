#!/bin/bash

# prep
set -ouex pipefail

# install system pkgs
dnf5 -y install gstreamer1-plugin-openh264 \
	librewolf \
	gnome-weather \
	snapshot \
	gnome-calculator \
	totem \
	gnome-disks \
	gparted \
	gnome-logs \
	gnome-maps \
	evince \
	gnome-clocks \
	loupe \
	secrets
