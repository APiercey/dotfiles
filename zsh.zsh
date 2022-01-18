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
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_ignore_space

