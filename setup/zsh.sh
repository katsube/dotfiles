#!/bin/bash

#
# zsh
#

#---------------------------------#
# zsh-syntax-highlighting
#---------------------------------#
# echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc

#---------------------------------#
# zsh-autosuggestions
#---------------------------------#
# echo 'source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

#---------------------------------#
# zsh-completions
#---------------------------------#
#cat << EOT >> ~/.zshrc
#  if type brew &>/dev/null; then
#    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#
#    autoload -Uz compinit
#    compinit
#  fi
#EOT

# alert measures
chmod 0755 /usr/local/share/zsh/site-functions
chmod 0755 /usr/local/share
chmod 0755 /usr/local/share/zsh
