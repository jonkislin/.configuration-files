#!/bin/sh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symlink everything
CONFIG_ROOT="$( cd "$(dirname "$0")" ; pwd -P )"
ln -sf $CONFIG_ROOT/.vim ~/.vim
ln -sf $CONFIG_ROOT/.tmux.conf ~/.tmux.conf
ln -sf $CONFIG_ROOT/.zshrc ~/.zshrc
ln -sf $CONFIG_ROOT/.dir_colors ~/.dir_colors

# Setup vim
vim +PlugInstall +qa

