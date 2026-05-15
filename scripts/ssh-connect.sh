#!/bin/bash

SSH_HOSTS=$(cat $HOME/.ssh/config | grep "Host " | cut -d " " -f 2 | sort)
# FZF_OPTIONS='--style full --ansi --no-multi'
FZF_OPTIONS="--ansi --no-multi --style=minimal --layout=reverse --border=rounded --tmux=center,80%,80% --height=100%"
FZF_OPTS="--height=80% --layout=reverse --border=rounded --border-label=Host --tmux=center,10%,30% --margin=10%,30%"

CHOSEN=$(echo "$SSH_HOSTS" | fzf $FZF_OPTS)

if [[ -z "$CHOSEN" ]]; then
  echo "No host chosen. Exiting..."
  exit
else
  echo "Remoting into $CHOSEN..."
  ssh "$CHOSEN"
fi
