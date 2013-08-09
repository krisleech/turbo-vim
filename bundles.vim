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
Bundle "mileszs/ack.vim"
Bundle "scrooloose/nerdtree"
Bundle "kien/ctrlp.vim"

" Utility
Bundle "tpope/vim-surround"
Bundle "Townk/vim-autoclose"
Bundle "tomtom/tcomment_vim"
Bundle "vim-scripts/ZoomWin"
Bundle "ervandew/supertab"
Bundle "gmarik/snipmate.vim"
Bundle "airblade/vim-rooter"
Bundle "vim-scripts/YankRing.vim"
Bundle "epmatsw/ag.vim.git"
Bundle "kshenoy/vim-signature"

" Rails
Bundle "tpope/vim-rails"
Bundle "tpope/vim-haml"
Bundle "cakebaker/scss-syntax.vim"
Bundle "kchmck/vim-coffee-script"

" Ruby
if exists("$rvm_path")
  Bundle "tpope/vim-rvm"
end
Bundle "tpope/vim-endwise"
Bundle "kana/vim-textobj-user"
Bundle "nelstrom/vim-textobj-rubyblock"

" Git
Bundle "tpope/vim-fugitive"
Bundle "airblade/vim-gitgutter.git"

" Tmux
Bundle "benmills/vimux"
Bundle "jgdavey/vim-turbux"

" Misc
" Bundle 'yesmeck/tips.vim'

filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim    
