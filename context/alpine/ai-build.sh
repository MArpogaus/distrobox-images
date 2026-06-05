#!/bin/bash
set -ouex pipefail

apk add --no-cache nodejs npm
npm install -g opencode-ai @google/gemini-cli
npm install -g --ignore-scripts @earendil-works/pi-coding-agent
