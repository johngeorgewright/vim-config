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

What comes bundled?
-------------------

- [Ack](https://github.com/mileszs/ack.vim)
- [CoffeeScript](https://github.com/kchmck/vim-coffee-script)
- [CSS Color](https://github.com/skammer/vim-css-color)
- [CSS3 Syntax](https://github.com/hail2u/vim-css3-syntax)
- [Ctrl-P](https://github.com/kien/ctrlp.vim) - NOTE: Ctrl-P uses a feature to reset the working directory to the selected file's nearest repo ancestor. This is pretty annoying for svn users so I've turned it off.
- [Easy Motion](https://github.com/Lokaltog/vim-easymotion)
- [Handlebars](https://github.com/nono/vim-handlebars)
- [Instant Markdown](https://github.com/suan/vim-instant-markdown)
- [Jade](https://github.com/digitaltoad/vim-jade)
- [JSLint](https://github.com/hallettj/jslint.vim) - NOTE: This is turned off by default. Use `:JSLintToggle` to enable it per buffer.
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

### JSLint.vim

To use this plugin you may need to install a JavaScript engine if you haven't already got one. I'd recommend node.js, otherewise there's spidermonkey or rhino.

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

