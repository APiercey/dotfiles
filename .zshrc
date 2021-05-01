source ~/dotfiles/zim.zsh

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

# zmodload zsh/zprof
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/bin

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

# Functions

# Bindings
bindkey '^z' fancy-ctrl-z
# source $HOME/.fzf/shell/key-bindings.zsh

# Machine specific setup
# 

export PATH=$PATH:~/.platformio/penv/bin
export PATH=$PATH:~/.local/bin/flutter/bin
[ -f ~/.custom.zsh ] && source ~/.custom.zsh

# zprof
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
