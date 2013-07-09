" Pathogen
call pathogen#infect()
call pathogen#helptags()

" GVim
if has('gui_running')
  colorscheme jellybeans
  set guioptions=m
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

" Line character limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Automatically open up quick fix windows
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

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
let g:ctrlp_clear_cache_on_exit=1
let g:ctrlp_max_height=40
let g:ctrlp_show_hidden=0
let g:ctrlp_follow_symlinks=1
let g:ctrlp_working_path_mode=0
let g:ctrlp_max_files=20000

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

" Nerd Tree
map <F2> :NERDTreeToggle<CR>

