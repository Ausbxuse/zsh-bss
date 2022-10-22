#!/usr/bin/env bash

sudo apt update
sudo apt upgrade
sudo apt-add-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install git zsh neovim
sudo dpkg -i fd.deb

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo chsh -s zsh
sudo ln -s /usr/bin/fd /usr/bin/fd-find
git clone https://github.com/ausbxuse/nvim

sudo mkdir -P /usr/share/zsh/plugins
sudo git clone https://github.com/zdharma-continuum/fast-syntax-highlighting /usr/share/zsh/plugins/

mkdir ~/.config/
cp -r zsh ~/.config/

cp .zshrc ~/

