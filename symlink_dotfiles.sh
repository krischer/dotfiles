#!/usr/bin/env sh

NOW=`date +"%FT%T"`

for DIR in .zshenv .zshrc .zlogout .vimrc .vim .tmux .pylintrc .astylerc .gitignore_global
do
    mv $DIR ${DIR}.$NOW
done

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

# All the misc rc files
ln -s -f -v `pwd`/misc_rc_files/pylintrc ~/.pylintrc
ln -s -f -v `pwd`./misc_rc_files/astylerc ~/.astylerc

# Link git stuff
ln -s -f -v `pwd`/git/gitignore_global ~/.gitignore_global