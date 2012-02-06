" Pathogen to auto install plugins in ~/vim/bundle
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

syntax on
call pathogen#infect() 

" Show line numbers
set number

" Enable mouse scrolling in console vim
set mouse=a

" Tab stuff
set tabstop=4
set shiftwidth=4
set expandtab

" Enable backspace outside of newly inserted text
set nocompatible

filetype plugin indent on

syntax on
