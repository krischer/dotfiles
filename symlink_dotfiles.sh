#!/usr/bin/env sh

# Symlink all zsh files.
ln -s -f -v `pwd`/zsh/zshenv ~/.zshenv
ln -s -f -v `pwd`/zsh/zshrc ~/.zshrc
ln -s -f -v `pwd`/zsh/zlogout ~/.zlogout

# Symlink the vim files.
ln -s -f -v `pwd`/vim/vimrc ~/.vimrc
ln -s -f -v `pwd`/vim ~/.vim

# The folder is enough as an alias in the zshrc will alias the tmux command to
# using the provided tmux.conf inside the folder.
ln -s -f -v `pwd`/tmux ~/.tmux

