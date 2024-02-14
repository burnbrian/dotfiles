# Naked git repo for managing dot files
alias mydotfiles='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
alias mdf=mydotfiles

# Quickly open note files in $EDITOR
gnosis () {
	local base_path="$HOME/Gnosis/00_inbox"
	local note_file="$1.md"
	local note_path="$base_path/$note_file"
	$EDITOR "$note_path"
}

# Source
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# Pure prompt
fpath+=($HOME/.config/zsh/prompt/pure)
autoload -U promptinit; promptinit
prompt pure
