My personal VIM configuration
=============================

Installation
------------

```sh
cd ~
git clone origin https://github.com/johngeorgewright/vim-config.git .vim
ln -s ./.vim/.vimrc
ln -s ./.vim/.jslint
cd .vim
git submodule init
git submodule update
```

This config will install [splice](http://sjl.bitbucket.org/splice.vim/) which is awesome for git merging. Set git up:

```
# ~/.gitconfig
[merge]
  tool = splice

[mergetool "splice"]
  cmd = "gvim -f $BASE $REMOTE $MERGED -c 'SpliceInit'"
  trustExitCode = true
```

