# Turbo VIM for Ruby/Rails

```
  _              _                   _
 | |_ _   _ _ __| |__   ___   __   _(_)_ __ ___
 | __| | | | '__| '_ \ / _ \  \ \ / / | '_ ` _ \
 | |_| |_| | |  | |_) | (_) |  \ V /| | | | | | |
  \__|\__,_|_|  |_.__/ \___/    \_/ |_|_| |_| |_|
```

Vim configuration with support for Ruby, Rspec, Rails, RVM and Git.

The aim is to support a terminal based workflow within a Tmux session allowing
specs to be run asynchronously.

## Requirements

Vim 7.3 or better
Tmux
Tested on MacOS and Linux with Bash, Zsh and Fish shells.

Introduction to Vim: http://blog.interlinked.org/tutorials/vim_tutorial.html

## Quick Install

This will install the vim configuration only:

    curl https://raw.github.com/krisleech/turbo-vim/master/bootstrap.sh -o - | sh

See later for full instructions for installing Tmux and Vim, as well as manual
installation of the vim configuration.

## Basic Mappings

The leader is mapped to `,`

### In Normal mode (`Esc` or `jj`)

`,p`     - File browser (NerdTree)

`,f`     - Find in Files (Ctrlp)

`Space`  - Search in buffer

`,a`     - Search in files

`,d`     - close buffer

`,D`     - close all buffers

`,Space` - Remove search highlighting

`//`     - Toggle comments (T-Comment)

`Tab`    - Next buffer

`Shift + Tab` - Previous buffer

`,,`     - Toggle between last two buffers

`,m`     - Jump to model

`,v`     - Jump to view

`,c`     - Jump to controller

`,rt`    - Generate tags for project and gems

### In Insert mode (`i`)

`jj` - Back to normal mode

`<tab>` - auto complete or expand snippet

See `.vimrc` for more.

## Plugins

### Rails

*Lots* of stuff - get to know this plugin!

`:A` - jump to/from test

`:Rmodel` - jump to model

`:Rview` - jump to view

`:help rails`

### vim-ruby-doc

Open documentation in a browser for the word under the cursor:

`RB` for Ruby

`RS` for RSpec

`RR` for Rails

### Turbux + Vimux (,t / ,T / ,tt)

`,t` - run all tests for current buffer

`,T` - run test for current line

`,tt` - run all tests

Runs specs in a tmux pane. Vim must be running in a tmux session for this to
work. If you already have the tmux window split it will send the command to run
the spec to that pane. Otherwise a new pane is created.

### ZoomWin (,z)

Zoom the current window if you have multiple splits.

Press `,z` again to toogle back to normal.

### ruby-block

Provides text-objects for Ruby blocks

`var` (visual around Ruby)

`vir` (visual inner Ruby)

`ar` / `ir` (expand/contract selection)

`cir` (change inner Ruby)

`dar` (delete around Ruby)

http://vimcasts.org/blog/2010/12/a-text-object-for-ruby-blocks/

### fugitive

Git integration

*Lots* of stuff

`gs` and press `-` to stage file under cursor

`gc` to commit changes, you will be prompted for a message

http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/

`:help fugitive`

### Ctrlp (,f)

Find files in your project with minimal keypresses

Search is fuzzy so `conadus` would find `controllers/admin/users`

`,f path_or_filename`

`Esc` - cancel

### tcomment (`//`)

Comment/Uncomment line

### yankring

Shows history of yanked (copied) text

After pasting (`p`) pressing `ctrl + p` will cycle through paste history

### ag (`,a`)

Search project for text (find in files)

`,a word`

`,a "some words"`

It uses `ag` if installed, otherwise `ack`.

### nerdtree (`,p`)             

Project file browser

`,p` opens file browser

`o` / `x` open and close files/folders

`m` menu to move/delete/copy files/folders

`?` Help

I use nerdtree for creating or moving files, but find CtrlP (`,p`) quicker for
opening files.

### surround (`ys`/`cs`/`ds`)

Allows adding/removing/changing of surroundings

I would highly recommend getting to know this plugin, it is very useful.
Especially when you grok text objects.

*Characters*

`ysiw)`    - surround inner word with `()`

`ysiw(`    - surround inner word with `(  )`

In the above example `iw` can be replaced with any text object or motion.

