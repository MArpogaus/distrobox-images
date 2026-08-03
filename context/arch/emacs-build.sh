#!/bin/bash
set -ouex pipefail

pacman -S --noconfirm \
    7zip \
    bash-language-server \
    bat \
    cmake \
    ctags \
    direnv \
    emacs-wayland \
    enchant \
    fd \
    ffmpegthumbnailer \
    fzf \
    git \
    git-delta \
    graphviz \
    htop \
    hunspell \
    hunspell-de \
    hunspell-en_us \
    imagemagick \
    libvips \
    mediainfo \
    pandoc \
    parallel \
    pdf2svg \
    poppler \
    python-uv \
    ripgrep \
    shellcheck \
    shfmt \
    tmux \
    tree \
    unzip \
    vim \
    zathura-pdf-poppler \
    zip
