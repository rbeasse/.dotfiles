#!/bin/bash

cd $HOME
git clone https://github.com/rbeasse/.dotfiles.git
cd $HOME/.dotfiles

./bin/dotfiles config
./bin/dotfiles install terminal

echo ".dotfiles has been setup."