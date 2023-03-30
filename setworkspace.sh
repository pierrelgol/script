#!/bin/bash

# Update and upgrade packages
sudo apt-get update
sudo apt-get upgrade -y

# Install required packages
sudo apt-get install -y curl unzip wget gcc clang npm python3-pip cmake make nodejs git ripgrep pkg-config libtool-bin libc6-dev lua5.1 lua5.1-dev lua-mpack fd-find fzf tree-sitter xclip universal-ctags clangd
# Install Neovim appImage binary
wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# Set Neovim as the default editor
echo 'export VISUAL=nvim' >> ~/.bashrc
echo 'export EDITOR=nvim' >> ~/.bashrc
source ~/.bashrc

# Install pip package for Neovim
pip3 install pynvim

# Install Rustup and Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Create the workspace directory
mkdir -p ~/workspace

# Clone NvChad and open Neovim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# Add everything to the PATH
echo 'export PATH="$PATH:/usr/local/bin"' >> ~/.bashrc
source ~/.bashrc

# Reload the shell
exec $SHELL
