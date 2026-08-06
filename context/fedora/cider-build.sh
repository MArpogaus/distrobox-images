#!/bin/bash
set -ouex pipefail

# Import the GPG key
rpm --import https://repo.cider.sh/RPM-GPG-KEY

# Create repository file
tee /etc/yum.repos.d/cider.repo <<'EOF'
[cidercollective]
name=Cider Collective Repository
baseurl=https://repo.cider.sh/rpm/RPMS
enabled=1
gpgcheck=1
gpgkey=https://repo.cider.sh/RPM-GPG-KEY
EOF

# Install Cider
dnf install -y Cider pipewire

# distrobox.ini only refers to /usr/local; link what this layer exports into it
mkdir -p /usr/local/share/applications
ln -sf "$(ls /usr/share/applications/[Cc]ider.desktop)" /usr/local/share/applications/cider.desktop
