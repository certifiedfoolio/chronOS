#!/bin/bash

set -ouex pipefail

wget -O /etc/yum.repos.d/_copr_pvermeer-chromebook-linux-audio.repo \
    https://copr.fedorainfracloud.org/coprs/pvermeer/chromebook-linux-audio/repo/fedora-41/pvermeer-chromebook-linux-audio-fedora-41.repo
wget -O /etc/yum.repos.d/ryanabx-cosmic-epoch-fedora-41.repo \
    https://copr.fedorainfracloud.org/coprs/ryanabx/cosmic-epoch/repo/fedora-41/ryanabx-cosmic-epoch-fedora-41.repo
wget -O /etc/yum.repos.d/home:paul4us.repo \
    https://download.opensuse.org/repositories/home:paul4us/Fedora_41/home:paul4us.repo
# wget -O /etc/yum.repos.d/_copr_petersen-nix-fedora-41.repo \
#    https://copr.fedorainfracloud.org/coprs/petersen/nix/repo/fedora-41/petersen-nix-fedora-41.repo
cp -r /ctx/scripts/localrepos/* /etc/yum.repos.d/