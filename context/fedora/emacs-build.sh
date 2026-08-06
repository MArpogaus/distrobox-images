#!/bin/bash
set -ouex pipefail

# Install packages
dnf install -y \
    7zip \
    ImageMagick \
    bat \
    cmake \
    ctags \
    delta \
    direnv \
    emacs-pgtk \
    enchant2 \
    enchant2-devel \
    envsubst \
    fd \
    ffmpegthumbnailer \
    fzf \
    git \
    graphviz \
    htop \
    hunspell \
    hunspell-de \
    hunspell-en \
    libpng \
    libtool \
    make \
    mediainfo \
    pandoc \
    parallel \
    poppler-utils \
    R \
    ripgrep \
    shellcheck \
    shfmt \
    tmux \
    tree \
    unzip \
    uv \
    vim \
    vips-tools \
    zathura-pdf-poppler \
    zip

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin /usr/local/share/applications
ln -sf "$(command -v emacs)" /usr/local/bin/emacs
ln -sf "$(ls /usr/share/applications/emacs.desktop)" /usr/local/share/applications/emacs.desktop
