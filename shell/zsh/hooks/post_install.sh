#!/bin/sh
# shell/zsh post_install — ensure zsh is in /etc/shells

set -e

ZSH_PATH=$(command -v zsh 2>/dev/null || true)

if [ -z "$ZSH_PATH" ]; then
    echo "  WARNING: zsh not found in PATH after install"
    exit 0
fi

echo "  zsh found at: $ZSH_PATH"

if [ -f /etc/shells ]; then
    if ! grep -qx "$ZSH_PATH" /etc/shells; then
        echo "  NOTE: $ZSH_PATH is not in /etc/shells"
        echo "  To add it, run: sudo sh -c 'echo $ZSH_PATH >> /etc/shells'"
    fi
fi

echo "  To set zsh as default: chsh -s $ZSH_PATH"
