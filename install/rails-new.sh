#!/bin/bash

# rails-new
# https://github.com/rails/rails-new
if [ -f /usr/local/bin/rails-new ]; then
  echo 'rails-new is already installed'
else
  cd $HOME/.dotfiles
  curl -sL https://github.com/rails/rails-new/releases/download/v0.4.1/rails-new-x86_64-unknown-linux-gnu.tar.gz | tar xz
  sudo chmod +x rails-new
  sudo chown root:root rails-new
  sudo mv rails-new /usr/local/bin/rails-new
fi