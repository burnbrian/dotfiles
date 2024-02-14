#!/usr/bin/env bash

# Clone the repo
git clone --bare https://github.com/burnbrian/mydotfiles.git $HOME/.mydotfiles

# Set naked git function
function config {
   git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME $@
}

# Checkout branch main
config checkout
if [ $? = 0 ]; then
  printf %s "Repo checked out..."
  else
    printf %s "Backing up current dotfiles..."
    mkdir -p $HOME/.config-backup
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;

# Checkout and do not show untracked files
# Also set in .gitconfig

config checkout
config config status.showUntrackedFiles no
