My personal VIM configuration
=============================

What does it do to my Vim?
--------------------------

It adds the following configuration, you can override it if you wish (see [how](#i-like-some-of-your-configuration-but-i-want-some-of-my-own-too)).

1. Uses the desert theme when running Vim in a GUI.
2. Installs [Pathogen](https://github.com/tpope/vim-pathogen)
4. Uses the built in apache syntax for files with the extension _conf_.
5. Uses 2 spaces instead of tabs (except for Makefile's).
6. Uses _smartindent_.
7. Attaches a `:set paste` and `:set nopaste` toggle to &lt;F5&gt;.
8. Adds line numbers.
9. Turns on an option to move the view to search results while typing your search query.
10. Adds the ability to have .vimrc configuration per directories
11. Sets the &lt;Leader&gt; to `,`.
12. Installs a load of [plugins](#what-comes-bundled).

Installation
------------

### Linux

```sh
cd ~
git clone https://github.com/johngeorgewright/vim-config.git .vim
ln -s ./.vim/.vimrc
cd .vim
git submodule update --init
```

### Windows

```bat
cd C:\Users\[you]
git clone https://github.com/johngeorgewright/vim-config.git vimfiles
mklink _vimrc vimfiles\_vimrc
cd vimfiles
git submodule update --init
```

What comes bundled?
-------------------

- [Ack](https://github.com/mileszs/ack.vim)
- [Bufkill](http://www.vim.org/scripts/script.php?script_id=1147)
- [CoffeeScript](https://github.com/kchmck/vim-coffee-script)
- [CSS Color](https://github.com/skammer/vim-css-color)
- [CSS3 Syntax](https://github.com/hail2u/vim-css3-syntax)
- [Ctrl-P](https://github.com/kien/ctrlp.vim) - NOTE: Ctrl-P uses a feature to reset the working directory to the selected file's nearest repo ancestor. This is pretty annoying for svn users so I've turned it off.
- [Easy Motion](https://github.com/Lokaltog/vim-easymotion)
- [Fugitive](https://github.com/tpope/vim-fugitive.git)
- [Handlebars](https://github.com/nono/vim-handlebars)
- [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides.git)
- [Jade](https://github.com/digitaltoad/vim-jade)
- [Less](https://github.com/groenewege/vim-less)
- [Literal CoffeeScript](https://github.com/mintplant/vim-literate-coffeescript.git)
- [Markdown](https://github.com/tpope/vim-markdown.git) - This is mainly used for the literal coffee plugin
- [MRU](https://github.com/vim-scripts/mru.vim)
- [Mustache](https://github.com/juvenn/mustache.vim)
- [NerdTree](https://github.com/scrooloose/nerdtree) - This has been mapped to &lt;F2&gt;
- [RVM](https://github.com/tpope/vim-rvm)
- [Shell](https://github.com/johngeorgewright/shell.vim)
- [Slim](https://github.com/slim-template/vim-slim)
- [Snipmate](https://github.com/msanders/snipmate.vim)
- [Sparkup](https://github.com/tristen/vim-sparkup)
- [Splice](https://github.com/sjl/splice.vim)
- [Stylus](https://github.com/wavded/vim-stylus)
- [Surround](https://github.com/tpope/vim-surround)
- [Syntastic](https://github.com/scrooloose/syntastic)
- [tComment](https://github.com/vim-scripts/tComment)
- [TypeScript](https://github.com/leafgarland/typescript-vim)


I like some of your configuration, but I want some of my own too
----------------------------------------------------------------

That's fine, just `source` the config file and start adding your own stuff.

### Linux
```vim
" ~/.vimrc

runtime .vimrc

" Add your config here...
```

### Windows
```vim
" C:\Users\[you]\_vimrc

runtime _vimrc

" Add your config here...
```

