#!/bin/bash
set -ouex pipefail

# Update package cache
apt-get update

# Install Node.js
apt-get install -y nodejs npm

# Install AI agents and ACP adapters (agent-shell)
npm install -g opencode-ai @google/gemini-cli pi-acp @agentclientprotocol/claude-agent-acp
npm install -g --ignore-scripts @earendil-works/pi-coding-agent

# Clean up
apt-get clean
rm -rf /var/lib/apt/lists/*
