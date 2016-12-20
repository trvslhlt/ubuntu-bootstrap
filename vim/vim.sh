#!/bin/bash

if [ -e ~/.vim/bundle/Vundle.vim ]; then
    echo "FOUND vim plugin manager"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "SETUP vim plugin manager"
fi

if [ -e $HOME/.vimrc ]; then
    echo "FOUND vim configuration"
else
    cat ./vim/.vimrc >> $HOME/.vimrc
    vim +PluginInstall +GoInstallBinaries +qall
    echo "CONFIGURED vim"
fi

