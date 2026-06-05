#!/bin/bash
set -ouex pipefail

apt-get update
apt-get install -y nodejs npm
npm install -g opencode-ai @google/gemini-cli
npm install -g --ignore-scripts @earendil-works/pi-coding-agent
apt-get clean
rm -rf /var/lib/apt/lists/*
