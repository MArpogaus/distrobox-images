#!/bin/bash
set -ouex pipefail

# Update package database
pacman -Syyu --noconfirm

# Install Node.js
pacman -S --noconfirm --needed nodejs npm

# Install AI agents and ACP adapters (agent-shell)
npm install -g opencode-ai @google/gemini-cli pi-acp @agentclientprotocol/claude-agent-acp
npm install -g --ignore-scripts @earendil-works/pi-coding-agent

# Clean package cache
pacman -Scc --noconfirm
