#!/bin/bash
set -ouex pipefail

# Install packages
apk add --no-cache \
    7zip \
    bash \
    bat \
    cmake \
    ctags \
    delta \
    direnv \
    emacs-pgtk-nativecomp \
    enchant2 \
    enchant2-dev \
    fd \
    ffmpegthumbnailer \
    fzf \
    git \
    graphviz \
    htop \
    hunspell \
    hunspell-de-de \
    hunspell-en \
    imagemagick \
    libtool \
    make \
    mediainfo \
    pandoc \
    parallel \
    poppler-utils \
    R \
    py3-uv \
    ripgrep \
    shellcheck \
    shfmt \
    tmux \
    tree \
    unzip \
    vim \
    vips-tools \
    zathura-pdf-poppler \
    zip

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin /usr/local/share/applications
ln -sf "$(command -v emacs)" /usr/local/bin/emacs
ln -sf "$(ls /usr/share/applications/emacs.desktop)" /usr/local/share/applications/emacs.desktop
