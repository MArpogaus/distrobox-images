#!/bin/bash
set -ouex pipefail

apt-get update
apt-get install -y nodejs npm
npm install -g opencode-ai @google/gemini-cli
apt-get clean
rm -rf /var/lib/apt/lists/*
