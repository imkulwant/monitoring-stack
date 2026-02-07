#!/bin/bash
set -e

echo "🔧 Installing platform prerequisites..."

# ufw: Simple firewall for managing and enforcing network access rules
# gnupg(GNU Privacy Guard): GPG tools used to verify signatures and manage repo keys
# lsb-release: Exposes distro/codename info for scripts and repo selection
sudo apt install -y \
  ufw \
  gnupg \
  lsb-release

echo "Platform prerequisites installed"
