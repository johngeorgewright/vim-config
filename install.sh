#!/usr/bin/env sh

command()
{
  $@
  code=$?
  if [ $code -gt 0 ]
  then
    exit $code
  fi
}

command cd $HOME
command git clone https://github.com/johngeorgewright/vim-config.git .vim
command cd .vim
command git submodule update --init
command cd bundle/vimproc
command make

echo "runtime .vimrc" > $HOME/.vimrc
# echo "\" Project Management" >> $HOME/.vimrc
# echo "\" call project#rc(\"~/Workspace\")" >> $HOME/.vimrc
# echo "\" See https://github.com/amiorin/vim-project#configure on configuring projects" >> $HOME/.vimrc

echo "runtime .gvimrc" > $HOME/.gvimrc
echo "\" set guifont=Sauce\\ Code\\ Powerline\\ Plus\\ Nerd\\ File\\ Types:h13" >> $HOME/.gvimrc
echo "\" set guifont=Ubuntu\\ Mono\\ derivative\\ Powerline\\ 10" >> $HOME/.gvimrc
echo "let g:airline_powerline_fonts=1" >> $HOME/.gvimrc

