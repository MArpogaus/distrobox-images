#!/bin/bash
set -ouex pipefail

# Install Node.js
apt-get install -y nodejs npm

# Install AI agents and ACP adapters (agent-shell)
npm install -g opencode-ai @google/gemini-cli pi-acp @agentclientprotocol/claude-agent-acp
npm install -g --ignore-scripts @earendil-works/pi-coding-agent
npm install -g @anthropic-ai/claude-code
