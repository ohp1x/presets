#!/bin/sh
# core/system post_install — verify package manager and create base dirs

set -e

echo "Verifying package manager..."

if [ -n "$GOP1X_PKG_MANAGER" ]; then
    echo "  Active: $GOP1X_PKG_MANAGER"
else
    echo "  ERROR: No package manager detected by gop1x"
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
