set shell=bash

set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'derekwyatt/vim-scala'
Plugin 'chase/vim-ansible-yaml'
Plugin 'vim-syntastic/syntastic'
Plugin 'elzr/vim-json'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'

call vundle#end()            " required
filetype plugin indent on    " required

map , :tabprevious<cr>
map . :tabnext<cr>

syntax enable
colorscheme Tomorrow-Night

let g:syntastic_check_on_open=1

set wrap
set linebreak
set nolist

set textwidth=0
set wrapmargin=0

set foldmethod=syntax
set foldnestmax=10
set foldlevel=2

set guifont=Monospace\ 10
set complete-=i
set complete-=t

set history=1000

set formatoptions=croq

set showmode
set showcmd
set nomodeline

set expandtab
set ts=2
set shiftwidth=2
set softtabstop=2
set tabstop=2
set shiftround
set autoindent
set backspace=2

set ruler

set wildmode=longest:full,full
set wildmenu

set ignorecase
set smartcase
set incsearch
set hlsearch

set number

autocmd BufWritePre * %s/\s\+$//e
au BufRead,BufNewFile *.yml set filetype=ansible
au BufRead,BufNewFile *.yaml set filetype=ansible

autocmd filetype crontab setlocal nobackup nowritebackup
