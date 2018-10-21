#!/bin/bash
# https://github.com/mritzmann/dotfiles

# apt-dater
mkdir -p ~/.config/apt-dater/
rm ~/.config/apt-dater/hosts.xml
ln -s ~/git/dotfiles-privat/.config/apt-dater/hosts.xml ~/.config/apt-dater/hosts.xml
