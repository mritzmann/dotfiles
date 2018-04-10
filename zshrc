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

# zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/git/zsh-syntax-highlighting
[[ -f ~/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
alias task="ssh -tt root@console01.cloud42.ch task"
