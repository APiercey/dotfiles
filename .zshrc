# zmodload zsh/zprof
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/bin

# Main config files
source ~/dotfiles/zsh.zsh

# For shell prompt
autoload -U promptinit; promptinit
prompt pure

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

# Language files
source ~/dotfiles/elixir.zsh
source ~/dotfiles/python.zsh
source ~/dotfiles/go.zsh

# Aliases
alias weather="curl wttr.in/Berlin"
alias ll='ls -lhaG'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias profile='repeat 5 time zsh -i -c exit'

# Functions

# Machine specific setup
[ -f ~/.custom.zsh ] && source ~/.custom.zsh

# zprof
