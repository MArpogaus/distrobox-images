#!/bin/bash
set -ouex pipefail

# Refresh repositories
zypper refresh

# Update all packages
zypper -n dist-upgrade
