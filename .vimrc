set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim

filetype off

execute pathogen#infect()

if has("win32")
    set rtp+=$VIM\vimfiles\bundle\vundle\
else
    set rtp+=~/.vim/bundle/vundle/
endif

call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'Gundo'
Plugin 'plasticboy/vim-markdown'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'PProvost/vim-ps1'
Plugin 'vim-scripts/Scons-compiler-plugin'
Plugin 'Valloric/ListToggle'

Plugin 'chriskempson/base16-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'w0ng/vim-hybrid'

if !has("win32")
    Plugin 'Valloric/YouCompleteMe'
endif

call vundle#end()

filetype plugin indent on

let g:syntastic_check_on_open=1
let g:syntastic_aggregate_errors=1
let g:syntastic_always_populate_loc_list=1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:syntastic_cpp_checkers=['oclint', 'cpplint', 'gcc']
"let g:syntastic_debug=1
let g:ycm_collect_identifiers_from_tags_files = 1

if !has("gui_running")
  let g:airline_powerline_fonts = 1
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"set rtp-=~/.vim/bundle/YouCompleteMe

set tags=./tags,tags;$HOME

if has("win32")
    source $VIMRUNTIME/mswin.vim
    behave mswin

    set backupdir=D:\Data\Vim\Backups
    set directory=D:\Data\Vim

    set guifont=Lucida_Sans_Typewriter:h10
else
    set backupdir=./.backup,/tmp
    set directory=./.backup,/tmp
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
    set lines=55 columns=180
endif

syntax on
"if !has("gui_running")
    "let g:solarized_termcolors=256
"endif
if !has("win32") || has("gui_running")
    set background=dark
    colorscheme solarized
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
set shiftwidth=2
set softtabstop=2
set tabstop=2
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

" unimpared for de keyboard
nmap < [
nmap > ]
omap < [
omap > ]
xmap < [
xmap > ]

nnoremap <F5> :GundoToggle<CR>
nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>

autocmd BufReadPre SConstruct set filetype=python
autocmd BufReadPre SConscript set filetype=python

autocmd BufWritePre *.{h,cpp} :%s/\s\+$//e

autocmd bufwritepost .vimrc source $MYVIMRC
autocmd bufwritepost _vimrc source $MYVIMRC

let g:netrw_altv=1
let g:NERDTreeWinPos = "left"
let g:nerdtree_tabs_open_on_console_startup=2
