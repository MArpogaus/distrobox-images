#!/bin/bash
set -ouex pipefail

apk add --no-cache nodejs npm
npm install -g opencode-ai @google/gemini-cli
