set nocompatible               " be iMproved

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

filetype off                   " must be off before Vundle has run

set runtimepath+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'

" Color schemes
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ColorSchemeMenuMaker'
Bundle 'desert-warm-256'

" Files
Bundle "git://github.com/mileszs/ack.vim.git"
Bundle "git://github.com/scrooloose/nerdtree.git"
Bundle "git://github.com/kien/ctrlp.vim.git"

" Utility
Bundle "git://github.com/tpope/vim-surround.git"
Bundle "git://github.com/Townk/vim-autoclose.git"
Bundle "tComment"
Bundle "git://github.com/vim-scripts/ZoomWin.git"
Bundle "git://github.com/ervandew/supertab.git"
Bundle "git://github.com/gmarik/snipmate.vim.git"

" Rails
Bundle "git://github.com/tpope/vim-rails.git"

" Ruby
Bundle "git://github.com/tpope/vim-rvm.git"
Bundle "git://github.com/tpope/vim-endwise.git"
Bundle "git://github.com/kana/vim-textobj-user.git"
Bundle "git://github.com/nelstrom/vim-textobj-rubyblock.git"

" Git
Bundle "git://github.com/tpope/vim-fugitive"

" Tmux
Bundle "git://github.com/jgdavey/tslime.vim.git"
Bundle "git://github.com/jgdavey/vim-turbux.git"

" UI
Bundle 'git://github.com/altercation/vim-colors-solarized.git'



" Bundle "git://github.com/cakebaker/scss-syntax.vim.git"
" Bundle "git://github.com/tpope/vim-haml.git"
" Bundle "git://github.com/kchmck/vim-coffee-script.git"

" Bundle "git://github.com/tpope/vim-bundler.git"


" Bundle "git://github.com/sophacles/vim-bundle-sparkup.git"
" Bundle "git://github.com/panozzaj/vim-autocorrect.git"
" Bundle "git://github.com/sjl/gundo.vim.git"
" Bundle "git://github.com/clones/vim-fuzzyfinder.git"
" Bundle "git://github.com/godlygeek/tabular.git"
" Bundle "git://github.com/vim-scripts/Gist.vim.git"
" Bundle "git://github.com/vim-scripts/L9.git"
" Bundle "jQuery"
" Bundle "git://github.com/pangloss/vim-javascript.git"
" Bundle "git://github.com/tpope/vim-markdown.git"
" Bundle "git://github.com/greyblake/vim-preview.git"

filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim    
