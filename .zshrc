# zmodload zsh/zprof
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/bin
export PATH="$HOME/.tfenv/bin:$PATH"

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
source ~/dotfiles/zsh-256color.zsh
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
alias qrubocop='git add --refresh .; git diff --name-only origin/master | grep .rb | xargs rubocop -A'

# Prezto
source ~/dotfiles/.zprezto/init.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=59'

# Functions

# Bindings
bindkey '^z' fancy-ctrl-z
source $HOME/.fzf/shell/key-bindings.zsh

# Machine specific setup
# 

export PATH=$PATH:~/.platformio/penv/bin
[ -f ~/.custom.zsh ] && source ~/.custom.zsh

# zprof
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
