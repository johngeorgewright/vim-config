#!/usr/bin/env sh
cd $HOME && \
git clone https://github.com/johngeorgewright/vim-config.git .vim && \
cd .vim && \
git submodule update --init && \
cd bundle/vimproc && \
make && \
cd $HOME && \
ln -s .vim/.vimrc

