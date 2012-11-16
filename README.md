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

