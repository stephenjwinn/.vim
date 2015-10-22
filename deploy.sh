#!/bin/bash
# Deploy vim

# Symlink Me, Bruh
ln -sf ~/.vim/.vimrc ~/.vimrc

# Get Dat Silver Searcher
apt-get -q -y install silversearcher-ag

# Reinstall Vundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim

# Install the goodies.
vim +PluginInstall +qall
