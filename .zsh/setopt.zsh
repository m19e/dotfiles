# -----------------------------
# Lang
# -----------------------------
# export LANG=ja_JP.UTF-8

# -----------------------------
# history
# -----------------------------
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history

# -----------------------------
# Environment variable
# -----------------------------

### エディタをvimに設定
export EDITOR=vim
export VISUAL=vim

### PATH追加
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$HOME/.nodenv/versions/12.14.0/bin:$PATH"
export PATH="$PATH:`yarn global bin`"

export PATH="$GOENV_ROOT/bin:$PATH"
export GOENV_ROOT="$HOME/.goenv"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export GOENV_DISABLE_GOPATH=1

# 色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad

# 補完時の色設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

: << EOF
DIRACTION_EDITOR=vim
DIRACTION_BROWSER=
DIRACTION_AUTO_CONFIG=true
ENHANCD_DISABLE_DOT=0
ENHANCD_DISABLE_HYPHEN=0
ENHANCD_DISABLE_HOME=0
ENHANCD_DOT_ARG=..
ENHANCD_HYPHEN_ARG=-
ENHANCD_HYPHEN_NUM=10
ENHANCD_HOME_ARG=
ENHANCD_DOT_SHOW_FULLPATH=0
ENHANCD_USE_FUZZY_MATCH=1
ENHANCD_COMMAND=cd
ENHANCD_AWK=awk
EDITOR=vim
VISUAL=vim
EOF

# -----------------------------
# General
# -----------------------------
# 色を使用
autoload -Uz colors ; colors

# cdした際のディレクトリをディレクトリスタックへ自動追加
setopt auto_pushd

# ディレクトリスタックへの追加の際に重複させない
setopt pushd_ignore_dups

# フローコントロールを無効にする
setopt no_flow_control

# ワイルドカード展開を使用する
setopt extended_glob

# cdコマンドを省略して、ディレクトリ名のみの入力で移動
setopt auto_cd

cdpath=(.. ~ ~/repo)

# 自動でpushdを実行
setopt auto_pushd

# pushdから重複を削除
setopt pushd_ignore_dups

# ビープ音を鳴らさないようにする
setopt no_beep

# カッコの対応などを自動的に補完する
setopt auto_param_keys

# ディレクトリ名の入力のみで移動する
setopt auto_cd

# bgプロセスの状態変化を即時に知らせる
setopt notify

# 8bit文字を有効にする
setopt print_eight_bit

# ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt mark_dirs

# コマンドライン全てのスペルチェックをする
setopt correct_all

# 上書きリダイレクトの禁止
setopt no_clobber

# パスの最後のスラッシュを削除しない
setopt noautoremoveslash

# -----------------------------
# Prompt
# -----------------------------
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats "%F{black}%r:%b"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }