# ESSENTIALS
  sudo apt install build-essential git cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev
  source ~/.bashrc

# INSTALL LANGUAGES
  ## Python3
  sudo apt install python3-pip
  
  ## Node & NPM
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
  source ~/.bashrc
  nvm install --lts
  source ~/.bashrc
  
  ## Rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  source ~/.bashrc
  cargo --version

# TERMINAL EMULATOR
  git clone https://github.com/alacritty/alacritty.git
  cd alacritty
  cargo build --release
  ## terminfo
  infocmp alacritty
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
  ## Fix Font
  cd /
  cd /usr/share/fonts/truetype/
  mkdir hack
  cd hack
  wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete.ttf
  wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/BoldItalic/complete/Hack%20Bold%20Italic%20Nerd%20Font%20Complete.ttf
  wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Italic/complete/Hack%20Italic%20Nerd%20Font%20Complete.ttf
  wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
  cd ~
  fc-cache -f -v
  echo 
