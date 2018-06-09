#!/bin/bash
# https://github.com/mritzmann/dotfiles

# oh my zsh
rm ~/.zshrc
ln -s ~/git/dotfiles/zshrc ~/.zshrc

# ms visual studio code
rm ~/.config/Code/User/settings.json
ln -s ~/git/dotfiles/mscode.json ~/.config/Code/User/settings.json
