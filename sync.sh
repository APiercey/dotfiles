# .local/share
mkdir ~/.local
mkdir ~/.local/share
(ln -sf ~/dotfiles/.local/share ~/.local/share)

# .config
mkdir ~/.config
(ln -sf ~/dotfiles/.config/htop ~/.config/htop)
(ln -sf ~/dotfiles/.config/kitty ~/.config/kitty)
(ln -sf ~/dotfiles/.config/bat ~/.config/bat)


# dotfiles
(ln -sf ~/dotfiles/.zshrc ~/)
(ln -sf ~/dotfiles/.weechat ~/)
(ln -sf ~/dotfiles/.mutt ~/)
(ln -sf ~/dotfiles/.notmuch-config ~/)
(ln -sf ~/dotfiles/.neomuttrc ~/)
(ln -sf ~/dotfiles/.tmux.conf ~/)
(ln -sf ~/dotfiles/.taskrc ~/)
(ln -sf ~/dotfiles/.oh-my-zsh ~/)
(ln -sf ~/dotfiles/.asdf ~/)
(ln -sf ~/dotfiles/.tmux ~/)
(ln -sf ~/dotfiles/.bin ~/)
(ln -sf ~/dotfiles/.neomuttrc ~/)
(ln -sf ~/dotfiles/.offlineimaprc ~/)
(ln -sf ~/dotfiles/.tool-versions ~/)
(ln -sf ~/dotfiles/.zgen ~/)
(ln -sf ~/dotfiles/.asdf ~/)

# Ranger setup - because its a bit more specific
mkdir ~/.config/ranger
(ln -sf ~/dotfiles/.config/ranger ~/.config/ranger)
(ln -sf ~/dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf)
(ln -sf ~/dotfiles/.config/ranger/scope.sh ~/.config/ranger/scope.sh)
(ln -sf ~/dotfiles/.config/ranger/rifle.conf ~/.config/ranger/rifle.conf)
