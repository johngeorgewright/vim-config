My personal VIM configuration
=============================

Installation
------------

### Linux

```sh
cd ~
git clone https://github.com/johngeorgewright/vim-config.git .vim
ln -s ./.vim/.vimrc
ln -s ./.vim/.jslint
cd .vim
git submodule init
git submodule update
```

### Windows

```bat
cd C:\Users\[you]
git clone https://github.com/johngeorgewright/vim-config.git vimfiles
mklink _vimrc vimfiles\_vimrc
mklink .jslint vimfiles\.jslint
cd vimfiles
git submodule init
git submodule update
```

Configuration
-------------

This config will install [splice](http://sjl.bitbucket.org/splice.vim/) which is awesome for git merging. Set git up:

```
# ~/.gitconfig
[merge]
  tool = splice

[mergetool "splice"]
  cmd = "gvim -f $BASE $REMOTE $MERGED -c 'SpliceInit'"
  trustExitCode = true
```

As a note, if you're using GVim on Ubuntu, you may find you get some errors about attaching GVim's menu when running it off the command line. To fix this, simply add this alias to your `~/.bashrc` configuration:

```sh
# GViM has a bug adding it's menu to ubunut when running from the command line
# ... lets turn it off.
alias gvim='gvim -f "$@" & true'
```

What comes bundled?
-------------------

- [Ack](https://github.com/mileszs/ack.vim)
- [CoffeeScript](https://github.com/kchmck/vim-coffee-script)
- [CSS Color](https://github.com/skammer/vim-css-color)
- [CSS3 Syntax](https://github.com/hail2u/vim-css3-syntax)
- [Ctrl-P](https://github.com/kien/ctrlp.vim)
- [Easy Motion](https://github.com/Lokaltog/vim-easymotion)
- [Handlebars](https://github.com/nono/vim-handlebars)
- [Jade](https://github.com/digitaltoad/vim-jade)
- [JSLint](https://github.com/hallettj/jslint.vim)
- [Less](https://github.com/groenewege/vim-less)
- [MRU](https://github.com/vim-scripts/mru.vim)
- [Mustache](https://github.com/juvenn/mustache.vim)
- [Snipmate](https://github.com/msanders/snipmate.vim)
- [Sparkup](https://github.com/tristen/vim-sparkup)
- [Splice](https://github.com/sjl/splice.vim)
- [Stylus](https://github.com/wavded/vim-stylus)
- [Surround](https://github.com/tpope/vim-surround)
- [tComment](https://github.com/vim-scripts/tComment)
- [TypeScript](https://github.com/leafgarland/typescript-vim)


