# .config
mkdir -p ~/.config
(ln -sf ~/dotfiles/.config/htop ~/.config/htop)
(ln -sf ~/dotfiles/.config/bat ~/.config/bat)

# dotfiles
(ln -sf ~/dotfiles/.zshrc ~/)
(ln -sf ~/dotfiles/.weechat ~/)
(ln -sf ~/dotfiles/.tmux.conf ~/)
(ln -sf ~/dotfiles/.tmux ~/)
(ln -sf ~/dotfiles/.bin ~/)

# Ranger setup - because its a bit more specific
mkdir -p ~/.config/ranger
(ln -sf ~/dotfiles/.config/ranger ~/.config/ranger)
(ln -sf ~/dotfiles/.config/kitty ~/.config/)
(ln -sf ~/dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf)
(ln -sf ~/dotfiles/.config/ranger/scope.sh ~/.config/ranger/scope.sh)
(ln -sf ~/dotfiles/.config/ranger/rifle.conf ~/.config/ranger/rifle.conf)
