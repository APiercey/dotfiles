# zmodload zsh/zprof
source ~/dotfiles/zim.zsh

export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/bin
export PATH="$HOME/.tfenv/bin:$PATH"
export PATH=$PATH:~/.platformio/penv/bin
export PATH=$PATH:~/.local/bin/flutter/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Main config files
source ~/dotfiles/zsh.zsh

# Setup Files
source ~/dotfiles/fzf.zsh
source ~/dotfiles/asdf.zsh
source ~/dotfiles/direnv.zsh
source ~/dotfiles/tmuxinator.zsh
source ~/dotfiles/aptitude.zsh
source ~/dotfiles/brew.zsh
source ~/dotfiles/bitwarden.zsh
source ~/dotfiles/git.zsh
source ~/dotfiles/nvim.zsh
source ~/dotfiles/tmux.zsh
source ~/dotfiles/docker.zsh
source ~/dotfiles/web_search.zsh
source ~/dotfiles/forgit.zsh
source ~/dotfiles/fancy-ctrl-z.zsh

# Language files
source ~/dotfiles/elixir.zsh
source ~/dotfiles/python.zsh
source ~/dotfiles/go.zsh
source ~/dotfiles/ruby.zsh

# Aliases
alias weather="curl wttr.in/Berlin"
alias ll='ls -lhaG'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias profile='repeat 5 time zsh -i -c exit'
alias zshconfig="vim ~/.zshrc"
alias qrubocop='git add --refresh .; git diff --name-only origin/master --diff-filter=d | grep .rb | xargs rubocop -A'

# Functions

# Bindings
bindkey '^z' fancy-ctrl-z

# Machine specific setup
[ -f ~/.custom.zsh ] && source ~/.custom.zsh

# Java just _needs_ to be last...
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# zprof
