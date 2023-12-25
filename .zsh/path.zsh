export PATH=.:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# $PATH の重複をなくす
typeset -U path cdpath fpath manpath
