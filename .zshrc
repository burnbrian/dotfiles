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

## Extract file, example. "ex package.tar.bz2"
extract() {
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz)  tar xzf $1 ;;
      *.bz2)     bunzip2 $1 ;;
      *.rar)     rar x $1 ;;
      *.gz)      gunzip $1  ;;
      *.tar)     tar xf $1  ;;
      *.tbz2)    tar xjf $1 ;;
      *.tgz)     tar xzf $1 ;;
      *.zip)     unzip $1 ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1 ;;
      *)         echo $1 cannot be extracted ;;
    esac
  else
    echo $1 is not a valid file
  fi
}

# Pure prompt
fpath+=($HOME/.config/zsh/prompt/pure)
autoload -U promptinit; promptinit
prompt pure
