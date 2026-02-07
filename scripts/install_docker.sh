#!/bin/bash
set -e

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

echo "Ensuring Docker is installed..."

if command_exists docker; then
  echo "Docker already installed"
else
  curl -fsSL https://get.docker.com | sudo sh
  echo "Docker installed"
fi

echo "Ensuring Docker service is running..."
sudo systemctl enable docker >/dev/null 2>&1 || true
sudo systemctl start docker

if groups "$USER" | grep -q docker; then
  echo "User already in docker group"
else
  sudo usermod -aG docker "$USER"
  echo "User added to docker group (re-login required)"
fi
