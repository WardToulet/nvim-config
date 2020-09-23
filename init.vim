" Set leader
let mapleader = "/<Space>"

" File detection & syntax
filetype plugin indent on

syntax on

" Relative line numbers
set number relativenumber

set backspace=indent,eol,start
set hidden

" No swap and backupfiles
set noswapfile
set nobackup
set writebackup

" Env
let $RTP=split(&runtimepath,',')[0]
let $RC="$HOME/.config/nvim/init.vim"

" Load plugins
source $HOME/.config/nvim/plugins.vim

" Set colorscheme
colorscheme gruvbox
