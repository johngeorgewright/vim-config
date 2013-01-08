" GVim
if has('gui_running')
  colorscheme desert
endif

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" Syntax
syntax on
au BufNewFile,BufRead *.conf set filetype=apache
au BufNewFile,BufRead Jakefile set filetype=javascript
au BufNewFile,BufRead *.jpt set filetype=xml
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

" JSLint
au BufNewFile,BufRead * if &ft == 'javascript' | let b:jslint_disabled = 1 | endif

" CoffeeScript
let coffee_compile_vert = 1
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

" CtrlP
let g:ctrlp_working_path_mode = 0

