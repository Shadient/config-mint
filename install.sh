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
  #sudo mkdir -p /usr/local/share/man/man1
  #gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
  #gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
  ## Shell Completion
  #mkdir -p ~/.bash_completion
  #cp extra/completions/alacritty.bash ~/.bash_completion/alacritty
  #echo "source ~/.bash_completion/alacritty" >> ~/.bashrc
