#!/bin/bash
set -ouex pipefail

# Install curl and gnupg
apt-get install -y curl gnupg

# Add Anthropic's apt repository
curl -fsSLo /usr/share/keyrings/claude-desktop-archive-keyring.asc https://downloads.claude.ai/claude-desktop/key.asc
echo "deb [signed-by=/usr/share/keyrings/claude-desktop-archive-keyring.asc] https://downloads.claude.ai/claude-desktop/apt/stable stable main" >/etc/apt/sources.list.d/claude-desktop.list

# Update package cache
apt-get update

# Install Claude Desktop
apt-get install -y claude-desktop
