" =============================================================================
" # Editor settings
" =============================================================================

filetype plugin indent on
set noerrorbells
set autoindent
set encoding=utf-8
set hidden
set nowrap
set nojoinspaces

" Use wide tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

" Permanent undo
set undodir="~/.vim/undodir
set undofile
set noswapfile

" =============================================================================
" # Graphical settings
" =============================================================================

set backspace=2
set number
set colorcolumn=90
set mouse=a

" =============================================================================
" # Plugings!
" =============================================================================

call plug#begin('~/.vim/plugged')

" Base16 colorschemes
Plug 'chriskempson/base16-vim'

" Language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'plasticboy/vim-markdown'
Plug 'dag/vim-fish'

call plug#end()

" =============================================================================
" # Colors
" =============================================================================

if !has('gui_running')
    set t_Co=256
endif

if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
    set termguicolors
endif

let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
set background=dark
syntax enable
