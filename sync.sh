# .local/share
mkdir -p ~/.local
mkdir -p ~/.local/share

# .config
mkdir -p ~/.config
(ln -sf ~/dotfiles/.config/htop ~/.config/htop)
(ln -sf ~/dotfiles/.config/kitty ~/.config/kitty)
(ln -sf ~/dotfiles/.config/bat ~/.config/bat)

# dotfiles
(ln -sf ~/dotfiles/.zshrc ~/)
(ln -sf ~/dotfiles/.weechat ~/)
(ln -sf ~/dotfiles/.tmux.conf ~/)
(ln -sf ~/dotfiles/.taskrc ~/)
(ln -sf ~/dotfiles/.asdf ~/)
(ln -sf ~/dotfiles/.tmux ~/)
(ln -sf ~/dotfiles/.bin ~/)
(ln -sf ~/dotfiles/.zgen ~/)
(ln -sf ~/dotfiles/.asdf ~/)

# Ranger setup - because its a bit more specific
mkdir -p ~/.config/ranger
(ln -sf ~/dotfiles/.config/ranger ~/.config/ranger)
(ln -sf ~/dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf)
(ln -sf ~/dotfiles/.config/ranger/scope.sh ~/.config/ranger/scope.sh)
(ln -sf ~/dotfiles/.config/ranger/rifle.conf ~/.config/ranger/rifle.conf)
