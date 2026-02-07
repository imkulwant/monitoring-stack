#!/bin/bash
set -e

NETWORK_NAME=platform

echo "Configuring Docker network: $NETWORK_NAME"

if docker network inspect "$NETWORK_NAME" >/dev/null 2>&1; then
  echo "Network '$NETWORK_NAME' already exists"
else
  docker network create "$NETWORK_NAME"
  echo "Network '$NETWORK_NAME' created"
fi
