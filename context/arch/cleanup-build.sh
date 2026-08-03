#!/bin/bash
set -ouex pipefail

# Clean package cache
pacman -Scc --noconfirm
