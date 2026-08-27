#!/bin/bash
set -ouex pipefail

# Add testing repo
tee -a /etc/apk/repositories <<<"@testing https://dl-cdn.alpinelinux.org/alpine/edge/testing"

# Refresh package database
apk update

# Install LaTeX and related packages
apk add --no-cache \
    biber \
    dvisvgm \
    pdf2svg@testing \
    texlive-binextra \
    texlive-most \
    texmf-dist-fontsextra \
    zathura-pdf-poppler

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin
for b in biber bibtex dvisvgm latex latexdiff latexdiff-vc latexindent latexmk lualatex pdflatex xelatex; do
    ln -sf "$(command -v "$b")" "/usr/local/bin/$b"
done
