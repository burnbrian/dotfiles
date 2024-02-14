#!/usr/bin/env bash
# https://www.atlassian.com/git/tutorials/dotfiles 
# curl -ks https://raw.githubusercontent.com/burnbrian/mydotfiles/main/.bin/mydotfiles.sh | bash

# Variables
MYDOTFILE_DIR="$HOME/.mydotfiles"

# Check if MYDOTFILE_DIR is there
if [ -d "$MYDOTFILE_DIR" ]; then
	printf "%s\n" "Removing existing directory..."
	rm -rf $MYDOTFILE_DIR
fi

# Clone use HTTPS
printf "%s\n" "Cloning remote repository..."
git clone --bare https://github.com/burnbrian/mydotfiles.git $MYDOTFILE_DIR

# Mydotfile function
function mdf {
	/usr/bin/git --git-dir="$MYDOTFILE_DIR/" --work-tree="$HOME" $@
}

# Hard stomp new files
printf "%s\n" "Checking out repository files over local files..."
mdf checkout -f
mdf config status.showUntrackedFiles no

# Set remote to SSH > HTTPS
mdf remote set-url origin git@github.com:burnbrian/mydotfiles.git
