#!/bin/bash
set -ouex pipefail

dnf install -y nodejs npm
npm install -g opencode-ai @google/gemini-cli
