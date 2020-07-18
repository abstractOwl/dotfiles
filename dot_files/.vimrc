" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc                                                  "
"                                                         "
" author: abstractOwl <https://github.com/abstractOwl>    "
"                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Enable Vim/Vi incompatibilities
set nocompatible


"" Vundle Plugins """""""""""""""""""""""""""""""""""""""""
filetype off "req'd for vundle
runtime macros/matchit.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'


"" General Plugins """"""""""""""""""""""""""""""""""""""""
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'matchit.zip'
"Plugin 'scrooloose/nerdtree'
Plugin 'kovisoft/slimv'
Plugin 'rstacruz/sparkup'
"Plugin 'wincent/command-t'


"" Clojure-specific """""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-highlight'


"" Themes """"""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin on
filetype plugin indent on


"" Set Opts """"""""""""""""""""""""""""""""""""""""""""""
set ruler mousehide

" Search options
set incsearch hlsearch

" Set formatting
set encoding=utf-8
set ts=4 sw=4 sts=4 et
set cindent
set showmatch matchpairs+=<:>

"""" Misc
set showmatch showcmd hidden wildmode=longest,list


"" Mappings """"""""""""""""""""""""""""""""""""""""""""""

"""" Tabs
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

"""" Map Leader to Space
let mapleader = "\<SPACE>"

"""" Unmap command history
map q: <nop>

"""" Save file as root
cmap w!! w !sudo tee > /dev/null %


"" Plugin Settings """""""""""""""""""""""""""""""""""""""

"""" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"""" Molokai
syntax on
set t_ut=
set t_Co=256
set background=dark
silent! color jellybeans

"""" Powerline stuff
set laststatus=2

"""" EasyMotion
map <Leader> <Plug>(easymotion-prefix)

"""" Lisp opts
au FileType lisp let b:loaded_delimitMate = 0
let g:lisp_rainbow=1
let g:slimv_disable_clojure=1

"""" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" Misc Improvements """"""""""""""""""""""""""""""""""""""

"""" Mark when exceeding 80 columns
highlight ColorColumn ctermbg=yellow
call matchadd('ColorColumn', '\%81v', 100)

"""" Visually indicate match clearer
nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <silent> N N:call HLNext(0.4)<cr>
function! HLNext (blinktime)
    set invcursorline
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 500) . 'm'
    set invcursorline
    redraw
endfunction

"""" Highlight bad whitespace (tabs and trailing)
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"""" Toggle numbering style
""""   (absolute in Insert, relative everywhere else)
set relativenumber nonumber
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber  nonumber

"""" Remove vim bg when using transparent term
" hi Normal ctermbg=NONE

