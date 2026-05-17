#!/bin/sh
# zsh/omz post_install — clone oh-my-zsh if not present

set -e

OMZ_DIR="$OHP1X_HOME/local/omz"

if [ -d "$OMZ_DIR" ]; then
    echo "  Oh My Zsh already installed at $OMZ_DIR"
    exit 0
fi

echo "  Cloning Oh My Zsh..."
git clone --depth 1 https://github.com/ohmyzsh/ohmyzsh.git "$OMZ_DIR"
echo "  Oh My Zsh installed at $OMZ_DIR"
