#!/bin/sh
cp .vimrc $HOME/.vimrc
BUNDLEDIR="$HOME/.vim/bundle"
if [ ! -x $BUNDLEDIR ]; then
    mkdir -p $BUNDLEDIR
fi
VUNDLEPATH="$HOME/.vim/bundle/Vundle.vim"
if [ ! -x $VUNDLEPATH ]; then
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
