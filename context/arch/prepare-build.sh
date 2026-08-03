#!/bin/bash
set -ouex pipefail

# Refresh mirrorlist and update system
cp /ctx/update-mirrors /usr/bin/
update-mirrors US
pacman -Syyu --noconfirm
