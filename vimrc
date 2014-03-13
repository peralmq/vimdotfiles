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
au BufNewFile,BufRead *.tac set filetype=python
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 colorcolumn=120

au BufNewFile,BufRead *.hamlc set filetype=haml

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
set noshowcmd
set scrolljump=5

" Ignore the follwing files in ctrlp
set wildignore+=*.pyc,*.orig,*.egg-info
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Let ctrlp keep searching from where vim was started
let g:ctrlp_working_path_mode = ''

let g:syntastic_python_checkers=['flake8'] " pylint, pyflake, macbe

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1

if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column -w'
end

" Go
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
autocmd BufWritePre *.go Fmt

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" Bundles!
Bundle 'Valloric/YouCompleteMe'
Bundle 'derekwyatt/vim-scala'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-haml'
Bundle 'mileszs/ack.vim'
Bundle 'JazzCore/ctrlp-cmatcher'
filetype plugin indent on
