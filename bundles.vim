set nocompatible               " be iMproved
filetype off                   " must be off before Vundle has run

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Color schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ColorSchemeMenuMaker'
Plugin 'rainux/vim-desert-warm-256'

" Files
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Utility
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/ZoomWin'
Plugin 'ervandew/supertab'
" Plugin "Valloric/YouCompleteMe"
Plugin 'gmarik/snipmate.vim'
Plugin 'airblade/vim-rooter'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'nathanaelkane/vim-indent-guides'

if executable('ag')
  Plugin 'epmatsw/ag.vim.git'
elseif executable('ack')
  Plugin 'mileszs/ack.vim'
endif

Plugin 'kshenoy/vim-signature'

" Rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-cucumber'

" Ruby
if exists("$rvm_path")
  Plugin 'tpope/vim-rvm'
end
Plugin 'tpope/vim-endwise'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'lucapette/vim-ruby-doc'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter.git'

" Tmux
Plugin 'benmills/vimux'
Plugin 'jgdavey/vim-turbux'

call vundle#end()
filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim
