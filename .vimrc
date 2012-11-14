" GVim
if has('gui_running')
  colorscheme desert
  set guifont="Consolas Medium 10"
endif

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" Syntax
syntax on
au BufNewFile,BufRead *.conf set filetype=apache
set efm=jade:%f:%l:%c:%t:%m
filetype plugin on

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set pastetoggle=<f5>
au FileType make setlocal noexpandtab
filetype plugin indent on

" Line numbers
set number

" Searching
set incsearch

" Leader
let mapleader = ","
let maplocalleader = "\\"

" CoffeeScript
let coffee_compile_vert = 1
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

