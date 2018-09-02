# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="ys"

# plugins
plugins=( git )

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# language
# export LANG=en_US.UTF-8

# zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/git/zsh-syntax-highlighting
[[ -f ~/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# no beeping
setopt no_BEEP

# myip
alias myip="myip4 && myip6"
alias myip4='TEMPIP=$(dig +short -4 myip.opendns.com a @resolver1.opendns.com 2> /dev/null) && echo $TEMPIP || echo "ipv4: down"'
alias myip6='TEMPIP=$(dig +short -6 myip.opendns.com aaaa @resolver1.opendns.com 2> /dev/null) && echo $TEMPIP || echo "ipv6: down"'

# digx
digx() { q=$(dig +short a "$1") ; dig +short -x $q }

# find
f() { q="*$1*" ; find -iname $q }

# ping
ping() {
	if [ $# -eq 0 ]
	then
		=ping 8.8.8.8
	else
		=ping "$@"
	fi
}
