#!/bin/bash

cd $HOME
git clone git@github.com:rbeasse/.dotfiles.git
cd $HOME/.dotfiles

./bin/dotfiles config
./bin/dotfiles install terminal

echo ".dotfiles has been setup."