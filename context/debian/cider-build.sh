#!/bin/bash
set -ouex pipefail

# Import the GPG key
wget -qO - https://repo.cider.sh/APT-GPG-KEY | gpg --dearmor -o /usr/share/keyrings/cider-archive-keyring.gpg

# Add the repository to sources list
echo "deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main" | tee /etc/apt/sources.list.d/cider.list

# Update package cache
apt-get update

# Install Cider
apt install -y cider pipewire

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/share/applications
ln -sf "$(ls /usr/share/applications/[Cc]ider.desktop)" /usr/local/share/applications/cider.desktop
