export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
#
# Compile completions once a day
autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

alias zshconfig="vim ~/.zshrc"

setopt INC_APPEND_HISTORY
