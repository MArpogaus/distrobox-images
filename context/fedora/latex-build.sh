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
for b in biber bibtex dvisvgm latex latexdiff latexdiff-vc latexindent latexmk lualatex pdflatex xelatex; do
    ln -sf "$(command -v "$b")" "/usr/local/bin/$b"
done
