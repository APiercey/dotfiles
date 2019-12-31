set_bindings() {
  tmux bind-key -T copy-mode-vi DoubleClick1Pane \
      select-pane \\\; \
      send-keys -X select-word \\\; \
      send-keys -X copy-pipe "xclip -in -sel primary"

  tmux bind-key -n DoubleClick1Pane \
      select-pane \\\; \
      copy-mode -M \\\; \
      send-keys -X select-word \\\; \
      send-keys -X copy-pipe "xclip -in -sel primary"

  tmux bind-key -T copy-mode-vi TripleClick1Pane \
      select-pane \\\; \
      send-keys -X select-line \\\; \
      send-keys -X copy-pipe "xclip -in -sel primary"

  tmux bind-key -n TripleClick1Pane \
      select-pane \\\; \
      copy-mode -M \\\; \
      send-keys -X select-line \\\; \
      send-keys -X copy-pipe "xclip -in -sel primary"
}

main() {
  set_bindings
}

main

