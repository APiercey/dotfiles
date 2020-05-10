export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# export ZGEN_HOME=$HOME/.zgen

# Set fpath for customizations
fpath=(
  # "$HOME/.zsh/pure"
  $fpath
)

# Compile completions once a day
autoload -Uz compinit

for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C

alias zshconfig="vim ~/.zshrc"
