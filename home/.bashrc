alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

cd ~

if [ -f /usr/local/bin/eza ]; then
  alias ls='eza -lh --group-directories-first'
fi

if [ -f /usr/local/bin/bat ]; then
  alias cat='bat'
fi

if [ -f ~/.local/bin/zoxide ]; then
  eval "$(zoxide init bash)"

  alias cd='z'
fi

if [ -f /usr/local/bin/fzf ]; then
  eval "$(fzf --bash)"
fi

if [ -f /usr/local/bin/starship ]; then
  eval "$(starship init bash)"
fi

export PATH=$HOME/.dotfiles/bin:$PATH