#!/bin/bash

echo "Verifying platform state..."

echo ""
echo "Running containers:"
docker ps || true

echo ""
echo "Docker networks:"
docker network ls | grep platform || true

echo ""
echo "Verification complete"
