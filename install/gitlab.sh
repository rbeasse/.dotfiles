#!/bin/bash

# glab
# https://gitlab.com/gitlab-org/cli
if [ -f /usr/local/bin/glab ]; then
  echo 'glab is already installed'
else
  cd $HOME/.dotfiles
  mkdir -p tmp
  curl -sL https://gitlab.com/gitlab-org/cli/uploads/eef9a74ea525453d0ea3334ad6aa41c2/glab_1.42.0_Linux_x86_64.tar.gz | tar xz -C tmp
  cd tmp/bin
  sudo chmod +x glab
  sudo chown root:root glab
  sudo mv glab /usr/local/bin/glab
  rm -rf $HOME/.dotfiles/tmp
fi