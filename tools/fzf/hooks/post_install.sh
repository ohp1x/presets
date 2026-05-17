#!/bin/sh
# Post-install hook for fzf preset
# Verify fzf installation and setup shell integration

set -e

echo "Setting up fzf..."

# Verify fzf is installed
if ! command -v fzf &> /dev/null; then
  echo "Error: fzf not found in PATH after installation"
  exit 1
fi

fzf_version=$(fzf --version | awk '{print $1}')
echo "✓ fzf $fzf_version installed successfully"

# Optional: setup fzf shell completion if available
if [ -d ~/.fzf ]; then
  echo "✓ fzf shell integration directory found"
fi

echo "✓ fzf setup complete"
