#!/bin/bash

cd $HOME
git clone git@github.com:rbeasse/.dotfiles.git
export PATH=$HOME/.dotfiles/bin:$PATH

echo ".dotfiles has been setup."
echo " - Run 'dotfiles install' to install stow and any terminal options."
echo " - Run 'dotfiles config' to have stow set up our config."