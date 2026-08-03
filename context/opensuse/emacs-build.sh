#!/bin/bash
set -ouex pipefail

# Install packages
zypper -n install \
    ImageMagick \
    ShellCheck \
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
    python-uv \
    ripgrep \
    shfmt \
    tmux \
    tree \
    unzip \
    vim \
    zathura-plugin-pdf-poppler \
    zip
