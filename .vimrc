" Pathogen
call pathogen#infect()

" Syntax
syntax on
au BufNewFile,BufRead *.conf set filetype=apache

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set pastetoggle=<f5>
au FileType make setlocal noexpandtab
filetype plugin indent on

" Searching
set incsearch

