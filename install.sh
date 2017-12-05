#!/bin/sh
git submodule update --init
cp .vimrc $HOME/.vimrc
VIMDIR="$HOME/.vim"
if [ ! -x $VIMDIR ]; then
    mkdir $VIMDIR
fi
cp -rf ./nerdtree/autoload \
		./nerdtree/doc  \
		./nerdtree/lib  \
		./nerdtree/plugin \
		./vim-colors-solarized/colors \
		$VIMDIR
