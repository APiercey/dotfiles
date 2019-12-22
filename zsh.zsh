export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ZGEN_HOME=$HOME/.zgen

# Set fpath for customizations
fpath=(
  "$HOME/.zsh/pure"
  $fpath
)

# Compile completions once a day
autoload -Uz compinit

for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C

# ZGEN


# Old plugins I would like to use in the future
# zgen oh-my-zsh plugins/docker
# zgen oh-my-zsh plugins/docker-compose
# zgen oh-my-zsh plugins/mix

source $ZGEN_HOME/zgen.zsh

if ! zgen saved; then
  zgen prezto

	zgen load MichaelAquilina/zsh-you-should-use
	zgen load wfxr/forgit
	zgen load gusaiani/elixir-oh-my-zsh
	zgen load mafredri/zsh-async
  zgen load zsh-users/zsh-autosuggestions
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-history-substring-search
  zgen load chrissicool/zsh-256color
  zgen load yukiycino-dotfiles/fancy-ctrl-z

  zgen save
fi

bindkey '^z' fancy-ctrl-z

ZSH_THEME=""

alias zshconfig="vim ~/.zshrc"
