#!/usr/bin/env sh
cd $HOME && \
git clone https://github.com/johngeorgewright/vim-config.git .vim && \
cd .vim && \
git submodule update --init && \
cd bundle/vimproc && \
make && \
echo "runtime .vimrc" > $HOME/.vimrc
echo "\" Project Management" >> $HOME/.vimrc
echo "call project#rc(\"~/Workspace\")" >> $HOME/.vimrc
echo "\" See https://github.com/amiorin/vim-project#configure on configuring projects" >> $HOME/.vimrc

echo "runtime .gvimrc" > $HOME/.gvimrc
echo "set guifont=Sauce\\ Code\\ Powerline\\ Plus\\ Nerd\\ File\\ Types:h13" >> $HOME/.gvimrc
echo "let g:airline_powerline_fonts=1" >> $HOME/.gvimrc

