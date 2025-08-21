# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sophie/.config/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/sophie/.config/fzf/bin"
fi

source <(fzf --zsh)
