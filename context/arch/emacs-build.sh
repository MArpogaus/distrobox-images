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
    r \
    ripgrep \
    shellcheck \
    shfmt \
    tmux \
    tree \
    unzip \
    vim \
    zathura-pdf-poppler \
    zip

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin /usr/local/share/applications
ln -sf /usr/share/applications/emacs.desktop /usr/local/share/applications/emacs.desktop
