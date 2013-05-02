" Pathogen
call pathogen#infect()
call pathogen#helptags()

" GVim
if has('gui_running')
  colorscheme tango2
else
  set background=dark
endif

" Syntax
syntax on
au BufNewFile,BufRead *.conf set filetype=apache
au BufNewFile,BufRead Jakefile set filetype=javascript
au BufNewFile,BufRead *.json set filetype=javascript
au BufNewFile,BufRead *.jpt set filetype=xml
set efm=jade:%f:%l:%c:%t:%m
filetype plugin on

" Enable per-directory .exrc files
set exrc

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set pastetoggle=<f5>
au FileType make setlocal noexpandtab
filetype plugin indent on

" Windows
" Full width AND height window
if bufwinnr(1)
  map <C-W>* <C-W>_<C-W>\|
endif

" Line numbers
set number

" Searching
set incsearch

" Leader
let mapleader = ","

" Disable unsafe commands in local .vimrc files
set secure 

" Matchit
runtime macros/matchit.vim

" CoffeeScript
let coffee_compile_vert = 1
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

" CtrlP
let g:ctrlp_working_path_mode = 0

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

