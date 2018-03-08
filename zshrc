# Emacsライクな操作のためのキーバインド
bindkey -e

# 自動補完を有効にする
# コマンドの引数やパス名を途中まで入力して <Tab> を押すといい感じに補完してくれる
# 例： `cd path/to/<Tab>`, `ls -<Tab>`
autoload -U compinit; compinit

# 入力したコマンドが存在せず、かつディレクトリ名と一致するなら、ディレクトリに cd する
# 例： /usr/bin と入力すると /usr/bin ディレクトリに移動
setopt auto_cd

# ↑を設定すると、 .. とだけ入力したら1つ上のディレクトリに移動できるので……
# 2つ上、3つ上にも移動できるようにする
alias ...='cd ../..'
alias ....='cd ../../..'

setopt hist_ignore_all_dups

zstyle ':completion:*:default' menu select=1

alias em='emacs'
alias ec='emacsclient -t'
alias eckill="emacsclient -e '(kill-emacs)'"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
