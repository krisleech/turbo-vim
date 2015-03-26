set nocompatible               " be iMproved
filetype off                   " must be off before Vundle has run

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Color schemes
Plugin 'rainux/vim-desert-warm-256'
Plugin 'flazz/vim-colorschemes'

" clojure
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
" Plugin 'guns/vim-clojure-static' " not needed on 7.4
Plugin 'guns/vim-clojure-highlight'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'kien/rainbow_parentheses.vim'


" Files
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Utility
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/ZoomWin'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-rooter'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'nathanaelkane/vim-indent-guides'

if executable('ag')
  Plugin 'epmatsw/ag.vim.git'
elseif executable('ack')
  Plugin 'mileszs/ack.vim'
endif


" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter.git'

" Tmux
Plugin 'benmills/vimux'
Plugin 'jgdavey/vim-turbux'

call vundle#end()
filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim
