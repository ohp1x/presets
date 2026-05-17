#!/bin/sh
# Post-install hook for eza preset
# Verify eza installation

set -e

echo "Setting up eza..."

# Verify eza is installed
if ! command -v eza &> /dev/null; then
  echo "Error: eza not found in PATH after installation"
  exit 1
fi

eza_version=$(eza --version | awk '{print $2}')
echo "✓ eza $eza_version installed successfully"

echo "✓ eza setup complete"
