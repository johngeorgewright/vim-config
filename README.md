My personal VIM configuration
=============================

Installation
------------

Firstly make sure you have ruby 1.8.7 installed, NO HIGHER. One of the plugins cannot be created with any other version. You're best to try RVM.

```sh
cd ~
git clone origin https://github.com/johngeorgewright/vim-config.git .vim
ln -s ./.vim/.vimrc
ln -s ./.vim/.jslint
cd .vim
git submodule init
git submodule update
```

Make sure VIM has ruby support
```sh
vim --version | grep ruby
```

If you don't see `+ruby` then try installing `vim-gnome`.

Then complete the installation of Command-T:

```sh
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```

