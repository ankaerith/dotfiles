autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
set formatoptions-=cro
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'tpope/vim-sensible'
Bundle 'vim-scripts/bash-support.vim'
Bundle 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
if has("gui_macvim")
  syntax enable
  set background=dark
  set hlsearch
  set hidden
  set history=1000
  set undolevels=1000
  set guifont=Menlo:h14
  colorscheme solarized
  set ai
  set ruler
  set relativenumber
  set number
  set shiftwidth=2
  set tabstop=2
  set autoindent
  " Use spaces instead of tabs
  set expandtab
"  set transparency=8
endif
let g:BASH_AuthorName   = 'Matthew Staver'
let g:BASH_Email        = 'mstaver@verdantservices.com'
let g:BASH_Company      = 'Verdant Services, Inc.'
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
autocmd VimEnter * wincmd p
