#!/bin/bash

#
# Bootstrap
#


#-------------------------------------
# Files and directories
#-------------------------------------
if [ ! -d ~/bin ]; then
  mkdir ~/bin
fi

#-------------------------------------
# Copy dotfiles
#-------------------------------------
# zsh
cp -i .zshrc ~/
cp -i -r .zsh ~/

# git
cp -i .gitconfig ~/
cp -i .gitignore_global ~/

# vim
cp -i .vimrc ~/

# Homebrew
cp -i Brewfile ~/

# ssh
cp -i -r .ssh ~/

#-------------------------------------
# End message
#-------------------------------------
echo " "
echo "Bootstrap done!"
echo "  Please run 'source ~/.zshrc'"
echo "  And run 'brew bundle'"
echo "  Use scripts in the 'setup' directory if necessary"
