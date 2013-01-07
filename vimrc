" Pathogen to auto install plugins in ~/vim/bundle
call pathogen#infect()

" When vimrc is edited, reload vim
au! BufWritePost .vimrc source $MYVIMRC
autocmd BufRead,BufNewFile *.tac set filetype=python
au BufRead,BufNewFile *.hamlc set filetype=haml

" Make is possible to delete previous entries with backspace
set backspace=indent,eol,start

set number " Show line numbers
set ruler " Show current position in status


" Don't use backup or swapfiles
set nobackup
set noswapfile

" Enable mouse scrolling in console vim
"set mouse=a

" Tab stuff
set tabstop=2
set shiftwidth=2
set expandtab

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4

" Enable backspace outside of newly inserted text
set nocompatible

" CommandT
let mapleader = ','

filetype plugin indent on

" Enable syntax highlighting
syntax on
set showmatch

" Set colorscheme
colorscheme wombat256mod
set t_Co=256

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Don't wrap lineendings
set nowrap

" Ignore the follwing files in CommandT
set wildignore+=*.pyc,*.orig,*.egg-info

" Highligh searches
set hlsearch

" See tabs
set list listchars=tab:\ \ ,trail:·

" write buffer when leaving
set autowrite

" show the current mode
set showmode

" Refresh files changed outside of vim if not changed in vim
set autoread

" Python (un)comment
map ,# :call CommentLineToEnd('#')<CR>+

" Folding on with indent
set foldmethod=indent
