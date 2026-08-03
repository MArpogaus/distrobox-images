#!/bin/bash
set -ouex pipefail

# Update package database
zypper refresh

# Install Node.js
zypper install -y nodejs npm

# Install AI agents and ACP adapters (agent-shell)
npm install -g opencode-ai @google/gemini-cli pi-acp @agentclientprotocol/claude-agent-acp
npm install -g --ignore-scripts @earendil-works/pi-coding-agent

# Clean package cache
zypper clean --all
