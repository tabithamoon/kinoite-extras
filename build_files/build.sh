#!/bin/bash
set -ouex pipefail

### Packages
# Enable COPRs
dnf5 -y copr enable ublue-os/packages
dnf5 -y copr enable ublue-os/akmods

# Install hardware support
dnf5 -y install zenergy

# Install general packages
dnf5 -y install btop fish

# Remove kate
dnf5 -y remove kate

# Remove fcitx5
dnf5 -y remove kcm-fcitx5 fcitx5-*

# Disable COPRs
dnf5 -y copr disable ublue-os/akmods
dnf5 -y copr disable ublue-os/packages

### System units
# systemctl enable podman.socket
