if ! command -v direnv > /dev/null 2>&1; then
  return 0;
fi

eval "$(direnv hook zsh)"

