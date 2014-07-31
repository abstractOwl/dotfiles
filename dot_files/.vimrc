" abstractOwl's vim file
" ----------------------

set nocompatible
filetype off "req'd for vundle

runtime macros/matchit.vim

" Vundle commands
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"Plugins
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'matchit.zip'
"Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup'
"Plugin 'git://git.wincent.com/command-t.git'

"Themes
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()

filetype plugin on
filetype plugin indent on

" set screen
set ruler mousehide
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

" unmap command history
map q: <nop>

" map Leader to space
let mapleader = "\<SPACE>"

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

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
silent! color jellybeans

" Powerline stuff
set laststatus=2

" EasyMotion
map <Leader> <Plug>(easymotion-prefix)

" Color when exceeding 80 columns
highlight ColorColumn ctermbg=yellow
call matchadd('ColorColumn', '\%81v', 100)

" Highlight next match
nnoremap <silent> n   n:call HLNext(0.4)<cr>
nnoremap <silent> N   N:call HLNext(0.4)<cr>

function! HLNext (blinktime)
    set invcursorline
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 500) . 'm'
    set invcursorline
    redraw
endfunction

" Highlight tabs and trailing whitespace
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" Toggle numbering style (absolute in Insert mode, relative everywhere else)
set relativenumber nonumber
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber  nonumber

" Remove vim bg when using transparent term
" hi Normal ctermbg=NONE

