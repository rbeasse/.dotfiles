alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

export PATH=$HOME/.dotfiles/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export TERM=xterm-256color

if [ -f /usr/local/bin/eza ]; then
  alias ls='eza -lh --group-directories-first'
fi

if [ -f /usr/local/bin/bat ]; then
  alias cat='bat'
fi

if [ -f /usr/local/bin/fzf ]; then
  eval "$(fzf --bash)"
fi

source $HOME/.bashprompt

cd ~