If you find yourself manually adding surroundings, stop and work out the
correct text object or motion.

`cs"'`     - change surrounding from `"` to `'`

`ds`       - delete surrounding

*HTML tags*

`yss<p>`  - surround line in `<p>` tags

`cst<div>` - change surround tag to `<div>`

### colorschemes

Lots of colourschemes, I like Solarized and desert-warm-256

`:set colorscheme desert-warm-256`

`:set background=dark`

`:set background=light`

If you have problems with colors not displaying correctly ensure you start tmux
in 256 colour mode: `tmux -2`.

### Indent Guides (`,ig`)

Show indent levels by way of vertical lines.

### fuzzyfinder (`,b`)

Find open buffer by path/filename

### vundle

Plugin manager and part of the reason why my vimfiles as so compact

## INSTALLATION

Note: If you are using RVM make sure you use system ruby before installation.
    
    rvm use system

Note: If you already have Vim installed ensure it has support for Ruby:

    vim --version | grep ruby

You should see `+ruby,` if you see `-ruby` you need to reinstall Vim with Ruby support

### Install Vim and Tmux (if not already installed)

As well as installing Tmux you can grab a good tmux configration from here:
https://github.com/krisleech/dotfiles/blob/master/common/tmux.conf

#### MacOS

    brew install vim --override-system-vim --enable-clipboard

Add `/usr/local/bin` before `/usr/bin` in your `$PATH` so you use the version of
vim installed by Homebrew, not the one that comes with MacOS.

    brew install tmux

#### Debian (Ubuntu, CrunchBang)

    apt-get install vim-nox
    apt-get install tmux

#### GNU/Linux from source

If you have an old GNU/Linux distro which does not have Vim 7.3 or better in its repos then install from source.

The configure options below leave out any GUI related features as I have only compiled Vim on a server.

Vim source is in a hg (Mercurial) repository so you need to install the hg
client first, e.g.  `sudo apt-get install mercurial`.

    hg clone https://vim.googlecode.com/hg/ vim
    cd vim/vim73
    ./configure
    ./configure --with-features=huge --enable-cscope --enable-pythoninterp --enable-rubyinterp --enable-perlinterp --enable-multibyte
    make
    sudo make install

This installs Vim to `/usr/local/bin,` check this is in your `$PATH` before `/usr/bin` which may contain an older system version of Vim.

If you get an error `no terminal library found` install `libncurses5-dev`.

### Install these vimfiles

Note: You will already have a `~/.vim` folder, either delete or move it.

    mv ~/.vim ~/.vim.old
    git clone https://github.com/krisleech/vimfiles ~/.vim
    cd ~/.vim
    rake install

or run:

    curl https://raw.github.com/krisleech/turbo-vim/master/bootstrap.sh -o - | sh

#### To update to the latest vimfiles

    cd ~/.vim
    rake update

#### Install Dependacies

*MacOS*

    brew install ack (ag is a better ack)
    brew install ag
    brew install ctags

Note: MacOS comes with the BSD version of ctags which is not compatible.

*Debian*

    sudo apt-get install exuberant-ctags
    sudo apt-get install the-silver-searcher (ag is a better ack)
    sudo apt-get install ack-grep
    sudo ln -s /usr/bin/ack-grep /usr/local/bin/ack

## Helpful Stuff

- http://github.com/krisleech/vimfiles/wiki
- http://walking-without-crutches.heroku.com/image/images/vi-vim-cheat-sheet.png
- http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/
- http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118
- http://stevelosh.com/blog/2010/09/coming-home-to-vim/#important-vimrc-lines
- `:help key-notation`
- http://vimcasts.org/

## Acknowledgments

- Tim Pope (of course) http://tpo.pe/
- https://github.com/carlhuda/janus
- https://github.com/rson/vimfiles/blob/master/plugins.vim
- https://github.com/codegram/vimfiles
- https://www.destroyallsoftware.com/file-navigation-in-vim.html
- https://github.com/alexreisner/dotfiles/blob/master/.vimrc
- https://github.com/docwhat/homedir-vim/blob/master/vimrc/.vimrc
- http://items.sjbach.com/319/configuring-vim-right
- https://github.com/sickill/dotfiles/blob/master/.vimrc
- #vim on freenode
 - woldrich
 - spiiph
