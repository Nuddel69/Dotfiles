#
# Source: https://github.com/filip-rs/arch-dotfiles/blob/main/dotfiles/dot-zshrc
#

SESSIONS=(home dev school orbit)
FZF_OPTS="--height=80% --layout=reverse --border=rounded --border-label=Session --margin=10%,30%"

for s in "${SESSIONS[@]}"; do
  tmux has-session -t "$s" 2>/dev/null || tmux new-session -d -s "$s"
done

if !command -v tmux &>/dev/null; then
  echo "Tmux not installed. Exiting..."
  exit 1
fi

if [[ -n "$TMUX" ]]; then
  exit 0
fi

selection=$(
  {
    tmux list-sessions -F '#S'
    if [[ -z "$SSH_TTY" ]]; then
      echo "SSH"
    fi
    echo "DO NOTHING"
    echo "RESET"
  } |
    nl -w2 -s'. ' |
    fzf --no-sort $FZF_OPTS
)

selection="${selection#*. }"

if [[ "$selection" == "RESET" ]]; then
  tmux kill-server
  rm -f ~/.tmux/resurrect/*

  for s in "${SESSIONS[@]}"; do
    tmux new-session -d -s "$s"
  done

  exec tmux attach -t home

elif [[ "$selection" == "SSH" ]]; then
  exec $HOME/scripts/ssh-connect.sh

elif [[ "$selection" == "DO NOTHING" ]]; then
  exit 0

elif [[ -n "$selection" ]]; then
  exec tmux attach -t "$selection"

else
  exec tmux attach -t home
fi
