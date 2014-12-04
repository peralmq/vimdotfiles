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
au BufNewFile,BufRead *.gradle set filetype=groovy

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

" Folding on indent and open unfolded
set foldmethod=indent
set foldlevel=99

set visualbell
set lazyredraw
set noshowcmd
set scrolljump=5

" Ignore the follwing files in ctrlp
set wildignore+=*.pyc,*.orig,*.egg-info
let g:ctrlp_custom_ignore='\v[\/](target|dist)|(\.(swp|ico|git|svn))$'

" Let ctrlp keep searching from where vim was started
let g:ctrlp_working_path_mode = ''

" Syntastic
let g:syntastic_python_checkers=['flake8'] " pylint, pyflake, macbe
let g:syntastic_javascript_checkers = ['jscs','jshint']
let g:syntastic_check_on_open=1

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" Plugins!
Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'Valloric/YouCompleteMe'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
call vundle#end()
filetype plugin indent on
