#!/bin/sh
git submodule update --init
cp .vimrc $HOME/.vimrc
BUNDLEDIR="$HOME/.vim/bundle"
if [ ! -x $BUNDLEDIR ]; then
    mkdir -p $BUNDLEDIR
fi
cp -rf ./Vundle.vim ./nerdtree ./vim-colors-solarized $BUNDLEDIR
