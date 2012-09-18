My personal VIM configuration
=============================

Installation
------------

```sh
cd ~
git clone origin https://github.com/johngeorgewright/vim-config.git .vim
ln -s ./.vim/.vimrc
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

