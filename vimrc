" abstractOwl's vim file
" ----------------------

set nocompatible
filetype off "req'd for vundle

" Vundle commands
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'editorconfig/editorconfig-vim'

filetype plugin on
filetype plugin indent on

" set screen
set ruler mousehide

" set formatting
set encoding=utf-8
set tabstop=4 shiftwidth=4 expandtab
set cindent
set showmatch matchpairs+=<:>

"search options
set incsearch hlsearch

" Molokai
syntax on
set t_Co=256
set background=dark
silent! color molokai

" Powerline stuff
set laststatus=2
