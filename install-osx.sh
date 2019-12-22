# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Brew to help with tooling
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew tap caskroom/fonts
brew tap homebrew/cask-fonts

# Install
brew install zsh 
brew install zsh-completions
brew install zgen
brew install neovim
brew install font-hack-nerd-font
brew install bat
brew cask install font-meslo-nerd-font-mono
brew cask install font-meslo-for-powerline
brew install fswatch
brew install ranger
brew install fpp
# Set shell
chsh -s $(which zsh)

pip3 install bugwarrior
