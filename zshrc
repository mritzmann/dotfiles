# path
export ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="agnoster"

# plugins
plugins=(
  git
)

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# language
# export LANG=en_US.UTF-8

# local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
alias task="ssh -tt root@console01.cloud42.ch task"
