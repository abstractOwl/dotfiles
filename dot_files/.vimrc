" abstractOwl's vim file
" ----------------------

set nocompatible
filetype off "req'd for vundle

runtime macros/matchit.vim

" Vundle commands
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin on
filetype plugin indent on

" set screen
set ruler mousehide
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

" set formatting
set encoding=utf-8
set ts=4 sw=4 sts=4 et
set cindent
set showmatch matchpairs+=<:>

" search options
set incsearch hlsearch

" save file as root
cmap w!! w !sudo tee > /dev/null %

" misc
set showmatch
set showcmd
set hidden
set wildmode=longest,list

" Molokai
syntax on
set t_ut=
set t_Co=256
set background=dark
silent! color molokai

" Powerline stuff
set laststatus=2

" Remove vim bg when using transparent term
" hi Normal ctermbg=NONE

