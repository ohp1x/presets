#!/bin/sh
# core/system post_install — verify package manager and create base dirs

set -e

echo "Verifying package manager..."

if command -v brew >/dev/null 2>&1; then
    echo "  Found: brew $(brew --version | head -1)"
elif command -v apt >/dev/null 2>&1; then
    echo "  Found: apt $(apt --version | head -1)"
elif command -v dnf >/dev/null 2>&1; then
    echo "  Found: dnf $(dnf --version | head -1)"
elif command -v pacman >/dev/null 2>&1; then
    echo "  Found: pacman $(pacman --version | head -1)"
elif command -v apk >/dev/null 2>&1; then
    echo "  Found: apk $(apk --version)"
elif command -v nix >/dev/null 2>&1; then
    echo "  Found: nix $(nix --version)"
else
    echo "  ERROR: No supported package manager found"
    exit 1
fi

echo "Creating base directories..."
mkdir -p "$OHP1X_HOME/local/bin"
mkdir -p "$OHP1X_HOME/local/cache"
mkdir -p "$OHP1X_HOME/generated/shell"
mkdir -p "$OHP1X_HOME/generated/config"
mkdir -p "$OHP1X_HOME/local/generated/shell"
mkdir -p "$OHP1X_HOME/local/generated/config"

echo "core/system ready."
