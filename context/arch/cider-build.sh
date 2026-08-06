#!/bin/bash
set -ouex pipefail

curl -s https://repo.cider.sh/ARCH-GPG-KEY | pacman-key --add -
pacman-key --lsign-key A0CD6B993438E22634450CDD2A236C3F42A61682

tee -a /etc/pacman.conf <<EOF

# Cider Collective Repository
[cidercollective]
SigLevel = Required TrustedOnly
Server = https://repo.cider.sh/arch
EOF

# Refresh package database
pacman -Syyu --noconfirm

pacman -S --noconfirm cider pipewire-pulse

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/share/applications
ln -sf "$(ls /usr/share/applications/[Cc]ider.desktop)" /usr/local/share/applications/cider.desktop
