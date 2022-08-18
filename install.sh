## ESSENTIAL DEBIAN PACKAGES
  sudo apt install ripgrep build-essential git cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev -y
  source ~/.bashrc

## INSTALL LANGUAGES
  ## Python3
  sudo apt install python3-pip -y
  
  ## Node & NPM
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
  source ~/.bashrc
  nvm install --lts
  source ~/.bashrc
  
  ## Rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  source ~/.bashrc
  cargo --version
  
## HACK FONT
  sudo apt install fonts-hack-ttf -y
  fc-cache -f -v
  mkdir Hack
  cd Hack
  wget https://raw.githubusercontent.com/Shadient/config-mint/main/fonts/hack-fonts.txt
  wget -i hack-fonts.txt
  rm hack-fonts.txt
  cd ~
  
## NERD FONTS
  #git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
  #cd nerd-fonts
  #./install.sh
  #cd ~

## TERMINAL EMULATOR
  ## install
  git clone https://github.com/alacritty/alacritty.git
  cd alacritty
  cargo build --release
  ## terminfo
  sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
  ## Desktop entry
  sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
  sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
  sudo desktop-file-install extra/linux/Alacritty.desktop
  sudo update-desktop-database
  ## Manual Page
  sudo mkdir -p /usr/local/share/man/man1
  gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
  gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
  cd ~
  ## Config file
  mkdir ~/.config/alacritty
  wget -P ~/.config/alacritty https://raw.githubusercontent.com/Shadient/config-mint/main/alacritty/alacritty.yml
  
## NEOVIM
  ## install
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  sudo mv nvim.appimage /usr/local/bin/nvim
  mkdir .config/nvim
  ## nvchad
  git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
  ## custom
  cd .config/nvim
  mkdir lua/custom
  cp examples/init.lua lua/custom/init.lua
  cp examples/chadrc.lua lua/custom/chadrc.lua
  curl https://raw.githubusercontent.com/Shadient/config-mint/main/neovim/init.lua > lua/custom/init.lua
  cd ~
  
## I3
  #sudo apt install i3 -y
  #mkdir -p ~/.config/i3
  #touch ~/.config/i3/config
  
## MORE DEBIAN PACKAGES
  sudo apt install vlc gparted audacity blander qbittorrent htop okular kate virtualbox flameshot actiona pokemmo-installer balena-etcher-electron brave-browser -y

## SSD OPTIMIZATION


