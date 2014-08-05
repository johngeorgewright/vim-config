" Pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" I use Vim, not Vi
set nocompatible

" GVim
if has('gui_running')
"   colorscheme jellybeans
"   colorscheme busybee
"   colorscheme camo
  colorscheme Tomorrow-Night-Eighties
  set guioptions=m
else
  colorscheme default
  set background=dark
endif

" Status
set ls=2

" Airline
let g:airline#extensions#tabline#enabled = 1

" Gundo
nnoremap <F4> :GundoToggle<CR>

" Syntax
filetype plugin on
syntax on
au BufNewFile,BufRead .bowerrc set filetype=javascript
au BufNewFile,BufRead *.conf set filetype=apache
au BufNewFile,BufRead Jakefile set filetype=javascript
au BufNewFile,BufRead *.jpt set filetype=xml
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
set efm=jade:%f:%l:%c:%t:%m
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Enable per-directory .exrc files
set exrc

" Hidden chars
set list
set listchars=tab:→→,trail:·,extends:>,precedes:<

" Eye candy
set cursorline
let &showbreak='↪ '
set guicursor+=a:blinkon0

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set pastetoggle=<F5>
au FileType make setlocal noexpandtab
filetype plugin indent on
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Windows
" Full width AND height window
if bufwinnr(1)
  map <C-W>* <C-W>_<C-W>\|
endif

" Line numbers
set number

" Automatically open up quick fix windows
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Searching
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
let g:EasyMotion_smartcase = 1

" Leader
let mapleader = ","

" Disable unsafe commands in local .vimrc files
set secure 

" Matchit
runtime macros/matchit.vim

" CoffeeScript
let coffee_compile_vert = 1
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent
au BufNewFile,BufReadPost *.haml setl foldmethod=indent
au BufNewFile,BufReadPost *.jade setl foldmethod=indent
au BufNewFile,BufReadPost *.yml setl foldmethod=indent
au BufNewFile,BufReadPost *.yaml setl foldmethod=indent

" CtrlP
let g:ctrlp_clear_cache_on_exit=1
let g:ctrlp_max_height=40
let g:ctrlp_show_hidden=0
let g:ctrlp_follow_symlinks=1
let g:ctrlp_working_path_mode=0
let g:ctrlp_max_files=20000
let g:ctrlp_custom_ignore = {
  \ 'file': '\.pyc$',
  \ 'dir': '\v(node_modules|venv)',
  \ }

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

" Nerd Tree
map <F2> :NERDTreeToggle<CR>

" TagList
map <F3> :Tlist<CR>

" Opening files
set suffixesadd=.coffee,.js

