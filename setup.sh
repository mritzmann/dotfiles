#!/bin/bash
# https://github.com/mritzmann/dotfiles

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

# apt-dater
mkdir -p ~/.config/apt-dater/
rm ~/.config/apt-dater/hosts.xml
ln -s ~/git/dotfiles-privat/.config/apt-dater/hosts.xml ~/.config/apt-dater/hosts.xml
