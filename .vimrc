set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'moria'
Plugin 'derekwyatt/vim-scala'
Plugin 'elzr/vim-json'
Plugin 'chase/vim-ansible-yaml'

call vundle#end()            " required
filetype plugin indent on    " required

map , :tabprevious<cr>
map . :tabnext<cr>

let moria_style='black'
color moria

set nowrap

set foldmethod=syntax
set foldnestmax=10
set foldlevel=2

set guifont=Monospace\ 10
set complete-=i
set complete-=t

set history=1000
syntax enable

set formatoptions=croq

set showmode
set showcmd
set nomodeline

set expandtab
set ts=4
set shiftwidth=4
set softtabstop=4
set tabstop=4
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
