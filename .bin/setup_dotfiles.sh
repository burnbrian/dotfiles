#!/usr/bin/env bash

# Clone the repo
git clone --bare https://github.com/burnbrian/mydotfiles.git $HOME/.mydotfiles

# Set naked git function
function mdf {
   git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME $@
}

# Do not show untracked files
mdf config status.showUntrackedFiles no

# Checkout branch main
mdf checkout &2>/dev/null
if [ $? = 0 ]; then
  printf %s "Repo checked out..."
  else
    printf %s "Backing up current dotfiles..."
    mkdir -p $HOME/.mdf-backup
    mdf checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} $HOME/.mdf-backup/{}
    printf %s "Copying git dotfiles..."
    mdf checkout
fi;
