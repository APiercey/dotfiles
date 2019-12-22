if ! command -v nvim > /dev/null 2>&1; then
  return 0;
fi

alias vim="nvim"
alias vimconfig="vim ~/.config/nvim/init.vim"
alias diary='vim -c "VimwikiMakeDiary" -c "Goyo"'
alias clearvim="rm -rf $HOME/.local/share/nvim/swap/"

# Preferred editor for local and remote sessions
export EDITOR='nvim'
