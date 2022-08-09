# build essential
sudo apt install build-essential
source ~/.bashrc

# INSTALL LANGUAGES
  # Python3
  # Node & NPM
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
  source ~/.bashrc
  nvm install --lts
  source ~/.bashrc
  npm install -g npm@8.13.2
  # Rust
