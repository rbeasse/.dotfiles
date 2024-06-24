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

# Helper function to execute a docker container, using fzf to find the container.
function dex() {
	CONTAINER=`docker ps | rg -v CONTAINER | awk '-F ' ' {print $NF}' | fzf`
	if [ ! -z $CONTAINER ]
	then
		docker exec -it $CONTAINER bash
	fi
}

# Helper function to log a docker container, using fzf to find the container.
function dlog() {
	CONTAINER=`docker ps | rg -v CONTAINER | awk '-F ' ' {print $NF}' | fzf`
	if [ ! -z $CONTAINER ]
	then
		docker logs -f $CONTAINER
	fi
}

source $HOME/.bashprompt

cd ~
