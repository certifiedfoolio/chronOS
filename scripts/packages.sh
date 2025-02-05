#!/bin/bash

set -ouex pipefail

# install pkgs
rpm-ostree install gstreamer1-plugin-openh264 \
	chromium \
	kweather \
	kamoso \
	kcalc \
	haruna \
	gwenview \
	flatseal \
	secrets \
	klassy \
 	gcc \
	git

# remove pkgs from base image
rpm-ostree override remove htop \
	nvtop \
 	firefox-langpacks \
	firefox \
	toolbox
