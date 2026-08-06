#!/bin/bash
set -ouex pipefail

pacman -S --noconfirm \
    biber \
    perl-file-homedir \
    perl-yaml-tiny \
    texlive-basic \
    texlive-bibtexextra \
    texlive-binextra \
    texlive-fontsextra \
    texlive-fontsrecommended \
    texlive-langgerman \
    texlive-latex \
    texlive-latexextra \
    texlive-latexrecommended \
    texlive-luatex \
    texlive-mathscience \
    texlive-pictures \
    texlive-plaingeneric \
    texlive-publishers \
    zathura-pdf-poppler \
    zip

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin
for b in latexmk pdflatex xelatex lualatex biber; do
    ln -sf "$(command -v "$b")" "/usr/local/bin/$b"
done
