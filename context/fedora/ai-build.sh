#!/bin/bash
set -ouex pipefail

# Install Node.js and the GitHub CLI
dnf install -y nodejs npm gh

# Install AI agents and ACP adapters (agent-shell). The global prefix is pinned
# because it differs per distro, and /usr/local is reserved for the export links.
export NPM_CONFIG_PREFIX=/usr
npm install -g opencode-ai @google/gemini-cli pi-acp @agentclientprotocol/claude-agent-acp
npm install -g --ignore-scripts @earendil-works/pi-coding-agent
npm install -g @anthropic-ai/claude-code

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin
for b in claude opencode gemini pi; do
    ln -sf "$(command -v "$b")" "/usr/local/bin/$b"
done
