#!/bin/bash
set -e

echo "Configuring firewall (UFW)..."

# Allow SSH so you don’t lock yourself out
sudo ufw allow ssh

# Allow common platform ports
sudo ufw allow 3000   # Grafana
sudo ufw allow 9090   # Prometheus
sudo ufw allow 9411   # Zipkin

sudo ufw --force enable

echo "Firewall configuration complete."
