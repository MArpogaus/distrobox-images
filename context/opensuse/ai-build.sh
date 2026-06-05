#!/bin/bash
set -ouex pipefail

zypper install -y nodejs npm
npm install -g opencode-ai @google/gemini-cli
