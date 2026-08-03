#!/bin/bash
set -ouex pipefail

# Import the GPG key
wget -qO - https://repo.cider.sh/APT-GPG-KEY | gpg --dearmor -o /usr/share/keyrings/cider-archive-keyring.gpg

# Add the repository to sources list
echo "deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main" | tee /etc/apt/sources.list.d/cider.list

# Install Cider
apt install -y cider pipewire
