#!/bin/sh

# Move to your home folder
cd $HOME/.opineconfig

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symlink everything
ln -sf ./.vim ~/.vim
ln -sf ./.tmux.conf ~/.tmux.conf
ln -sf ./.zshrc ~/.zshrc
ln -sf ./.dir_colors ~/.dir_colors
ln -sf ./.aliases ~/.aliases

# Setup vim
vim +PlugInstall +qa

