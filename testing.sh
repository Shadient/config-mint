# ESSENTIALS
sudo apt install build-essential gzip
source ~/.bashrc

# INSTALL LANGUAGES
  # Python3
  sudo pacman -S python-pip
  
  # Node & NPM
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
  source ~/.bashrc
  nvm install --lts
  source ~/.bashrc
  npm install -g npm@8.13.2
  
  # Rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  source ~/.bashrc
  cargo --version

# TERMINAL EMULATOR
  git clone https://github.com/alacritty/alacritty.git
  cd alacritty
  cargo build --release
