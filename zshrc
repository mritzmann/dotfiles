# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="ys"

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
alias timew="ssh -tt timewarrior@mari01.snowflakehosting.ch timew"
alias myip="myipv4 && myipv6"
alias myipv4="dig +short -4 myip.opendns.com a @resolver1.opendns.com"
alias myipv6="dig +short -6 myip.opendns.com aaaa @resolver1.opendns.com"

# ping
ping() {
	if [ $# -eq 0 ]
	then
		=ping google.ch
	else
		=ping "$@"
	fi
}

