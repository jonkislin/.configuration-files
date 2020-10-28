#!/bin/sh

# Move to your home folder
cd $HOME/.opineconfig

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install custom zsh theme: lambda-gitster
git clone https://github.com/ergenekonyigit/lambda-gitster.git
cd lambda-gitster
cp lambda-gitster.zsh-theme ~/.oh-my-zsh/custom/themes

# Symlink everything
ln -sf ./.vim ~/.vim
ln -sf ./.zshrc ~/.zshrc
ln -sf ./.dir_colors ~/.dir_colors
ln -sf ./.aliases ~/.aliases

# Setup vim
vim +PlugInstall +qa

# Source zsh config, which handles all else
source ~/.zshrc