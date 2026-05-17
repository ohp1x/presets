# eza shell integration for Zsh
# Modern ls replacement with colors and git integration

if command -v eza &> /dev/null; then
  # Create convenient aliases
  alias ls='eza'
  alias la='eza -la'
  alias ll='eza -lh'
  alias laa='eza -lah'
  alias tree='eza --tree'

  # Git integration
  alias lg='eza -la --git'
fi
