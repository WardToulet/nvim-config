"  _   _         __     ___              ____             __ _       
" | \ | | ___  __\ \   / (_)_ __ ___    / ___|___  _ __  / _(_) __ _ 
" |  \| |/ _ \/ _ \ \ / /| | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |
" | |\  |  __/ (_) \ V / | | | | | | | | |__| (_) | | | |  _| | (_| |
" |_| \_|\___|\___/ \_/  |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |
"                                                              |___/ 
" Ward Toulet <ward@toulet.net>
" 17-11-2020

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

" Set env
let $RTP=split(&runtimepath,',')[0]
let $RC="$HOME/.config/nvim/init.vim"

" Load plugins
source $HOME/.config/nvim/plugins.vim

" Set colorscheme
colorscheme gruvbox
