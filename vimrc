" When vimrc is edited, reload vim
au! BufWritePost .vimrc source $MYVIMRC

" Make is possible to delete previous entries with backspace
set backspace=indent,eol,start

" Enable backspace outside of newly inserted text
set nocompatible

set number " Show line numbers
set ruler " Show current position in status

" Don't use backup or swapfiles
set nobackup
set noswapfile

" Tab stuff
set tabstop=2
set shiftwidth=2
set expandtab

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4

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

" Highligh searches
set hlsearch

" Search as you type
set incsearch

" See trailing whitespaces
set encoding=utf-8 " force encoding to utf-8
set list listchars=tab:\|\ ,trail:·

" show the current mode
set showmode

" Python (un)comment
map ,# :call CommentLineToEnd('#')<CR>+

" Folding on indent and open unfolded
set foldmethod=indent
set foldlevel=99

set visualbell
set lazyredraw

" Ignore the follwing files in ctrlp
set wildignore+=*.pyc,*.orig,*.egg-info

" Let ctrlp keep searching from where vim was started
let g:ctrlp_working_path_mode = ''

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" Bundles!
Bundle 'Valloric/YouCompleteMe'
Bundle 'kien/ctrlp.vim'
Bundle 'epmatsw/ag.vim'
Bundle 'scrooloose/syntastic'
Bundle 'pylint.vim'
Bundle 'kevinw/pyflakes-vim'
filetype plugin indent on
