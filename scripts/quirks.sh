#!/bin/bash

set -ouex pipefail

# fixes
ln -s /usr/bin/rpm-ostree /usr/bin/chruln
ln -s /usr/bin/systemctl /usr/bin/cserv
cp /ctx/system/applications/sysupdate.desktop /usr/share/applications/
systemctl enable nix-daemon