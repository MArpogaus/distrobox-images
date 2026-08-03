#!/bin/bash
set -ouex pipefail

apt-get clean
rm -rf /var/lib/apt/lists/*
