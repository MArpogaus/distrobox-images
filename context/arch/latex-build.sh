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

# Arch ships perl scripts (biber) under /usr/bin/vendor_perl, which only lands on
# PATH via /etc/profile.d/perlbin.sh -- not sourced during the image build
export PATH="${PATH}:/usr/bin/core_perl:/usr/bin/vendor_perl:/usr/bin/site_perl"

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin
for b in latexmk pdflatex xelatex lualatex biber; do
    ln -sf "$(command -v "$b")" "/usr/local/bin/$b"
done
