# Setup fzf
# ---------
if [[ ! "$PATH" == */home/i.yildiz/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/i.yildiz/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/i.yildiz/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/i.yildiz/.fzf/shell/key-bindings.zsh"
