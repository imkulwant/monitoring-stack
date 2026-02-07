#!/bin/bash
set -e

echo "Starting homelab platform setup..."

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# -------- OS check --------
if ! command_exists apt; then
  echo "Unsupported OS. Debian/Ubuntu-based systems only."
  exit 1
fi

# -------- base tools --------
echo "Ensuring base tools are installed (curl, make)..."

sudo apt update -y

for pkg in curl ca-certificates make; do
  if dpkg -s "$pkg" >/dev/null 2>&1; then
    echo "$pkg already installed"
  else
    echo "Installing $pkg..."
    sudo apt install -y "$pkg"
    echo "$pkg installed"
  fi
done

# -------- delegate to platform scripts --------
echo "Running platform setup scripts..."
make setup
echo "Setup completed successfully"
