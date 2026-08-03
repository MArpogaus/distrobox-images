#!/bin/bash
set -ouex pipefail

# Add testing repo
tee -a /etc/apk/repositories <<<"@testing https://dl-cdn.alpinelinux.org/alpine/edge/testing"

# Refresh package database
apk update

# Install LaTeX and related packages
apk add --no-cache \
    pdf2svg@testing \
    texlive-binextra \
    texlive-most \
    texmf-dist-fontsextra \
    zathura-pdf-poppler
