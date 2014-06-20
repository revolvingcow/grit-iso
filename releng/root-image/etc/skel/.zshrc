# Path to your oh-my-zsh configuration.
ZSH=$HOME/.config/zsh

# Load libraries
if [[ -e $ZSH/lib/*.zsh ]]; then
    for config_file ($ZSH/lib/*.zsh); do
        source $config_file
    done
    unset config_file
fi

# Load autoloads
source $ZSH/autoloads.zsh

# Load configuration flags
source $ZSH/flags.zsh

# Load key bindings
source $ZSH/keys.zsh

# Load custom prompt
source $ZSH/prompt.zsh

# Load aliases
source $ZSH/aliases.zsh

unset ZSH
