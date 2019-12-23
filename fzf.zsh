[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# If FZF does not exist, don't continue
if ! command -v fzf > /dev/null 2>&1; then
  return 0;
fi

export FZF_BASE=$HOME/.fzf
export FZF_DEFAULT_OPTS="--multi --inline-info --height 80% --reverse --preview 'bat --color=always --theme=OneHalfDark --style=header,changes --line-range :300 {}'"

# finding
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

# Use FZF to switch Tmux sessions:
# bind-key s run "tmux new-window 'bash -ci fs'"
fs() {
	local -r fmt='#{session_id}:|#S|(#{session_attached} attached)'
	{ tmux display-message -p -F "$fmt" && tmux list-sessions -F "$fmt"; } \
		| awk '!seen[$1]++' \
		| column -t -s'|' \
		| fzf -q '$' --no-preview --reverse --prompt 'switch session: ' -1 \
		| cut -d':' -f1 \
		| xargs tmux switch-client -t
}

