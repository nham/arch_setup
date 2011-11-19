set nocompatible

call pathogen#infect()
filetype plugin indent on

set showcmd
set encoding=utf-8
set hidden
set tabstop=4

syntax on
set background=dark
colorscheme solarized

map <Leader>we <Plug>VimwikiSplitLink
map <Leader>wq <Plug>VimwikiVSplitLink
nnoremap <Leader>ts "=strftime("%H:%M:%S")<CR>P
