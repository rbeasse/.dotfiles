#!/bin/bash

# eza
# https://github.com/eza-community/eza
if [ -f /usr/local/bin/eza ]; then
  echo 'eza is already installed'
else
  cd $HOME/.dotfiles
  curl -sL https://github.com/eza-community/eza/releases/download/v0.18.17/eza_x86_64-unknown-linux-gnu.tar.gz | tar xz
  sudo chmod +x eza
  sudo chown root:root eza
  sudo mv eza /usr/local/bin/eza
fi

# bat
# https://github.com/sharkdp/bat
if [ -f /usr/local/bin/bat ]; then
  echo 'bat is already installed'
else
  cd $HOME/.dotfiles
  curl -sL https://github.com/sharkdp/bat/releases/download/v0.24.0/bat-v0.24.0-x86_64-unknown-linux-gnu.tar.gz | tar xz
  cd bat-*/
  sudo chmod +x bat
  sudo chown root:root bat
  sudo mv bat /usr/local/bin/bat
  rm -rf ../bat-*/
fi

# fzf
# https://github.com/junegunn/fzf
if [ -f /usr/local/bin/fzf ]; then
  echo 'fzf is already installed'
else
  cd $HOME/.dotfiles
  curl -sL https://github.com/junegunn/fzf/releases/download/0.53.0/fzf-0.53.0-linux_amd64.tar.gz | tar xz
  sudo chmod +x fzf
  sudo chown root:root fzf
  sudo mv fzf /usr/local/bin/fzf
fi
