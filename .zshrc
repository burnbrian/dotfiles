# Naked git repo for managing dot files
alias mydotfiles='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
alias mdf=mydotfiles

# Path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Custom ZSH configuration
export ZSH="$HOME/.config/zsh"

# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=133700
export SAVEHIST=133700
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Functions
source "$ZSH/functions/extract"
source "$ZSH/functions/gnosis"

# Plugins 
source "$ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
source "$ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
fpath=($ZSH/plugins/zsh-completions/src $fpath)

# Theme
source "$ZSH/themes/spaceship-prompt/spaceship.zsh"
source "$ZSH/themes/spaceship.conf"
