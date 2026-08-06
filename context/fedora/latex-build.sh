#!/bin/bash
set -ouex pipefail

# Install packages
dnf install -y \
    pdf2svg \
    texlive-scheme-medium \
    texlive-collection-bibtexextra \
    texlive-collection-fontsextra \
    texlive-collection-latexextra \
    texlive-collection-pictures \
    zathura-pdf-poppler

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin
for b in latexmk pdflatex xelatex lualatex biber; do
    ln -sf "$(command -v "$b")" "/usr/local/bin/$b"
done
