# fuzzy find bitwarden items
if command -v bw > /dev/null 2>&1 \
   command -v fzf > /dev/null 2>&1; then
  fbw() {
    check_fzf;
    bw list items  | jq -c ".[] |  { id: .id, name: .name, username: .login.username, password: .login.password, uris: .uris  }" | fzf --preview-window down:70 --preview="echo {} | jq -r '.'" | jq '.' 
  }
fi


