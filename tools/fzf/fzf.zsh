# fzf shell integration for Zsh
# Enable fzf keybindings and completion

if command -v fzf &> /dev/null; then
  # Source fzf completion and keybindings
  if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
  elif [ -f /usr/share/fzf/completion.zsh ]; then
    source /usr/share/fzf/completion.zsh
  fi

  # Set default fzf options
  export FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS} --height 40% --layout=reverse --border"

  # Enable Ctrl-T, Ctrl-R, Alt-C if configured
  export FZF_CTRL_T_OPTS="--preview 'head -100 {}'"
  export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
fi
