#!/bin/bash
set -ouex pipefail

pacman -S --noconfirm --needed nodejs npm
npm install -g opencode-ai @google/gemini-cli
