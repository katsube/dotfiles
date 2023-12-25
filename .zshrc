#---------------------------------------------
# Load .zsh/*.zsh
#---------------------------------------------
ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

#---------------------------------------------------------#
# Plugin
#---------------------------------------------------------#
# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#---------------------------------------------------------#
# Suggestion
#---------------------------------------------------------#
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補を詰めて表示
setopt list_packed

# 補完候補一覧をカラー表示
autoload colors
zstyle ':completion:*' list-colors ''

# 何も入力されていないときのTABでTABが挿入されるのを抑制
zstyle ':completion:*' insert-tab false

# タブキーの連打で自動的にメニュー補完
setopt AUTO_MENU

#---------------------------------------------------------#
# zsh Option
#---------------------------------------------------------#
# /foo/barでいきなりcd
setopt AUTO_CD

# コマンドのスペルを訂正
setopt correct

# ビープ音を鳴らさない
setopt no_beep

#補完候補リストの日本語を正しく表示
setopt PRINT_EIGHT_BIT

#---------------------------------------------
# Prompt
#---------------------------------------------
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd() { vcs_info }
PROMPT='%m:%F{green}%~%f %n %F{yellow}$%f '
RPROMPT='${vcs_info_msg_0_}'

if [ "$(uname)" = 'Darwin' ]; then
  # export LSCOLORS=bxfxcxdxbxegedabagacad
  export LSCOLORS=gxfxcxdxbxegedabagacad
  alias ls='ls -GF'
fi
