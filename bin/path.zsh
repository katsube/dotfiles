#!/bin/zsh

#
# print PATH
#
# Usage:
#    $ path.zsh
#    /Users/katsube/bin
#    /usr/local/bin
#    :
#    :

# PATHを:で区切って表示
echo $PATH | tr ':' '\n'
