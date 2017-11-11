" Pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" I use Vim, not Vi
set nocompatible

" GVim
colorscheme default
set background=dark

" Status
set ls=2

" Airline
let g:airline#extensions#tabline#enabled = 1

" Gundo
nnoremap <F4> :GundoToggle<CR>

" Syntax
filetype plugin on
syntax on
au BufNewFile,BufRead .bowerrc set filetype=json
au BufNewFile,BufRead .eslintrc set filetype=json
au BufNewFile,BufRead *.conf set filetype=apache
au BufNewFile,BufRead Jakefile set filetype=javascript
au BufNewFile,BufRead *.jpt set filetype=xml
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.tag setlocal ft=javascript
set efm=jade:%f:%l:%c:%t:%m
set efm=pug:%f:%l:%c:%t:%m
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['eslint']

" Enable per-directory .exrc files
set exrc

" Eye candy
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
let &showbreak='↪ '
set linebreak

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
au BufNewFile,BufReadPost *.ls setl foldmethod=indent
au BufNewFile,BufReadPost *.haml setl foldmethod=indent
au BufNewFile,BufReadPost *.jade setl foldmethod=indent
au BufNewFile,BufReadPost *.pug setl foldmethod=indent
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
au Syntax clojure IndentGuidesDisable
au Syntax !clojure IndentGuidesEnable

" Rainbow Parentheses
" let g:rbpt_colorpairs = [
"     \ ['red',         'tomato'],
"     \ ['brown',       'peru'],
"     \ ['blue',        'LightSkyBlue'],
"     \ ['gray',        'snow2'],
"     \ ['green',       'LightGreen'],
"     \ ['magenta',     'HotPink'],
"     \ ['cyan',        'LightCyan'],
"     \ ['darkred',     'firebrick'],
"     \ ['darkblue',    'RoyalBlue3'],
"     \ ['darkgreen',   'MediumSeaGreen'],
"     \ ['darkmagenta', 'magenta'],
"     \ ['darkcyan',    'DarkCyan'],
"     \ ]
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
let g:rainbow_conf = {
    \   'guifgs': ['tomato', 'peru', 'LightSkyBlue', 'AntiqueWhite2', 'LightGreen', 'HotPink', 'LightYellow', 'firebrick1', 'RoyalBlue3', 'MediumSeaGreen', 'magenta', 'DarkCyan'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       }
    \   }
    \}
let g:rainbow_active = 1

" Nerd Tree
map <S-F2> :NERDTreeTabsToggle<CR>
map <F2> :NERDTreeFocusToggle<CR>

" Opening files
set suffixesadd=.coffee,.js

" javascript concealers
" let g:javascript_conceal_function   = "ƒ"
" let g:javascript_conceal_null       = "ø"
" let g:javascript_conceal_this       = "@"
" let g:javascript_conceal_return     = "⇚"
" let g:javascript_conceal_undefined  = "¿"
" let g:javascript_conceal_NaN        = "ℕ"
" let g:javascript_conceal_prototype  = "¶"
" let g:javascript_conceal_static     = "•"
" let g:javascript_conceal_super      = "Ω"

" Buffer switching
nnoremap <A-n> :bnext<CR>
nnoremap <A-p> :bprevious<CR>

" Getting NERDTree and Startify to play nice
autocmd VimEnter *
    \   if !argc()
    \ |   Startify
    \ |   NERDTree
    \ |   wincmd w
    \ | endif
let NERDTreeHijackNetrw = 0

" Project Management
" let g:project_use_nerdtree = 1
" set rtp+=~/.vim/bundle/project
