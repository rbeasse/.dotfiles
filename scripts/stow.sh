#!/bin/bash

# stow
# https://www.gnu.org/software/stow/
if [ -f /usr/local/bin/stow ]; then
  echo 'stow is already installed'
else
  sudo apt install -y build-essential

  curl -sL https://ftp.gnu.org/gnu/stow/stow-2.4.0.tar.gz | tar xz
  cd stow-2.4.0/

  # Build and configure application
  ./configure
  make
  sudo make install

  rm -rf ../stow-2.4.0
fi