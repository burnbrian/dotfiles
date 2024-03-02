# Aliases 
alias mdf='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
alias st="$HOME/.bin/swaytree.sh"

# Path/s
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.bin"

# Configuration directory
export ZSH="$HOME/.config/zsh"

# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=133700
export SAVEHIST=133700
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Functions
for function in $ZSH/functions/**/*(.); do
	source "$function"
done

# Theme
export SPACESHIP_CONFIG="$ZSH/themes/spaceship.zsh"
source "$ZSH/themes/spaceship-prompt/spaceship.zsh"

# Plugins 
source "$ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
source "$ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
fpath=($ZSH/plugins/zsh-completions/src $fpath)
