#!/bin/bash

#
# zsh
#

#---------------------------------#
# zsh-syntax-highlighting
#---------------------------------#
# [OLD] echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
# echo 'source source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

#---------------------------------#
# zsh-autosuggestions
#---------------------------------#
# [OLD] echo 'source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
# echo 'source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

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

# Alert measures
# [OLD]
#   chmod 0755 /usr/local/share/zsh/site-functions
#   chmod 0755 /usr/local/share
#   chmod 0755 /usr/local/share/zsh
chmod 0755 /opt/homebrew/share
