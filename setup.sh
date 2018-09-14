#!/bin/bash
# https://github.com/mritzmann/dotfiles

# oh my zsh
rm ~/.zshrc
ln -s ~/git/dotfiles/.zshrc ~/.zshrc

# vim
rm ~/.vimrc
ln -s ~/git/dotfiles/.vimrc ~/.vimrc

# ms visual studio code
rm ~/.config/Code/User/settings.json
mkdir -p ~/.config/Code/User/
ln -s ~/git/dotfiles/.config/Code/User/settings.json ~/.config/Code/User/settings.json

# redshift
rm ~/.config/redshift.conf
mkdir -p ~/.config/
ln -s ~/git/dotfiles/.config/redshift.conf ~/.config/redshift.conf

# newsbeuter
rm ~/.newsbeuter/config
mkdir -p ~/.newsbeuter/
ln -s  ~/git/dotfiles/.newsbeuter/config ~/.newsbeuter/config
