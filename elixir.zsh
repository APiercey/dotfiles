export ELIXIR_LS=$HOME/dotfiles/elixir-ls

fmd(){
  mix dialyzer | grep -v -e "Callback info about" -e "Unknown type 'Elixir" -e "Unknown function 'Elixir" -e "Unknown function elixir" -e "Unknown function hackney" -e "Unknown function prometh" -e "Unknown type elixir"
}

alias mtw="mix test.watch"
alias mtws="mix test.watch --stale"
