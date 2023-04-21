#!/bin/bash

# Update and upgrade packages
sudo apt-get update
sudo apt-get upgrade -y

# Install required packages
sudo apt-get install -y curl
sudo apt-get install -y unzip
sudo apt-get install -y gcc
sudo apt-get install -y clang
sudo apt-get install -y npm
sudo apt-get install -y python3-pip
sudo apt-get install -y cmake
sudo apt-get install -y make
sudo apt-get install -y nodejs
sudo apt-get install -y ripgrep
sudo apt-get install -y pkg-config
sudo apt-get install -y libtool-bin
sudo apt-get install -y libc6-dev
sudo apt-get install -y lua5.1
sudo apt-get install -y lua5.1-dev
sudo apt-get install -y lua-mpack
sudo apt-get install -y fd-find
sudo apt-get install -y fzf tree-sitter
sudo apt-get install -y xclip universal-ctags
sudo apt-get install -y clangd
sudo apt-get install -y cargo
sudo apt-get install -y fuse
sudo apt-get install -y gdb
sudo apt install python3.10-venv -y 

# Update and upgrade packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Neovim appImage binary
wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# Create a symbolic link for Neovim
sudo ln -s /usr/local/bin/nvim /usr/bin/nvim

# Install helix appImage binary
wget https://github.com/helix-editor/helix/releases/download/23.03/helix-23.03-x86_64.AppImage
chmod u+x helix-23.03-x86_64.AppImage
sudo mv helix-23.03-x86_64.AppImage /usr/local/bin/hx

# Create a symbolic link for helix
sudo ln -s /usr/local/bin/hx /usr/bin/hx

# Set Neovim as the default editor
echo 'export VISUAL=nvim' >> ~/.bashrc
echo 'export EDITOR=nvim' >> ~/.bashrc
source ~/.bashrc

# Install pip package for Neovim
pip3 install pynvim

# Clone NvChad and open Neovim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
git clone https://github.com/pierrelgol/workspace.git
https://github.com/pierrelgol/script.git


# Add everything to the PATH
echo 'export PATH="$PATH:/usr/local/bin"' >> ~/.bashrc
source ~/.bashrc

# Reload the shell
exec $SHELL
