﻿set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim

filetype off

execute pathogen#infect()

if has("win32")
    set rtp+=$VIM\vimfiles\bundle\vundle\
else
    set rtp+=~/.vim/bundle/vundle/
endif

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-abolish'
Bundle 'Gundo'
Bundle 'plasticboy/vim-markdown'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'PProvost/vim-ps1'
Bundle 'vim-scripts/Scons-compiler-plugin'
Bundle 'Valloric/ListToggle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/base16-vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'cschlueter/vim-campfire'

if !has("win32")
    Bundle 'Valloric/YouCompleteMe'
endif

filetype plugin indent on

let g:syntastic_check_on_open=1
let g:syntastic_aggregate_errors=1
let g:syntastic_always_populate_loc_list=1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:syntastic_cpp_checkers=['oclint', 'cpplint', 'gcc']
"let g:syntastic_debug=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"set rtp-=~/.vim/bundle/YouCompleteMe

if has("win32")
    source $VIMRUNTIME/mswin.vim
    behave mswin

    set backupdir=D:\Data\Vim\Backups
    set directory=D:\Data\Vim

    set guifont=Lucida_Sans_Typewriter:h10
else
    set guifont=Liberation\ Mono\ 11
endif

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

if has("gui_running")
    set lines=50 columns=120
endif

syntax on
if !has("win32") || has("gui_running")
    set background=dark
    colorscheme jellybeans
endif

set number

set list
set listchars=tab:▸\ ,eol:¬

set incsearch
set hlsearch

set ignorecase
set smartcase

"set smartindent
set autoindent

set ruler
set showcmd

set foldenable
set foldlevel=100
set foldmethod=indent

set mouse=a
set mousemodel=popup

set hidden

set guioptions-=T

set ch=1

set mousehide
set nowrap

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
autocmd FileType make setlocal noexpandtab
autocmd FileType cpp setlocal shiftwidth=2 softtabstop=2 tabstop=2

set statusline=%<%f%h%m%r\ %{&encoding}\ %l/%L,%c\ %{SyntasticStatuslineFlag()}
set laststatus=2

set showmatch
set history=200

"set iskeyword=@,48-57,_,192-255

set wildmenu

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

nnoremap <F5> :GundoToggle<CR>

autocmd BufReadPre SConstruct set filetype=python
autocmd BufReadPre SConscript set filetype=python

autocmd bufwritepost .vimrc source $MYVIMRC
autocmd bufwritepost _vimrc source $MYVIMRC

