# Oh My Zsh initialization (managed by gop1x)

export ZSH="${ZSH:-$OHP1X_HOME/local/omz}"

ZSH_THEME="${PRESET_CONFIG_THEME:-robbyrussell}"
plugins=(${(s: :)${PRESET_CONFIG_PLUGINS:-git z}})

if [ -f "$ZSH/oh-my-zsh.sh" ]; then
    source "$ZSH/oh-my-zsh.sh"
fi
