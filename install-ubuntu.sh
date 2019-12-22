# Add neovim to aptitude
sudo add-apt-repository ppa:neovim-ppa/stable

# sudo apt-get install -y zsh neovim ranger neomutt tmux weechat taskwarrior direnv offlineimap notmuch wget screenfetch jq python-pip dirmngr gpg curl
sudo apt-get install -y zsh neovim ranger neomutt tmux weechat taskwarrior offlineimap notmuch wget jq gpg curl
sudo apt-get install -y \
  automake autoconf libreadline-dev \
  libncurses-dev libssl-dev libyaml-dev \
  libxslt-dev libffi-dev libtool unixodbc-dev 

sudo snap install bw

# Install Dropbox
# cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

# Install Bat
curl -O -J -L https://github.com/sharkdp/bat/releases/download/v0.10.0/bat-musl_0.10.0_amd64.deb
sudo dpkg -i bat-musl_0.10.0_amd64.deb
rm bat-musl_0.10.0_amd64.deb

# Install zplug 
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Set shell
chsh -s $(which zsh)

