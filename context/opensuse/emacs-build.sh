#!/bin/bash
set -ouex pipefail

# Install packages
zypper -n install \
    ImageMagick \
    ShellCheck \
    R-base \
    bash \
    bat \
    cmake \
    ctags \
    direnv \
    emacs \
    enchant \
    fd \
    fzf \
    git \
    git-delta \
    gnu_parallel \
    graphviz \
    htop \
    hunspell \
    pandoc \
    pdf2svg \
    python313-uv \
    ripgrep \
    shfmt \
    tmux \
    tree \
    unzip \
    vim \
    zathura-plugin-pdf-poppler \
    zip

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/bin /usr/local/share/applications
ln -sf "$(command -v emacs)" /usr/local/bin/emacs
ln -sf "$(ls /usr/share/applications/emacs.desktop)" /usr/local/share/applications/emacs.desktop
