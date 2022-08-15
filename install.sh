## ESSENTIAL DEBIAN PACKAGES
  sudo apt install ripgrep build-essential git cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev fuse -y
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

## TERMINAL EMULATOR
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
  cd .config
  mkdir alacritty
  cd alacritty
  wget https://raw.githubusercontent.com/Shadient/config-mint/main/alacritty/alacritty.yml
  cd ~
  
## NEOVIM
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  sudo mv nvim.appimage /usr/local/bin/nvim
  mkdir .config/nvim
  git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
  cd .config/nvim
  mkdir lua/custom
  cp examples/init.lua lua/custom/init.lua
  cp examples/chadrc.lua lua/custom/chadrc.lua
  curl https://raw.githubusercontent.com/Shadient/config-mint/main/neovim/init.lua > lua/custom/init.lua
  cd ~
  
## I3
  sudo apt install i3 -y
  
## MORE DEBIAN PACKAGES
  # sudo apt install gparted blender 
